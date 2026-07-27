
rm(list=ls())


library(readr)
library(stringr)
library(dplyr)

# Read SAS syntax
sas <- readLines("metadata/read.sas")

# Extract INPUT block lines
input_lines <- grep("^\\s*@\\d+", sas, value = TRUE)

# Parse position, variable name, and SAS format
spec <- str_match(
  input_lines,
  "^\\s*@([0-9]+)\\s+([A-Za-z0-9_]+)\\s+\\$?([0-9]+)(?:\\.([0-9]+))?\\."
)

spec_df <- data.frame(
  start = as.integer(spec[,2]),
  name  = spec[,3],
  width = as.integer(spec[,4]),
  stringsAsFactors = FALSE
)

# Calculate end positions
spec_df$end <- spec_df$start + spec_df$width - 1

# Create FWF specification
fwf_spec <- fwf_positions(
  start = spec_df$start,
  end = spec_df$end,
  col_names = spec_df$name
)

# Read the data file
r <- read_fwf(
  "_data/usa_read2.dat",
  fwf_spec,
  trim_ws = TRUE,
  col_types = cols(.default = col_character())
)

colnames(r) <- stringr::str_to_lower(colnames(r))

school_dta <- haven::read_dta(file.path("_data", "PISA2000_school_questionnaire.dta"))

school_dta <- school_dta |>
  dplyr::filter(country == "840") |>
  dplyr::mutate(schoolid_recode = stringr::str_remove(schoolid, "^99"))

# Read SAS program
sas <- readLines("metadata/school.sas")

# Extract INPUT block
start_line <- grep("\\binput\\b", sas, ignore.case = TRUE)
end_line <- grep("\\blabel\\b", sas, ignore.case = TRUE)

input_block <- sas[(start_line + 1):(end_line - 1)]

# Keep only lines containing variable definitions
input_block <- input_block[
  grepl("^\\s*@", input_block)
]

# Parse lines like:
# @1 SCHNAME $50.
# @57 SC02Q01 13.

pat <- "^\\s*@([0-9]+)\\s+([A-Za-z0-9_]+)\\s+(\\$?)([0-9]+)\\."

parsed <- str_match(input_block, pat)

spec <- tibble(
  start = as.integer(parsed[,2]),
  var   = parsed[,3],
  char  = parsed[,4] == "$",
  width = as.integer(parsed[,5])
)

spec <- spec %>%
  mutate(end = start + width - 1)

# Build fwf specification
fwf_spec <- fwf_positions(
  start = spec$start,
  end = spec$end,
  col_names = spec$var
)

# Read the fixed-width file
school <- read_fwf(
  "_data/usa_school.dat",
  fwf_spec,
  col_types = cols(.default = col_character())
)

# Convert numeric fields
numeric_vars <- spec$var[!spec$char]

school <- school %>%
  mutate(
    across(
      all_of(numeric_vars),
      ~ suppressWarnings(as.numeric(trimws(.)))
    )
  )

glimpse(school)

colnames(school) <- stringr::str_to_lower(colnames(school))


# Reading data
pisa_global <- haven::read_dta(file.path("_data", "pisa2000r.dta"))

pisa_global <- pisa_global |> 
  dplyr::filter(country == "840")

r <- r %>%
  dplyr::left_join(
    pisa_global %>%
      dplyr::select(stidstd, effper, hisei, belong, wleread),
    by = "stidstd"
  )