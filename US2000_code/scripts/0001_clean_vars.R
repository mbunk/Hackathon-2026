
source("US2000_code/scripts/0000_read_data.R")

`%notin%` <- Negate(`%in%`)

rm(list=setdiff(ls(), list("r", "school", "school_dta")))

student <- r |>
  dplyr::mutate(
    grade = factor(
      dplyr::case_when(
        st02q01 == "9"  ~ 0,
        st02q01 == "10" ~ 1,
        st02q01 %in% c("97", "99", "7", "8", "11") ~ NA,
        .default = NA
      ),
      levels = c(0, 1),
      labels = c("Grade 9", "Grade 10")
    )) |> 
  dplyr::mutate(
    # Gender
    gender = factor(
      dplyr::case_when(
      st03q01 == "1" ~ 1,
      st03q01 == "2" ~ 0,
      .default = NA
      ),
      levels = c(0, 1),
      labels = c("Male", "Female")
    ),
    
    # Language spoken at home
    language = factor(
      dplyr::case_when(
      st17q01 == "1" ~ 1,
      st17q01 %in% c("2", "3", "4") ~ 0,
      st17q01 %in% c("7", "8", "9") ~ NA,
      .default = NA
      ),
      levels = c(0, 1),
      labels = c("Other Language", "English")
    ),
    # Behavioural engagement
    behave_dv =  dplyr::case_when(
      effper == 97.00 ~ NA,
      .default = effper
    ),
    # Emotional engagement
    emote_dv = dplyr::case_when(
      belong == 97.00 ~ NA,
      .default = belong
    ),
    # SES
    hisei = as.numeric(dplyr::case_when(
      hisei %in% c(97, 99) ~ NA,
      .default = hisei
    )),
    # Race
    race_ethnicity = factor(
      dplyr::case_when(
        ((st3q02 == "1")) ~ 2,
        ((st3q3bc %in% c("1")) & (st3q02 %notin% "1") & (st3q3be %notin% c("1")) & (st3q3ba %notin% c("1")) & (st3q3bb %notin% c("1")) & (st3q3bd %notin% c("1"))) ~ 1,
        ((st3q3be %in% c("1")) | (st3q02 %in% "2") & (st3q3ba %notin% c("1")) & (st3q3bc %notin% c("1")) & (st3q3bb %notin% c("1")) & (st3q3bd %notin% c("1"))) ~ 0,
        ((st3q3ba %in% c("1")) | (st3q3bb %in% c("1")) | (st3q3bd %in% c("1")))~ 3,
        st3q02 %in% c("7", "8", "9") ~ 3,
        .default = 3
      ),
      levels = c(0, 1, 2, 3),
      labels = c("European American", "African American",
                 "Latino/Hispanic", "Other")
    ))
  

behave_engagement <- c(
  "cc01q28", "cc01q20", "cc01q12", "cc01q07"
)

emote_engagement <- c(
  "st31q01", "st31q02", "st31q03",
  "st31q04", "st31q05", "st31q06"
)

reverse_items <- c("st31q01", "st31q04", "st31q06")

reading_performance <- c('pv1read', 'pv2read', 'pv3read', 'pv4read', 'pv5read')

student <- student %>%
  mutate(
    across(
      any_of(c(behave_engagement, emote_engagement, reading_performance)),
      ~ as.numeric(as.character(.))
    )
  ) %>%
  mutate(
    across(
      any_of(c(behave_engagement, emote_engagement)),
      ~ replace(., . %in% c(7, 8, 9), NA)
    )
  ) %>%
  mutate(
    across(
      any_of(reverse_items),
      ~ 4 - .
    )
  ) %>%
  mutate(
    behave_engagement = rowMeans(
      pick(any_of(behave_engagement)),
      na.rm = TRUE
    ),
    emote_engagement = rowMeans(
      pick(any_of(emote_engagement)),
      na.rm = TRUE
    )
  ) |> 
  mutate(
    behave_engagement = ifelse(is.nan(behave_engagement), NA, behave_engagement),
    emote_engagement = ifelse(is.nan(emote_engagement), NA, emote_engagement)
  ) |> 
  mutate(
    reading = rowMeans(
      pick(any_of(reading_performance)),
      na.rm = TRUE
    )
  ) |> 
  mutate(
    reading = ifelse(is.nan(reading), NA, reading)
  ) |> 
  mutate(
    wleread = ifelse(as.numeric(wleread) > 1000.00, NA, as.numeric(wleread)) # remove one case with really large score
  ) 

