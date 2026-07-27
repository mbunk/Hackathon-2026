
source("0001_clean_vars.R")

`%notin%` <- Negate(`%in%`)

rm(list=setdiff(ls(), list("sample")))


# Correlation analysis

# Table 2

# Create correlation matrix for multiple variables
Hmisc::rcorr(cbind(sample$behave_dv, as.numeric(sample$emote_dv),
            as.numeric(sample$wleread), sample$hisei))


# Behavioral
# engagement
# —
# Emotional
# engagement
# 0.19∗∗∗ —
# Reading
# performance
# 0.12∗∗∗ 0.09∗∗∗ —
# SES 0.07∗∗∗ 0.06∗∗∗ 0.30∗∗∗ —

#Empty (null model)

#This just tests the variance between schools.

m0 <- lme4::lmer(wleread ~ 1 + (1 | schoolid),
                 data = sample,
                 REML = TRUE
)

summary(m0)
performance::icc(m0) 

#with schoolid_recode is 0.179 in paper but in paper it is 0.2 ?
#with schoolid_recode is 0.205 in paper but in paper it is 0.2 ?
