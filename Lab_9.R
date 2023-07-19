# Load the "class" package for the knn function
library(class)

# Load a sample dataset
data(iris)
mydata <- iris

# Split the data into training and test sets
set.seed(123) # for reproducibility
train_index <- sample(1:nrow(mydata), 0.8*nrow(mydata))
train_data <- mydata[train_index,]
test_data <- mydata[-train_index,]
dim(train_data)
dim(test_data)

# Perform KNN classification
predicted_labels <- knn(train_data[,1:4], test_data[,1:4], train_data[,5], k=3)

# Print accuracy
cat("Accuracy:", mean(predicted_labels == test_data[,5]), "\n")

# Plot the results
library(ggplot2)
ggplot(test_data, aes(Sepal.Length, Sepal.Width, color=Species)) +
  geom_point() +
  geom_point(data=data.frame(test_data[,1:4], predicted_labels), aes(Sepal.Length, Sepal.Width, color=predicted_labels),shape=4)
