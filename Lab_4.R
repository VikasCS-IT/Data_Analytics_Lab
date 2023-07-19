# Create a vector of sample data
data <- c(3,7,8,4,2,9,6,4,5,1)

#readData <- read.csv("I:/R Languadge/Data Analytics/people-info.csv")
#print(readData)
#print(mean(readData$Age))

# Calculate the mean
mean_data <- mean(data)
cat("Mean : ",mean_data,"\n")

# Calculate the median
median_data = median(data)
cat("Median : ",median_data,"\n")

# Calculate the mode
mode = names(sort(-table(data)))[1]
cat("Mode : ",mode,"\n")

# Calculate the standard deviation
sd_data = sd(data)
cat("Standard deviation : ",sd_data)




# 
# In the above code, we first create a vector of sample data. We then use the mean function to calculate the mean of the data, the median function to calculate the median of the data, and the sd function to calculate the standard deviation of the data. Note that the sd function calculates the sample standard deviation by default. If you want to calculate the population standard deviation instead, you can pass the argument na.rm = TRUE to the sd function.
# 
# To calculate the mode of the data, we first use the table function to count the number of occurrences of each value in the data. We then use the sort function to sort the counts in descending order, and the names function to extract the names (i.e., values) of the sorted counts. The first name in the sorted list corresponds to the mode of the data.
# 
# Note that you can also use other functions or packages to perform statistical operations in R, depending on your specific needs and data.