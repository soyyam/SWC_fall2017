# This script computes the GDP for a country using the gapminder data

# clear all variables
rm(list=ls())

# location of the data
filename <- "../Data/gapminder.txt"

# read the data file
gapminder <- read.table(filename,header=TRUE)

# extract gdpPercap from the gapminder data, using a specific country
getAverageGdpPerCapita <- function(country) {
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

# Process GDP from a large vector of countries
southAmericanCountries <- c('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Paraguay', 'Peru', 'Uruguay', 'Venezuela') 

# use sapply to invoke getAverageGdpPerCapita() on all elements of SA countries
averageGdpSouthAmericanCountries <- sapply(southAmericanCountries, getAverageGdpPerCapita)

# sort average GDP by ascending order
averageGdpSouthAmericanCountriesSorted <- averageGdpSouthAmericanCountries[order(averageGdpSouthAmericanCountries)]

# plot the data in a bar plot
barplot(averageGdpSouthAmericanCountriesSorted, las=2)
