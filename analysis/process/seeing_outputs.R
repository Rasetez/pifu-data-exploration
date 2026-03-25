


dataset <- read.csv("output/dataset_everyone.csv.gz")

all_opa <- read.csv("output/debug_all_opa.csv")


thingy<-read.csv("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 1. Load CSV
# -------------------------------
data <- read.csv("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 2. Clean status column (column 3)
# -------------------------------
data[[3]] <- trimws(as.character(data[[3]]))  # remove spaces

# -------------------------------
# 3. Parse date column (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

# Function to safely parse dates
parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy for any remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 4. Remove rows with invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 5. Define NEW date range
# -------------------------------
start_date <- as.Date("2022-06-01")
end_date   <- as.Date("2025-12-31")

# -------------------------------
# 6. Filter data
# -------------------------------
filtered_data <- data[
  data[[2]] >= start_date &
    data[[2]] <= end_date &
    data[[3]] %in% c("5", "6"),
]

# -------------------------------
# 7. View filtered data
# -------------------------------
View(filtered_data)
head(filtered_data)
nrow(filtered_data)




filtered_data2 <- filtered_data[
  trimws(as.character(filtered_data[[5]])) %in% c("4", "5"),  # column 5 filter
]

# -------------------------------
# 2. View the new filtered dataset
# -------------------------------
View(filtered_data2)
head(filtered_data2)
nrow(filtered_data2)









# -------------------------------
# 1. Load CSV
# -------------------------------
data <- read.csv("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 2. Parse date column (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

# Function to safely parse dates
parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 3. Remove rows with invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 4. Define date range for 2024 only
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")

# -------------------------------
# 5. Filter data by date only
# -------------------------------
filtered_data <- data[
  data[[2]] >= start_date &
    data[[2]] <= end_date,
]

# -------------------------------
# 6. View filtered data
# -------------------------------
View(filtered_data)
head(filtered_data)
nrow(filtered_data)






# -------------------------------
# 1. Load CSV
# -------------------------------
data <- read.csv("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 2. Clean status column (column 3)
# -------------------------------
data[[3]] <- trimws(as.character(data[[3]]))  # remove spaces

# -------------------------------
# 3. Parse date column (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

# Function to safely parse dates
parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy for any remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 4. Remove rows with invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 5. Define NEW date range
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")

# -------------------------------
# 6. Filter data
# -------------------------------
filtered_data <- data[
  data[[2]] >= start_date &
    data[[2]] <= end_date &
    data[[3]] %in% c("5", "6"),
]

# -------------------------------
# 7. View filtered data
# -------------------------------
View(filtered_data)
head(filtered_data)
nrow(filtered_data)









# -------------------------------
# 1. Load CSV
# -------------------------------
data <- read.csv("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 2. Parse date column (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

# Function to safely parse dates
parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 3. Remove rows with invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 4. Define date range for 2024 only
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")

# -------------------------------
# 5. Ensure column 6 is character
# -------------------------------
data[[6]] <- as.character(data[[6]])

# -------------------------------
# 6. Filter data by date AND column 6
# -------------------------------
filtered_data <- data[
  data[[2]] >= start_date &
    data[[2]] <= end_date &
    data[[6]] == "410",
]

# -------------------------------
# 7. View filtered data
# -------------------------------
View(filtered_data)
head(filtered_data)
nrow(filtered_data)






# -------------------------------
# 1. Load CSV
# -------------------------------
data <- read.csv("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 2. Parse date column (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

# Function to safely parse dates
parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 3. Remove rows with invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 4. Define date range for 2024 only
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")

# -------------------------------
# 5. Filter data by date only
# -------------------------------
filtered_data <- data[
  data[[2]] >= start_date &
    data[[2]] <= end_date,
]

# -------------------------------
# 6. View filtered data
# -------------------------------
View(filtered_data)
head(filtered_data)
nrow(filtered_data)






library(data.table)

# -------------------------------
# 1. Load CSV
# -------------------------------
data <- fread("dummy_tables/opa.csv", stringsAsFactors = FALSE)  # data.table is faster

# -------------------------------

data[[3]] <- trimws(as.character(data[[3]]))  # clean text
data <- data[data[[3]] %in% c("5", "6"), ]    # keep only 5 and 6


# 2. Parse appointment date (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd for remaining NAs
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 3. Remove invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 4. Filter appointments in 2024
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")

data_2024 <- data[data[[2]] >= start_date & data[[2]] <= end_date, ]

# -------------------------------
# 5. Count same-day appointments per patient
# -------------------------------
setDT(data_2024)  # ensure data.table
count_same_day <- data_2024[, .N, by = .(patient_id = data_2024[[1]], appointment_date = data_2024[[2]])]
count_same_day <- count_same_day[, .(count_same_day = sum(N)), by = patient_id]

# -------------------------------
# 6. Merge count_same_day back to patient-level dataset
# -------------------------------
# Create a dataset with one row per patient
patients_dataset <- unique(data_2024[, .(patient_id = data_2024[[1]])])
patients_dataset <- merge(patients_dataset, count_same_day, by = "patient_id", all.x = TRUE)

# Fill NA (patients with no appointments) with 0
patients_dataset[is.na(count_same_day), count_same_day := 0]

# -------------------------------
# 7. View results
# -------------------------------
View(patients_dataset)
head(patients_dataset)
nrow(patients_dataset)











library(data.table)

# -------------------------------
# 1. Load CSV
# -------------------------------
data <- fread("dummy_tables/opa.csv", stringsAsFactors = FALSE)

data[[3]] <- trimws(as.character(data[[3]]))  # clean text
data <- data[data[[3]] %in% c("5", "6"), ]    # keep only 5 and 6


# -------------------------------
# 2. Parse appointment date (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 3. Remove invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 4. Filter to 2024 only
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")
data_2024 <- data[data[[2]] >= start_date & data[[2]] <= end_date, ]

# -------------------------------
# 5. Count same-day appointments per patient (duplicates only)
# -------------------------------
setDT(data_2024)
count_same_day <- data_2024[
  , .N, by = .(patient_id = data_2024[[1]], appointment_date = data_2024[[2]])
][
  N > 1, .(count_same_day = sum(N)), by = patient_id
]

# -------------------------------
# 6. Count all appointments per patient
# -------------------------------
count_all <- data_2024[, .(count_all = .N), by = .(patient_id = data_2024[[1]])]

# -------------------------------
# 7. Create patient-level dataset and merge counts
# -------------------------------
patients_dataset <- unique(data_2024[, .(patient_id = data_2024[[1]])])

patients_dataset <- merge(patients_dataset, count_same_day, by = "patient_id", all.x = TRUE)
patients_dataset <- merge(patients_dataset, count_all, by = "patient_id", all.x = TRUE)

# Replace NA with 0 for patients with no duplicates
patients_dataset[is.na(count_same_day), count_same_day := 0]
patients_dataset[is.na(count_all), count_all := 0]

# -------------------------------
# 8. View results
# -------------------------------
View(patients_dataset)
head(patients_dataset)
nrow(patients_dataset)






# -------------------------------
# 1. Load CSV
# -------------------------------
data <- read.csv("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 2. Clean attendance column (column 5) strictly
# -------------------------------
# Remove all non-digit characters and convert to numeric
data[[5]] <- as.numeric(gsub("[^0-9]", "", data[[5]]))

# -------------------------------
# 3. Parse date column (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

parse_date_safe <- function(x) {
  if(all(grepl("^[0-9]+(\\.[0-9]+)?$", x))) {
    return(as.Date(floor(as.numeric(x)), origin = "1899-12-30"))
  }
  out <- as.Date(x, format = "%d/%m/%Y")
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 4. Remove rows with invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 5. Define NEW date range
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")

# -------------------------------
# 6. Filter data by date AND attendance (strict numeric)
# -------------------------------
library(dplyr)

filtered_data <- data %>%
  filter(
    !is.na(data[[5]]),          # remove NAs
    data[[5]] %in% c(4,5),      # strictly numeric 4 or 5
    data[[2]] >= start_date,
    data[[2]] <= end_date
  ) %>%
  arrange(data[[1]], data[[2]]) %>%  # sort by patient then date
  group_by(data[[1]]) %>%            # group by patient
  slice(1) %>%                        # first appointment per patient
  ungroup()

# -------------------------------
# 7. View filtered data
# -------------------------------
View(filtered_data)
head(filtered_data)
nrow(filtered_data)




library(data.table)

# -------------------------------
# 1. Load CSV
# -------------------------------
data <- fread("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# Clean text in column 3 and keep only 5 or 6
data[[3]] <- trimws(as.character(data[[3]]))
data <- data[data[[3]] %in% c("5", "6"), ]

# -------------------------------
# 2. Parse appointment date (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 3. Remove invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 4. Filter to 2024 only
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")
data_2024 <- data[data[[2]] >= start_date & data[[2]] <= end_date, ]

# -------------------------------
# 4b. Add any_opa flag (TRUE for all filtered rows)
# -------------------------------
data_2024[, any_opa := TRUE]

# -------------------------------
# 5. Count same-day appointments per patient (duplicates only)
# -------------------------------
setDT(data_2024)
count_same_day <- data_2024[
  , .N, by = .(patient_id = data_2024[[1]], appointment_date = data_2024[[2]])
][
  N > 1, .(count_same_day = sum(N)), by = patient_id
]

# -------------------------------
# 6. Count all appointments per patient
# -------------------------------
count_all <- data_2024[, .(count_all = .N), by = .(patient_id = data_2024[[1]])]

# -------------------------------
# 7. Create patient-level dataset and merge counts
# -------------------------------
patients_dataset <- unique(data_2024[, .(
  patient_id = data_2024[[1]],
  any_opa = any_opa
)])

patients_dataset <- merge(patients_dataset, count_same_day, by = "patient_id", all.x = TRUE)
patients_dataset <- merge(patients_dataset, count_all, by = "patient_id", all.x = TRUE)

# Replace NA with 0 for patients with no duplicates
patients_dataset[is.na(count_same_day), count_same_day := 0]
patients_dataset[is.na(count_all), count_all := 0]

# -------------------------------
# 8. View results
# -------------------------------
View(patients_dataset)
head(patients_dataset)
nrow(patients_dataset)







library(data.table)

# -------------------------------
# 1. Load CSV
# -------------------------------
data <- fread("dummy_tables/opa.csv", stringsAsFactors = FALSE)

# -------------------------------
# 2. Clean columns
# -------------------------------
# Clean text in column 3
data[[3]] <- trimws(as.character(data[[3]]))
# Keep only 5 and 6
data <- data[data[[3]] %in% c("5", "6"), ]

# Clean column 5 (attendance/outcome)
data[[5]] <- trimws(as.character(data[[5]]))

# -------------------------------
# 3. Parse appointment date (column 2)
# -------------------------------
data[[2]] <- as.character(data[[2]])

parse_date_safe <- function(x) {
  # Try Excel numeric
  if(all(grepl("^[0-9]+$", x))) {
    return(as.Date(as.numeric(x), origin = "1899-12-30"))
  }
  # Try dd/mm/yyyy
  out <- as.Date(x, format = "%d/%m/%Y")
  # Try dd/mm/yy
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%d/%m/%y")
  # Try yyyy-mm-dd
  na_idx <- is.na(out)
  out[na_idx] <- as.Date(x[na_idx], format = "%Y-%m-%d")
  return(out)
}

data[[2]] <- parse_date_safe(data[[2]])

# -------------------------------
# 4. Remove invalid dates
# -------------------------------
data <- data[!is.na(data[[2]]), ]

# -------------------------------
# 5. Filter to 2024 only
# -------------------------------
start_date <- as.Date("2024-01-01")
end_date   <- as.Date("2024-12-31")
data_2024 <- data[data[[2]] >= start_date & data[[2]] <= end_date, ]

# -------------------------------
# 6. Add any_opa flag
# -------------------------------
data_2024[, any_opa := TRUE]

# -------------------------------
# 7. Rename columns for clarity
# -------------------------------
setnames(data_2024, old = c("V1","V2","V3","V5"), new = c("patient_id","appointment_date","status","attendance"))

# -------------------------------
# 8. Count same-day appointments per patient
# -------------------------------
count_same_day <- data_2024[
  , .N, by = .(patient_id, appointment_date)
][
  N > 1, .(count_same_day = sum(N)), by = patient_id
]

# -------------------------------
# 9. Count all appointments per patient
# -------------------------------
count_all <- data_2024[, .(count_all = .N), by = patient_id]

# -------------------------------
# 10. Take first attendance value per patient
# -------------------------------
first_col5 <- data_2024[
  order(patient_id, appointment_date),
  .SD[1],
  by = patient_id
][, .(patient_id, column5_value = attendance)]

# -------------------------------
# 11. Create patient-level dataset
# -------------------------------
patients_dataset <- unique(data_2024[, .(patient_id)])

# Merge counts and first attendance
patients_dataset <- merge(patients_dataset, count_same_day, by = "patient_id", all.x = TRUE)
patients_dataset <- merge(patients_dataset, count_all, by = "patient_id", all.x = TRUE)
patients_dataset <- merge(patients_dataset, first_col5, by = "patient_id", all.x = TRUE)

# Replace NA counts with 0
patients_dataset[is.na(count_same_day), count_same_day := 0]
patients_dataset[is.na(count_all), count_all := 0]

# Ensure any_opa column exists
patients_dataset[, any_opa := TRUE]

# -------------------------------
# 12. View results
# -------------------------------
View(patients_dataset)
head(patients_dataset)
nrow(patients_dataset)


