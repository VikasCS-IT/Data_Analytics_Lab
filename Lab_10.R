#  To perform market basket analysis using Association Rules (Apriori)
#So, let's get started by loading up our libraries and data set

#install.packages('arules')
#install.packages('arulesViz')
library(datasets)
# Load the required library
library(arules)
library(arulesViz)

# Load the data
data(Groceries)
dim(Groceries) #find number of rows and column

# Set the minimum support and confidence
min_support <- 0.001
min_confidence <- 0.5

# Perform Market Basket Analysis using the apriori function
rules <- apriori(Groceries, parameter = list(supp = min_support, conf = min_confidence))

# Inspect the top 5 rules
inspect(head(rules, n = 5))

# Create a two-key plot
#plot(rules, method = "two-key plot")
