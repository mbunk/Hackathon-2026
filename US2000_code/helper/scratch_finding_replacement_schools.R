school_id <- student_and_school_filt |> select(schoolid) |> distinct() |> pull()


school_dta <- school_dta |>
  dplyr::mutate(
    schooltype = factor(dplyr::case_when(
      sc03q01 == 1 ~ 1,
      sc03q01 == 2 ~ 0,
      sc03q01 %in% c(7,8,9) ~ 2
    ),
    levels = c(0, 1, 2),
    labels = c("Private", "Public", "Unknown")
    ))

all_tabs <- list()

for (var1 in colnames(school_dta)) {
  
  all_tabs[[var1]] <- school_dta |>
    dplyr::filter(schoolid_recode %in% school_id) |> 
    dplyr::mutate(var1 = if_else(schlsize == 99999,1,0)) |> 
    dplyr::count(.data[[var1]], schooltype) |>
    tidyr::pivot_wider(
      names_from = schooltype,
      values_from = n,
      values_fill = 0
    )
}


# $sc22q04f
# # A tibble: 2 × 4
# sc22q04f Private Public Unknown
# <chr>      <int>  <int>   <int>
#   1 0              7     96      28
# 2 1              0     11       0


student_and_school_filt$w_fstuwt <- as.numeric(student_and_school_filt$w_fstuwt)

cuts <- sort(unique(student_and_school_filt$w_fstuwt))

find_cut <- function(cut) {
  
  tab <- student_and_school_filt |>
    select(w_fstuwt, schoolid, schooltype) |> 
    distinct() |> 
    mutate(grp = w_fstuwt <= cut) |>
    count(grp, schooltype) |>
    tidyr::pivot_wider(
      names_from = schooltype,
      values_from = n,
      values_fill = 0
    )
  
  tab$cut <- cut
  tab
}

tabs <- dplyr::bind_rows(lapply(cuts, find_cut))

tabs |>
  filter(
    Public == 96,
    Private == 7,
    Unknown == 18
  )