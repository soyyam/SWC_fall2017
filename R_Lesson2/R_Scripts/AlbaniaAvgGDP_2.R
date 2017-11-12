# This script computes the average GDP for Albania using the gapminder dataset

# location of the data
filename <- '../Data/gapminder.txt'
# read the data
gapminder <- read.table(filename,header=TRUE)

# create a variable to store the country name
countryName <- 'Albania'

# select the rows where the country is and store Data
albaniaData <- gapminder[gapminder$country == countryName,]
# calculates the average GDP for Albania
avgAlbaniaGDP <- mean(albaniaData$gdpPercap)

# print message with the result
print(paste0("The average GDP of ",countryName," is $",avgAlbaniaGDP))
