#https://peterejkemp.github.io/v2/chapters/A1-PISA_analysis.html

#https://www.thetaminusb.com/intro-measurement-r/reliability.html#consistency-of-measurement


library(mice)

df_missing <- sample 


imp <- mice(df_missing, maxit = 1000, m = 15, seed = 1234) # 15 imputed datasets bc 15% missingness on hisei

saveRDS(imp, "_data/imputed_datasets.RDS")


sample_imp <- complete(imp,action="long")

#calculate the mean SES for each school
sample_imp_school <- sample_imp |>
  dplyr::group_by(schoolid_recode) |>
  dplyr::summarise(school_hisei = mean(hisei, na.rm=T))


sample_imp <- dplyr::left_join(sample_imp, sample_imp_school, by = dplyr::join_by(schoolid==schoolid_recode))

write.csv(sample_imp, "_data/pisa2000_imputed.csv", row.names = F)

stripplot(imp, hisei, pch = 19, xlab = "Imputation number")
stripplot(imp, school_hisei, pch = 19, xlab = "Imputation number")

stripplot(imp, gender, pch = 19, xlab = "Imputation number")
stripplot(imp, language, pch = 19, xlab = "Imputation number")

# scale the reading variable 