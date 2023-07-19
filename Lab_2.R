library(readxl)
library(readtext)
library(readxl)
library(writexl)


#Step 1: Create a Data Frame
dataf <- data.frame(Name = c("VIKAS", "Vishal", "Rahul", "Sagar"),
                    Age = c(23,41,32,55))
print(dataf)
#Step 2: Use write.csv to Export the DataFrame
# row.names=TRUE if you want R to export the row names to the CSV file.
#write.csv(dataf,"I:/R Languadge/people-info.csv", row.names = TRUE)
write.csv(dataf,"I:/R Languadge/people-info.csv", row.names = TRUE)
#Step 3: Run the code to Export the DataFrame to CSV


#Step 2: Use write.txt to Export the DataFrame
# row.names=TRUE if you want R to export the row names to the txt file.
write.csv(dataf,"I:/R Languadge/people-info.txt")
#Step 3: Run the code to Export the DataFrame to txt

#Step 2: Use write.xls to Export the DataFrame
# row.names=TRUE if you want R to export the row names to the xls file.
write_xlsx(dataf,"I:/R Languadge/people-info.xlsx", col_names = TRUE)
#Step 3: Run the code to Export the DataFrame to xls

#"Reading CSV Files CSV (Comma Separated Values) is a text file in which the values in columns are separated by a comma. For importing data in the R programming environment, we have to set our working directory with the setwd() function."

setwd("I:/R Languadge")

#"To read a csv file, we use the in-built function read.csv() that outputs the data from the file as a data frame."
data <- read.csv("I:/R Languadge/people-info.csv")
print(data)


#"Reading CSV File txt file is a text file in which the values in columns are separated by a comma. For importing data in the R programming environment, we have to set our working directory with the setwd() function."
txt <- read.delim("I:/R Languadge/people-info.txt")
print(txt)

#"To read a xlsx or xls file, we use the in-built function read_xlsx() that outputs the data from the file as a data frame."
xls <- read_xlsx("I:/R Languadge/people-info.xlsx")
print(xls)
