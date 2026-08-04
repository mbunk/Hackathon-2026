library(haven)  # Importing Stata datasets
library(dplyr)
library(labelled)

# Load in the reading scores dataset
datapath <- "DATA/PISA2000"
pisa <- read_dta(file.path(datapath, "pisa2000r.dta")) |> as_factor()

school_pisa <- read_dta("/Users/kateohara/Library/CloudStorage/OneDrive-UniversityofStirling/0_courses_seminars/lss_hackathon_2026/PISA2000/PISA2000_school_questionnaire.dta")

school_pisa_usa <- school_pisa |>
  filter(cnt == "USA") |>
  distinct(schoolid, .keep_all = TRUE)

uspisa <- pisa |>
  filter(cnt == "USA") |>  # Filter country early for performance
  left_join(
    school_pisa_usa |> select(schoolid, sc03q01, wnrschbw),
    by = "schoolid"
  ) |> 
  rename(
    grade = st02q01,
    female = st03q01,
    english = st17q01,
    schooltype = sc03q01,
    studentweight = w_fstuwt,
    schoolweight = wnrschbw
  ) |> 
  filter(grade %in% c(9, 10)) |> 
  group_by(schoolid) |>
  mutate(school_hisei = mean(hisei, na.rm = TRUE)) |>
  ungroup()

# Keep only selected variables
uspisa_short <- uspisa |> select(
  pv1read, pv2read, pv3read, pv4read, pv5read, 
  effper, belong, 
  grade, female, hisei, school_hisei,english, schooltype,
  studentweight, schoolweight)


# Drop if missing on reading score, effper, and emote:
uspisa_short_nona <- uspisa_short |> 
  filter(
    if_all(
      c(pv1read, pv2read, pv3read, pv4read, pv5read), 
      \(x) x != "N/A" & !is.na(x)
    ),
    belong != "N/A" & !is.na(belong),
    effper != "N/A" & !is.na(effper)
  )

final <- uspisa_short_nona
head(final)
write_dta(final, "first_clean_pisa2000r.dta")