epmr::rstudy(student[, emote_engagement], use = "complete") # alpha = 0.86 is 0.85
epmr::rstudy(student[, behave_engagement], use = "complete") # alpha = 0.83 is 0.83

# behave_engagement
#      CC01Q28 = "Best effort - CC1/Q28"
#      CC01Q20 = "Best to acquire - CC1/20"
# CC01Q12 = "Keep Working - CC1/12"
#       CC01Q07 = "Work as hard - CC1/7"

# emote_engagement 
# ST31Q01  = "Feel an outsider - Q31a"
# ST31Q02  = "Make friends - Q31b"
# ST31Q03  = "Feel I belong - Q31c"
# ST31Q04  = "Feel awkward - Q31d"
# ST31Q05  = "Think I'm liked - Q31e"
#      ST31Q06  = "Feel lonely - Q31f"


# student <- student |> 
#   dplyr::mutate_at(c('pv1read', 'pv2read', 'pv3read', 'pv4read', 'pv5read'), ~(scale(as.numeric(.)) %>% as.vector)) |> 
#   dplyr::rename(
#     reading1 = pv1read,
#     reading2 = pv2read,
#     reading3 = pv3read,
#     reading4 = pv4read,
#     reading5 = pv5read) 
  
  # |> 
  # dplyr::select(
  #   reading1, reading2, reading3, reading4, reading5,
  #   behave, emote,
  #   grade, gender, language,
  #   country, schoolid, stidstd, race_ethnicity,
  #   hisei)

schl <- school |>
  dplyr::mutate(
    schooltype = factor(dplyr::case_when(
      sc03q01 == "1" ~ 1,
      sc03q01 == "2" ~ 0,
      sc03q01 %in% c("7", "8", "9") ~ 2
    ),
    levels = c(0, 1, 2),
    labels = c("Private", "Public", "Unknown")
    )) |>
  dplyr::rename(schoolid = stidsch) |> 
  dplyr::select(
    schooltype,
    schoolid
  )

student_and_school <- dplyr::left_join(student, schl, by = dplyr::join_by(schoolid)) |> 
  dplyr::left_join(
    school_dta %>%
      dplyr::select(schoolid_recode, schlsize, wnrschbw),
    by = c("schoolid" = "schoolid_recode")
  )

student_and_school |> summary()

student_and_school_filt <- student_and_school |> 
  tidyr::drop_na(emote_dv, behave_dv, wleread, grade) |> 
  dplyr::mutate_at(c('emote_engagement', 'behave_engagement'), ~(scale(as.numeric(.)) %>% as.vector)) |> 
  dplyr::select(
    wleread,
    behave_dv, emote_dv,
    grade, gender, language,
    country, schoolid, stidstd, race_ethnicity,
    hisei, w_fstuwt, schooltype, wnrschbw,
    dev_race)

summary(student_and_school_filt)

tmp_a <- student_and_school_filt |> select(schoolid, stidstd,schooltype,wnrschbw) |> group_by(schoolid, schooltype, wnrschbw) |> count()

tmp_ethnic <- student_and_school_filt |> 
  mutate(minority = case_when(race_ethnicity %in% c("Other", "African American", "Latino/Hispanic") ~ "Minority", .default = "European American")) |> 
  count(schoolid, minority) %>%
  group_by(schoolid) %>%
  mutate(freq = n / sum(n)) |> 
  filter(minority %in% "Minority") |> 
  rename(n_minority = n) |> 
  select(schoolid, n_minority, freq)

replacement_public <- tmp_a |> filter(schooltype == "Public") |> arrange(n,wnrschbw) |> head(11) |> select(schoolid) |> pull()
replacement_unknown <- tmp_a |> filter(schooltype == "Unknown") |> arrange(n,wnrschbw) |> head(10) |> select(schoolid) |> pull()

