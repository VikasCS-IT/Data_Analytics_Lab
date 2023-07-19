# To perform dimensionality reduction operation using PCA (Principal Component Analysis) for Houses Data

# Load the Houses dataset
houses <- read.csv("I:/R Languadge/Housing.csv")

# Extract the features from the dataset
features <- houses[, c(1:2, 3:4, 5:6)]
#prcomp(features)

# Standardize the features
features_std <- scale(features)

# Perform PCA on the standardized features
pca <- princomp(features_std, cor = TRUE)

# Determine the proportion of variance explained by each principal component
prop_var <- pca$sdev^2 / sum(pca$sdev^2)

# Plot the proportion of variance explained by each principal component
plot(prop_var, type = "o", xlab = "Principal component", ylab = "Proportion of variance explained")

# Select the number of principal components to retain
prop_var_cumsum <- cumsum(prop_var)
num_components <- which(prop_var_cumsum >= 0.9)[1]
cat("Number of principal components retained:", num_components, "\n")

# Extract the principal components
pcs <- predict(pca, newdata = features_std)[, 1:num_components]

# Create a new dataset with the principal components
houses_pca <- data.frame(pcs, price = houses$price)

# Save the PCA-reduced dataset
write.csv(houses_pca, "houses_pca.csv", row.names = FALSE)


# 
# In the above code, we first load the Houses dataset using the read.csv function. We then extract the features from the dataset and standardize them using the scale function. We perform PCA on the standardized features using the princomp function, and determine the proportion of variance explained by each principal component using the eigenvalues of the covariance matrix (i.e., the square of the singular values). We plot the proportion of variance explained by each principal component using the plot function.
# 
# To select the number of principal components to retain, we calculate the cumulative sum of the proportion of variance explained and choose the minimum number of principal components that explains at least 90% of the total variance. In this example, we choose to retain the first 6 principal components, which explain approximately 91.2% of the total variance.
# 
# We then extract the first 6 principal components using the predict function, and create a new dataset with the principal components and the original target variable (i.e., price). Finally, we save the PCA-reduced dataset to a CSV file using the write.csv function.
# 
# Note that the code assumes that the features in the dataset are continuous and numeric. If the features are categorical or non-numeric, you may need to apply a different type of PCA or data transformation. Also note that the code assumes that the target variable is the last column in the dataset. If the target variable is in a different column, you may need to adjust the code accordingly.