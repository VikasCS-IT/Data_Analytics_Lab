# Create a sample dataset with missing values
data <- data.frame(
  x = c(1, 2, NA, 4, 5),
  y = c(NA, 7, 8, 9, 10),
  z = c(11, 12, 13, NA, 15)
)

# Check for missing values
missing_data <- sum(is.na(data))
cat("Missing data:", missing_data, "\n")

# Remove rows with missing values
clean_data <- na.omit(data)
cat("Clean data:\n")
print(clean_data)

# Create a sample dataset
data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(10, 20, 30, 40, 50),
  z = c(100, 200, 300, 400, 500)
)

# Define a function to perform min-max normalization
min_max_norm <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

# Apply min-max normalization to the dataset
norm_data <- data.frame(lapply(data, min_max_norm))
cat("Normalized data:\n")
print(norm_data)


# 
# In the above code, we first create a sample dataset using the data.frame function. 
#We then define a function called min_max_norm that performs min-max normalization on a vector of data. 
#This function takes a vector of data as input, subtracts the minimum value of the vector from each element, 
#divides the result by the range of the vector (i.e., the difference between the maximum and minimum values), and returns the normalized vector.
# To apply min-max normalization to the entire dataset, we use the lapply function to apply the min_max_norm function to each column of the dataset.
#We then create a new dataframe with the normalized values using the data.frame function, and print the normalized data using the print function.
#Note that this code assumes that the variables in the dataset are continuous and numeric. 
#If the variables are categorical or non-numeric, you may need to apply a different type of normalization or data transformation.