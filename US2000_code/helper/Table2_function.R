
library(dplyr)
library(tibble)

corr_dat <- sample |>
  dplyr::transmute(
    `Behavioral engagement` = behave_dv,
    `Emotional engagement` = as.numeric(emote_dv),
    `Reading performance` = as.numeric(wleread),
    `SES` = hisei
  )

corr <- Hmisc::rcorr(as.matrix(corr_dat))

corr$r
corr$P

r <- corr$r
p <- corr$P

corr_table <- matrix(
  nrow = nrow(r),
  ncol = ncol(r),
  dimnames = dimnames(r)
)

r <- corr$r
p <- corr$P

corr_table <- matrix(
  "",
  nrow = nrow(r),
  ncol = ncol(r),
  dimnames = dimnames(r)
)

for(i in 2:nrow(r)){
  for(j in 1:(i - 1)){
    
    stars <- dplyr::case_when(
      p[i, j] < .001 ~ "***",
      p[i, j] < .01  ~ "**",
      p[i, j] < .05  ~ "*",
      TRUE ~ ""
    )
    
    corr_table[i, j] <- paste0(
      sprintf("%.2f", r[i, j]),
      stars
    )
  }
}

corr_table <- as.data.frame(corr_table) |>
  tibble::rownames_to_column("Variable")