replacement_codes <- readr::read_csv("metadata/replacement_codes.csv")
replacement_codes$schoolid <- as.character(replacement_codes$replacement)
replacement_codes$replacement <- as.character(replacement_codes$replacement)
replacement_codes$school_sampled <- as.character(replacement_codes$school_sampled)

tmp_a <- tmp_a |> 
  left_join(replacement_codes, by=("schoolid")) |> 
  mutate(schoolid_old = schoolid) |> 
  mutate(schoolid = case_when(!is.na(replacement) ~ school_sampled, 
                              .default = schoolid)) |> 
  dplyr::group_by(schoolid) %>%
  tidyr::fill(schooltype, .direction = "updown") %>%
  dplyr::ungroup()

new_values <- tmp_a |> filter(is.na(replacement)) |> select(schoolid, schooltype) |> distinct() |> rename(recodedtype = schooltype)

tmp_a <- tmp_a |> 
  left_join(new_values, by = c("schoolid")) |> 
  mutate(schooltype_recode = case_when(!is.na(replacement) ~ recodedtype, 
                              .default = schooltype)) |> 
  select(-recodedtype) |> 
  rename(schoolid_recode = schoolid) |> 
  rename(schoolid = schoolid_old)


# > replacement_public
# [1] "116" "165" "415" "164" "581" "273" "162" "262" "412" "320" "319"
# > replacement_unknown
# [1] "113" "286" "302" "212" "580" "318" "317" "272" "615" "303"


# > replacement_public
# [1] "200" "229" "415" "129" "245" "248" "251" "320" "539" "711" "238"
# > replacement_unknown
# [1] "225" "291" "210" "270" "293" "318" "513" "615" "113" "182"

# tmp_unknown <- school |> 
#   filter(stidsch %in% unknown_school) |> 
#   select(sc04q01, sc04q02, sc04q03, sc04q04)

student_and_school_filt$replacement_school <- if_else(student_and_school_filt$schoolid %in% replacement_public,
                                    1, 
                                    0)

student_and_school_filt$replacement_school <- if_else(student_and_school_filt$schoolid %in% replacement_unknown,
                                    1, 
                                    student_and_school_filt$replacement_school)

sum(!is.na(student_and_school_filt$hisei))
# [1] 2913


# part_response_schools <- student_and_school_filt |> select(schoolid, stidstd,schooltype) |> group_by(schoolid, schooltype) |> count() |> filter(n < 9) |> select(schoolid) |> pull()
# length(unique(student_and_school_filt$schoolid)) - length(part_response_schools)
# # [1] 121
tmp_a$replacement_school <- if_else(tmp_a$schoolid %in% replacement_public,
                                                1, 
                                                0)

tmp_a$replacement_school <- if_else(tmp_a$schoolid %in% replacement_unknown,
                                                1, 
                                                tmp_a$replacement_school)


tmp_a <- tmp_a |> 
  left_join(tmp_ethnic, by = "schoolid")

# Replacement schools were assigned according to the following rules: The preceding school
# on the frame was assigned as the first replacement school for each sampled school and the second school
# was assigned as the second replacement school, unless the candidate replacement school is a sampled
# school or is in a different PSU, has a different minority status for public schools, or has a different school
# type for private schools. If a candidate replacement school neighbors two sampled schools, it is selected
# as a replacement for the sampled school that it precedes. Under these rules, some sampled schools can be
# assigned only one replacement, and some can be assigned no replacement schools.

student_and_school_filt <- student_and_school_filt |> 
  dplyr::left_join(
    tmp_a %>%
      dplyr::select(schoolid, schooltype_recode, n, replacement_school, schoolid_recode),
    by = c("schoolid","replacement_school")
  )

student_and_school_filt |> group_by(schooltype_recode) |> distinct(schoolid_recode) |> count()


ses_mean <- student_and_school_filt |> 
  dplyr::group_by(schoolid_recode) |> 
  dplyr::summarise(school_hisei = mean(hisei, na.rm=T)) 

mean(ses_mean$school_hisei)
# [1] 51.54183 -> should be 50.9 
 sd(ses_mean$school_hisei)
