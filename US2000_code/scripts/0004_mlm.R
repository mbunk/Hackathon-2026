
library(mice)
library(lme4)
library(broom.mixed)
# Random intercept with all x vars
# 
# Tests main effect of predictive variables with a random effect for school ID.

sample_imp <- readRDS("_data/imputed_datasets.RDS")

sample_imp_long <- complete(sample_imp,action="long",  include = TRUE)

sample_imp_long <- sample_imp_long |>
  dplyr::select(-c(school_hisei)) 

# need to update school mean as average across students 

sample_imp_school <- sample_imp_long |>
  group_by(.imp) |> # Centering grand mean not within cluster ! 
  dplyr::summarise(school_hisei = mean(hisei, na.rm=T)) |> 
  ungroup() |> 
  group_by(.imp) |> 
  dplyr::mutate_at(c('school_hisei'), ~(scale(as.numeric(.)) %>% as.vector)) 
  
sample_imp_long <- dplyr::left_join(sample_imp_long, sample_imp_school, by = dplyr::join_by(`.imp`))

sample_imp_long <- sample_imp_long |> 
  group_by(.imp, schoolid_recode) |> 
  dplyr::mutate_at(c('hisei'), ~(scale(as.numeric(.)) %>% as.vector))

sample_imp2 <- as.mids(sample_imp_long)

## -----------------------------------------------------------------------------
## Imputed datasets
## -----------------------------------------------------------------------------


fit_m0 <- with(data = sample_imp, exp = lme4::lmer(
  wleread ~ 1 + (1 | schoolid_recode),
  REML = TRUE
))

pool(fit_m0) 


## -----------------------------------------------------------------------------

fit_m1 <- with(data = sample_imp, exp = lme4::lmer(
  wleread ~ grade + gender + language + schooltype + school_hisei + hisei + race_ethnicity + (1 | schoolid_recode + hisei + language),
  REML = TRUE
))

pool(fit_m1) 

summary(fit_m1$analyses[[1]])

## -----------------------------------------------------------------------------

fit_m2 <- with(data = sample_imp, exp = lme4::lmer(
  wleread ~ grade + gender + language + schooltype + school_hisei + hisei + behave_dv + race_ethnicity + (1 | schoolid_recode + hisei + language),
  REML = TRUE
))


pool(fit_m2) 

summary(fit_m2$analyses[[1]])


## -----------------------------------------------------------------------------

fit_m3 <- with(data = sample_imp, exp = lme4::lmer(
  wleread ~ grade + gender + language + schooltype + school_hisei + hisei + emote_dv +  race_ethnicity + (1 | schoolid_recode + hisei + language),
  REML = TRUE
))


pool(fit_m3) 

summary(fit_m3$analyses[[1]])

## -----------------------------------------------------------------------------

fit_m4 <- with(data = sample_imp, exp = lme4::lmer(
  wleread ~ grade + gender + language + schooltype + school_hisei + hisei + behave_dv + emote_dv +  race_ethnicity +  (1 | schoolid_recode + hisei + language),
  REML = TRUE
))


pool(fit_m4) 

summary(fit_m4$analyses[[1]])

## -----------------------------------------------------------------------------

#Tests main effect of predictive variables with predictive model at the level 2 for schools.

#Compare models using likelihood ratio test ?
