# Take multiple times input through user store in x y z
{
  x <- readline(prompt = "Enter first number : ")
  y <- readline(prompt = "Enter second number : ")
  z <- readline(prompt = "Enter third number : ")
}
# Concatenation of these number and store in con
con <- c(x,y,z)
# Convert string to integer and store in var
var <- as.integer(con)
print(var)
min(var)  # Find minimum values of numbers
max(var)  # Find maximum values of numbers
ave(var)  # Find average values of numbers
sum(var)  # Find sum of all numbers
a <- as.integer(readline(prompt = "Enter number to find SQRT : "))
sqrt(a)
# For calculate round enter as -1.5,-1.15
b <- as.numeric(readline(prompt = "Enter number to find ROUND : "))
round(b)
b <- as.numeric(readline(prompt = "Enter number to find ROUND : "))
round(b)
