#create dataset
df <- data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 11, 12, 12, 14),
                 score=c(64, 66, 76, 73, 74, 81, 83, 80, 82, 88, 84, 82, 91, 90, 93, 89))

#view first six rows of dataset
head(df)

#attach dataset to make it more convenient to work with
attach(df)

#fit simple linear regression model
model <- lm(score~hours)

#view model summary
summary(model)

#visualize the data
plot(hours,score)
abline(lm(score~hours),col="red")







# In the above code, we first load the dataset using the read.csv function. The dataset should have two columns, x and y, representing the independent and dependent variables, respectively.
# 
# We then fit a linear regression model using the lm function. The formula for the model is y ~ x, which specifies that we want to predict y as a linear function of x. We pass the dataset to the data argument of the lm function to indicate the data source.
# 
# We can print a summary of the model using the summary function, which provides information such as the coefficients of the model, the standard errors, the t-values, and the p-values.
# 
# Finally, we can plot the data and the regression line using the plot function and the abline function. The plot function plots the x and y variables as points, while the abline function overlays the regression line on the plot. The col argument of the abline function sets the color of the regression line to red.
# 
# Note that this is a very basic example of linear regression and there are many aspects of the analysis that can be improved, such as assessing the assumptions of the model, evaluating the model's performance, and comparing the model to alternative models.