library(mice)
library(lme4)
library(dplyr)
library(tidyr)
library(purrr)
library(gt)

#=========================================================
# MODELS
#=========================================================

mods <- list(
  "No student engagement" = fit_m1,
  "Behavioral engagement only" = fit_m2,
  "Emotional engagement only" = fit_m3,
  "Full model" = fit_m4
)

#=========================================================
# FIXED EFFECTS
#=========================================================

extract_fixed <- function(mod){
  
  summary(pool(mod)) |>
    mutate(
      sig = case_when(
        p.value < .001 ~ "***",
        p.value < .01  ~ "**",
        p.value < .05  ~ "*",
        TRUE ~ ""
      ),
      Estimate = paste0(sprintf("%.2f", estimate), sig),
      SE = sprintf("%.2f", std.error)
    ) |>
    select(term, Estimate, SE)
}

fixed_tbl <- imap(mods, function(mod, model_name){
  
  extract_fixed(mod) |>
    rename(
      !!paste0(model_name, "_Estimate") := Estimate,
      !!paste0(model_name, "_SE") := SE
    )
  
}) |>
  reduce(full_join, by = "term")

#=========================================================
# RANDOM EFFECTS + FIT STATISTICS
#=========================================================

extract_stats <- function(mod){
  
  m <- mod$analyses[[1]]
  
  vc <- as.data.frame(VarCorr(m))
  
  out <- tibble(
    term = c(
      "Random intercept variance",
      "Random slope variance",
      "Residual variance",
      "Deviance",
      "AIC",
      "BIC"
    ),
    value = c(
      vc$vcov[1],
      ifelse(nrow(vc) >= 2, vc$vcov[2], NA),
      sigma(m)^2,
      deviance(m),
      AIC(m),
      BIC(m)
    )
  )
  
  out
}

stats_tbl <- imap(mods, function(mod, model_name){
  
  extract_stats(mod) |>
    mutate(value = sprintf("%.2f", value)) |>
    rename(
      !!model_name := value
    )
  
}) |>
  reduce(full_join, by = "term")

#=========================================================
# COMBINE
#=========================================================

blank_row <- tibble(
  term = "Random effects / model fit"
)

for(nm in names(mods)){
  blank_row[[nm]] <- ""
}

stats_tbl2 <- stats_tbl |>
  mutate(across(-term, as.character)) |>
  pivot_longer(
    -term,
    names_to = "model",
    values_to = "Estimate"
  ) |>
  mutate(SE = "") |>
  pivot_wider(
    names_from = model,
    values_from = c(Estimate, SE),
    names_glue = "{model}_{.value}"
  )

stats_tbl2 <- stats_tbl2[, names(fixed_tbl)]

final_tbl <- bind_rows(
  fixed_tbl,
  tibble(
    term = "Random effects",
    !!!setNames(rep("", ncol(fixed_tbl)-1),
                names(fixed_tbl)[-1])
  ),
  stats_tbl2
)


#=========================================================
# OPTIONAL LABELS
#=========================================================

final_tbl <- final_tbl |>
  mutate(
    term = recode(
      term,
      "(Intercept)" = "Intercept",
      "genderFemale" = "Female (male)",
      "hisei_z" = "SES",
      "school_hisei_z" = "Mean SES",
      "gradeGrade 10" = "Grade 10 (Grade 9)", 
      "languageEnglish" = "English (other)",
      "schooltypePublic" = "Public",
      "schooltypeUnknown" = "Unknown",
      "school_hisei" = "School mean SES",
      "school_hisei" = "SES",
      "race_ethnicityAfrican American" = "African American",
      "race_ethnicityLatino/Hispanic" = "Latino/Hispanic",
      "race_ethnicityOther" = "Other",
      "behave_dv" = "Behavioral engagement",
      "emote_dv" = "Emotional engagement"
    )
  )

#--------------------------------------------------
# Add subgroup headings
#--------------------------------------------------

# create blank cells for all model columns
blank_vals <- as.list(
  setNames(
    rep("", ncol(fixed_tbl) - 1),
    names(fixed_tbl)[-1]
  )
)

fixed_header <- tibble(
  term = "Fixed effects",
  !!!blank_vals
)

race_header <- tibble(
  term = "Race (European American)",
  !!!blank_vals
)

school_header <- tibble(
  term = "School type (private)",
  !!!blank_vals
)

random_header <- tibble(
  term = "Random effects",
  !!!blank_vals
)

# split fixed effects into sections

fixed_effects <- final_tbl |>
  filter(
    !grepl("variance|Deviance|AIC|BIC", term)
  )

race_rows <- fixed_effects |>
  filter(term %in% c(
    "African American",
    "Latino/Hispanic",
    "Other"
  ))

school_rows <- fixed_effects |>
  filter(term %in% c(
    "Public",
    "Unknown"
  ))

