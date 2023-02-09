
# Read the input file as a tab-delimited text file
input_file <- read.table("input.tsv", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

# Extract the last column
last_column <- input_file[,ncol(input_file)]

# Remove any header if it is there
if (is.numeric(last_column[1])) {
  last_column_no_header <- last_column
} else {
  last_column_no_header <- last_column[-1]
}

# Sort the value
sorted_last_column <- sort(last_column_no_header)

# Print in the terminal
print(sorted_last_column)

