# Load the iris dataset
#data(iris)
data <- read.csv("I:/R Languadge/iris_df.csv")

# Choose the variables for clustering
vars <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
iris_cluster <- iris[, vars]

# Scale the variables
scaled_data <- scale(iris_cluster)

# Perform k-means clustering
kmeans_model <- kmeans(scaled_data, centers = 3, nstart = 10)

# Visualize the results
library(cluster)
clusplot(scaled_data, kmeans_model$cluster, color = TRUE, shade = TRUE, labels=0,lines=0)




# In the above code, we first load the Iris dataset using the data function.
# We then choose the variables that we want to use for clustering and store them in the vars vector. In this case, we choose all four variables in the dataset.
# We scale the variables using the scale function, which subtracts the mean from each variable and divides by the standard deviation.
# We then perform k-means clustering on the scaled data using the kmeans function. 
#We specify that we want to cluster the data into three groups (specified by the centers argument) and that we want to run the 
#algorithm 10 times with different starting points (specified by the nstart argument).
# Finally, we visualize the results using the clusplot function from the cluster package. 
#The function creates a scatterplot of the first two principal components of the data, with points colored according to the cluster assignments. 
#The color argument specifies that we want to use different colors for each cluster, 
#the shade argument specifies that we want to add shading to the points to aid visualization, the labels argument specifies that we want to label the clusters, 
#and the lines argument specifies that we don't want to draw lines between the points.