other_fixed <- fixed_effects |>
  filter(
    !term %in% c(
      "African American",
      "Latino/Hispanic",
      "Other",
      "Public",
      "Unknown"
    )
  )

random_rows <- final_tbl |>
  filter(
    grepl("variance|Deviance|AIC|BIC", term)
  )

final_tbl <- bind_rows(
  fixed_header,
  
  other_fixed |> filter(term != "Public"),
  
  race_header,
  race_rows,
  
  school_header,
  school_rows,
  
  random_header,
  random_rows
)

#-------------------------------------------------------
# REMOVE DUPLICATE RANDOM EFFECTS HEADING
#-------------------------------------------------------

final_tbl <- final_tbl |>
  group_by(term) |>
  filter(!(term == "Random effects" & row_number() > 1)) |>
  ungroup()


#-------------------------------------------------------
# ADD VARIANCE EXPLAINED ROWS
# (replace with your values)
#-------------------------------------------------------


get_var <- function(mod){
  m <- mod$analyses[[1]]
  vc <- as.data.frame(VarCorr(m))
  list(
    between = vc$vcov[1], # school intercept variance
    within = sigma(m)^2 # residual variance
  )
}


fit_null <- with(
  sample_imp,
  lmer(
    wleread ~ 1 + (1 | schoolid_recode)
  )
)
v0 <- get_var(fit_null)

v1 <- get_var(fit_m1)
v2 <- get_var(fit_m2)
v3 <- get_var(fit_m3)
v4 <- get_var(fit_m4)


within_m1 <- 100 * (v0$within - v1$within) / v0$within
within_m2 <- 100 * (v0$within - v2$within) / v0$within
within_m3 <- 100 * (v0$within - v3$within) / v0$within
within_m4 <- 100 * (v0$within - v4$within) / v0$within
between_m1 <- 100 * (v0$between - v1$between) / v0$between
between_m2 <- 100 * (v0$between - v2$between) / v0$between
between_m3 <- 100 * (v0$between - v3$between) / v0$between
between_m4 <- 100 * (v0$between - v4$between) / v0$between

var_tbl <- tibble(
  term = c(
    "Percent of variance explained",
    "Within schools",
    "Between schools"
  ),
  
  `No student engagement_Estimate` =
    c("", sprintf("%.1f", within_m1), sprintf("%.1f", between_m1)),
  `No student engagement_SE` =
    c("", "", ""),
  
  `Behavioral engagement only_Estimate` =
    c("", sprintf("%.1f", within_m2), sprintf("%.1f", between_m2)),
  `Behavioral engagement only_SE` =
    c("", "", ""),
  
  `Emotional engagement only_Estimate` =
    c("", sprintf("%.1f", within_m3), sprintf("%.1f", between_m3)),
  `Emotional engagement only_SE` =
    c("", "", ""),
  
  `Full model_Estimate` =
    c("", sprintf("%.1f", within_m4), sprintf("%.1f", between_m4)),
  `Full model_SE` =
    c("", "", "")
)

var_tbl

final_tbl <- bind_rows(final_tbl, var_tbl)

#-------------------------------------------------------
# ORDER ROWS
#-------------------------------------------------------

row_order <- c(
  "Fixed effects",
  
  "Intercept",
  "Behavioral engagement",
  "Emotional engagement",
  "Grade 10 (Grade 9)",
  
  "Race (European American)",
  "African American",
  "Latino/Hispanic",
  "Other",
  
  "English (other)",
  "SES",
  "School mean SES",
  
  "School type (private)",
  "Public",
  "Unknown",
  
  "Random effects",
  "Random intercept variance",
  "Random slope variance",
  "Residual variance",
  
  "Deviance",
  "AIC",
  "BIC",
  
  "Percent of variance explained",
  "Within schools",
  "Between schools"
)

final_tbl <- final_tbl |>
  mutate(
    term = factor(term, levels = row_order)
  ) |>
  arrange(term) |>
  mutate(
    term = as.character(term)
  )

#-------------------------------------------------------
# INDENT NON-HEADING ROWS
#-------------------------------------------------------

heading_rows <- c(
  "Fixed effects",
  "Race (European American)",
  "School type (private)",
  "Random effects",
  "Percent of variance explained"
)

final_tbl <- final_tbl |>
  mutate(
    term = ifelse(
      term %in% heading_rows,
      term,
      paste0(term)
    )
  )

#-------------------------------------------------------
# HTML TABLE
#-------------------------------------------------------

library(gt)

final_tbl <- final_tbl[-((nrow(final_tbl)-1):nrow(final_tbl)), ]

final_tbl[is.na(final_tbl)] <- " "

html_tbl <- final_tbl |>
  gt(rowname_col = "term") |>
  tab_header(
    title = md("**TABLE 3. Effects of Student Engagement on Reading Performance**")
  ) |>
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_stub(
      rows = term %in% heading_rows
    )
  )
