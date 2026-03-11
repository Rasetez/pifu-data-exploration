library(readr)

# Read the CSV created in Python
all_opa <- read_csv("output/all_outpatient_visits.csv")

# Display first few rows in the console
print(head(all_opa))

# Optionally, save a processed CSV
write_csv(all_opa, "output/all_outpatient_visits_processed.csv")