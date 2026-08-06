library(lavaan)

sample_mediation <- sample |> 
  dplyr::rename(Y = wleread) |> 
  dplyr::rename(M = behave_dv) |> 
  dplyr::rename(X = emote_dv) |> 
  select(X, Y, M)
  
model <- ' # direct effect
             Y ~ c*X
           # mediator
             M ~ a*X
             Y ~ b*M
           # indirect effect (a*b)
             ab := a*b
           # total effect
             total := c + (a*b)
         '
fit <- sem(model, data = sample_mediation, se = "bootstrap", bootstrap = 5000)

lavInspect(fit, "std.all")

library(dplyr)

mediation_summary <- standardizedSolution(fit) |>
  filter(op %in% c("~", ":=")) |>
  mutate(
    sig = case_when(
      pvalue < .001 ~ "***",
      pvalue < .01  ~ "**",
      pvalue < .05  ~ "*",
      TRUE ~ ""
    ),
    estimate = paste0(round(est.std, 3), sig)
  ) |>
  select(
    effect = lhs,
    predictor = rhs,
    estimate,
    pvalue
  )

pe <- parameterEstimates(fit)

a <- pe$est[pe$label == "a"]
b <- pe$est[pe$label == "b"]

se_a <- pe$se[pe$label == "a"]
se_b <- pe$se[pe$label == "b"]

indirect <- a * b

se_indirect <- sqrt(
  (b^2 * se_a^2) +
    (a^2 * se_b^2)
)

mediation_summary 

z_value <- indirect / se_indirect

p_value <- 2 * (1 - pnorm(abs(z_value)))

# From article 
# Thus, the mediation effect was 0.176 × 0.106
# =
#   0.019; the standard error of the mediation effect was
# (0.176)2 × (0.015)2 + (0.106)2 × (0.017)2 = 0.000007;
# and the critical ratio was 0.019/0.000007 = 5.945 (p < .001)