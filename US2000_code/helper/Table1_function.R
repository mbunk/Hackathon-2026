library(dplyr)
library(srvyr)
library(tibble)

#--------------------------------------------------
# Survey design
#--------------------------------------------------


sample <- sample |> 
  mutate(gender = forcats::fct_explicit_na(gender, na_level = "Missing")) |> 
  mutate(language = forcats::fct_explicit_na(language, na_level = "Missing"))


des <- sample %>%
  mutate(w_fstuwt = as.numeric(w_fstuwt)) %>%
  as_survey_design(
    ids = 1,
    weights = w_fstuwt
  )

conversion_fct <- 3268 / 2624443

#--------------------------------------------------
# Outcome variables
#--------------------------------------------------

outcomes <- tibble(
  Variable = c(
    "Behavioral engagement",
    "Emotional engagement",
    "Reading performance"
  ),
  n = nrow(sample),
  `%` = "",
  M = c(
    mean(sample$behave_dv, na.rm = TRUE),
    mean(sample$emote_dv, na.rm = TRUE),
    mean(sample$wleread, na.rm = TRUE)
  ),
  SD = c(
    sd(sample$behave_dv, na.rm = TRUE),
    sd(sample$emote_dv, na.rm = TRUE),
    sd(sample$wleread, na.rm = TRUE)
  )
)

#--------------------------------------------------
# Helper for weighted frequencies
#--------------------------------------------------

make_freq <- function(var){
  des %>%
    group_by({{ var }}) %>%
    summarise(n = survey_total()) %>%
    mutate(
      level = as.character({{ var }}),
      level = ifelse(is.na(level), "Missing", level),
      n = round(n * conversion_fct),
      `%` = round(100 * n / sum(n), 2)
    )
}

#--------------------------------------------------
# Gender
#--------------------------------------------------

gender_tbl <- make_freq(gender) %>%
  transmute(
    Variable = as.character(gender),
    n,
    `%`,
    M = "",
    SD = ""
  )


#--------------------------------------------------
# Grade
#--------------------------------------------------

grade_tbl <- make_freq(grade) %>%
  transmute(
    Variable = as.character(grade),
    n,
    `%`,
    M = "",
    SD = ""
  )

#--------------------------------------------------
# Race
#--------------------------------------------------

race_tbl <- make_freq(race_ethnicity) %>%
  transmute(
    Variable = as.character(race_ethnicity),
    n,
    `%`,
    M = "",
    SD = ""
  )

#--------------------------------------------------
# Language
#--------------------------------------------------

language_tbl <- make_freq(language) %>%
  transmute(
    Variable = as.character(language),
    n,
    `%`,
    M = "",
    SD = ""
  )

#--------------------------------------------------
# SES
#--------------------------------------------------

ses_tbl <- tibble(
  Variable = "SES",
  n = sum(!is.na(sample$hisei)),
  `%` = "",
  M = mean(sample$hisei, na.rm = TRUE),
  SD = sd(sample$hisei, na.rm = TRUE)
)

#--------------------------------------------------
# School predictors
#--------------------------------------------------

school_tbl <- tibble(
  Variable = "School mean SES",
  n = dplyr::n_distinct(sample$schoolid_recode),
  `%` = "",
  M = mean(sample$school_hisei, na.rm = TRUE),
  SD = sd(sample$school_hisei, na.rm = TRUE)
)


#--------------------------------------------------
# School type
#--------------------------------------------------

schooltype_tbl <- as_tibble(sample |> group_by(schooltype_recode) |> distinct(schoolid_recode) |> count() |> rename(Variable = schooltype_recode))

filler <- data.frame(`%` = rep("",3), 
          M  = rep("",3), 
          SD  =  rep("",3))
schooltype_tbl <- as.tibble(cbind(schooltype_tbl, filler))

colnames(schooltype_tbl) <- c("Variable","n","%","M","SD") 
#--------------------------------------------------
# Combine into Table 1
#--------------------------------------------------

outcomes <- outcomes |>
  mutate(
    M = round(M, 2),
    SD = round(SD, 2)
  )

ses_tbl <- ses_tbl |>
  mutate(
    M = round(M, 2),
    SD = round(SD, 2)
  )

school_tbl <- school_tbl |>
  mutate(
    M = round(M, 2),
    SD = round(SD, 2)
  )

tables <- list(
  outcomes,
  gender_tbl,
  grade_tbl,
  race_tbl,
  language_tbl,
  ses_tbl,
  school_tbl,
  schooltype_tbl
)

tables <- lapply(
  tables,
  \(x) mutate(x, across(everything(), as.character))
)

outcomes     <- tables[[1]]
gender_tbl   <- tables[[2]]
grade_tbl    <- tables[[3]]
race_tbl     <- tables[[4]]
language_tbl <- tables[[5]]
ses_tbl      <- tables[[6]]
school_tbl   <- tables[[7]]
schooltype_tbl <-   tables[[8]]

table1 <- bind_rows(
  
  tibble(
    Variable = "Outcome variables",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  outcomes,
  
  tibble(
    Variable = "Student-level predictors",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  tibble(
    Variable = "Gender",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  gender_tbl,
  
  tibble(
    Variable = "Grade",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  grade_tbl,
  
  tibble(
    Variable = "Race/Ethnicity",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  race_tbl,
  
  tibble(
    Variable = "Language at home",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  language_tbl,
  
  ses_tbl,
  
  tibble(
    Variable = "School-level predictors",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  school_tbl, 
  
  tibble(
    Variable = "School type",
    n = "", `%` = "", M = "", SD = ""
  ),
  
  schooltype_tbl
)

library(gt)

heading_rows <- c(
  "Outcome variables",
  "Student-level predictors",
  "School-level predictors"
)

table1 <- table1 %>%
  gt() %>%
  tab_header(
    title = "TABLE 1. Descriptive Statistics"
  ) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(
      columns = Variable,
      rows = Variable %in% heading_rows
    )
  )