# [1] 6.612029 -> should be 7.2

student_and_school_filt <- dplyr::left_join(student_and_school_filt, ses_mean, by = dplyr::join_by(schoolid==schoolid_recode))


## -----------------------------------------------------------------------------
prop_grade <- r |>
  dplyr::mutate(
    grade = factor(
      dplyr::case_when(
        st02q01 == "9"  ~ 0,
        st02q01 == "10" ~ 1,
        st02q01 == "7" ~ 2,
        st02q01 == "8" ~ 3,
        st02q01 == "11" ~ 4,
        
        st02q01 %in% c("97", "99") ~ NA,
        .default = NA
      ),
      levels = c(0, 1, 2, 3, 4),
      labels = c("Grade 9", "Grade 10", "Grade 7", "Grade 8", "Grade 11")
    ))

# The present study used indices of student and school
# characteristics that were provided by PISA 2000 (OECD,
#                                                  2000). Index scale scores were created by PISA researchers
# using Rasch item response model techniques. All scale scores
# were weighted likelihood estimates (Warm, 1989).

# > 1547  +   2207     +   4    +   71    +   16 
# [1] 3845
# > 4/3845
# [1] 0.001040312
# > (4    +   71    +   16)/3845
# [1] 0.0236671

table(student_and_school_filt$race_ethnicity)


# Outcome variables
# Behavioral engagement 3,268 −0.07 1.10
# Emotional engagement 3,268 −0.03 1.12
# Reading performance 3,268 514.54 97.18

mean(student_and_school_filt$behave_dv) # off by 0.01
sd(student_and_school_filt$behave_dv)

mean(student_and_school_filt$emote_dv) # close enough
sd(student_and_school_filt$emote_dv)

mean(student_and_school_filt$wleread) # mean is off by 10
sd(student_and_school_filt$wleread)


## -----------------------------------------------------------------------------
# proportions somewhat close ? but counts are not ? calculate an error of margin ? 

conversion_fct <- (3268 / 2624443)

student_and_school_filt %>%
  mutate(w_fstuwt = as.numeric(w_fstuwt)) %>%
  srvyr::as_survey_design(
    ids = 1,
    weights = w_fstuwt
  ) %>%
  group_by(gender) %>%
  summarise(n = srvyr::survey_total()) %>%
  mutate(
    proportion = n / sum(n),
    n_total = sum(n) * conversion_fct,
    n = n * conversion_fct 
  )


# Gender
# Male 1,546 47.03
# Female 1,741 52.97

student_and_school_filt %>%
  mutate(w_fstuwt = as.numeric(w_fstuwt)) %>%
  srvyr::as_survey_design(
    ids = 1,
    weights = w_fstuwt
  ) %>%
  group_by(grade) %>%
  summarise(n = srvyr::survey_total()) %>%
  mutate(
    proportion = n / sum(n),
    n_total = sum(n) * conversion_fct,
    n = n * conversion_fct 
  )

# Grade
# 9 1,345 40.90
# 10 1,943 59.10

student_and_school_filt %>%
  mutate(w_fstuwt = as.numeric(w_fstuwt)) %>%
  srvyr::as_survey_design(
    ids = 1,
    weights = w_fstuwt
  ) %>%
  group_by(race_ethnicity) %>%
  summarise(n = srvyr::survey_total()) %>%
  mutate(
    proportion = n / sum(n),
    n_total = sum(n) * conversion_fct,
    n = n * conversion_fct 
  )

# Race/Ethnicity
# European American 2,061 62.70
# African American 419 12.74
# Hispanic/Latino 531 16.16
# Other 276 8.40


student_and_school_filt %>%
  mutate(w_fstuwt = as.numeric(w_fstuwt)) %>%
  srvyr::as_survey_design(
    ids = 1,
    weights = w_fstuwt
  ) %>%
  group_by(language) %>%
  summarise(n = srvyr::survey_total()) %>%
  mutate(
    proportion = n / sum(n),
    n_total = sum(n) * conversion_fct,
    n = n * conversion_fct 
  )

# Language at home
# English 2,974 91.03
# Other language 293 8.97

sample <- student_and_school_filt 