# Get the dimensions of the input matrices from the user
m <- as.numeric(readline("Enter the number of rows : "))
n <- as.numeric(readline("Enter the number of cols : "))

# Create an empty matrix to hold the user input
A <- matrix(nrow = m, ncol = n)
B <- matrix(nrow = m, ncol = n)

# Get the input matrix from the user
cat("Enter matrix A : \n")
for(i in 1:m){
  for(j in 1:n)
    A[i,j] <- as.numeric(readline())
}

cat("Enter matrix B : \n")
for(i in 1:m){
  for(j in 1:n)
    B[i,j] <- as.numeric(readline())
}

# Perform matrix addition using vector concept
addtion <- as.vector(A) + as.vector(B)
cat("Addtion of matrix A and B : \n")
print(addtion)

# Perform matrix subtraction using vector concept
subtraction <- as.vector(A) - as.vector(B)
cat("Subtraction of matrix A and B : \n")
print(subtraction)

# Perform matrix multiplication using vector concept
multiplication <- as.vector(A) * as.vector(B)
#multiplicatio <- as.vector(A) %*% as.vector(B)
cat("Multiplication of matrix A and B : \n")
print(multiplication)


# Perform matrix division using vector concept
division <- as.vector(A) / as.vector(B)
cat("Division of matrix A and B : \n")
print(division)

# Perform matrix inverse transpose using vector concept
inverse <- t(a)
cat("Inverse transpose of matrix A : \n")
print(inverse)



# 
# In the above code, we first create a vector of sample data. We then use the mean function to calculate the mean of the data, the median function to calculate the median of the data, and the sd function to calculate the standard deviation of the data. Note that the sd function calculates the sample standard deviation by default. If you want to calculate the population standard deviation instead, you can pass the argument na.rm = TRUE to the sd function.
# 
# To calculate the mode of the data, we first use the table function to count the number of occurrences of each value in the data. We then use the sort function to sort the counts in descending order, and the names function to extract the names (i.e., values) of the sorted counts. The first name in the sorted list corresponds to the mode of the data.
# 
# Note that you can also use other functions or packages to perform statistical operations in R, depending on your specific needs and data.