## This is Life expectancy across years script

myDataFull <- read.table("../Data/gapminder.txt", header=TRUE)

## Extracting only the country Canada
Canada <- myDataFull[myDataFull$country=="Canada",]

## Plot life expectancy over the years
## Open the file
png(filename="Canada.png")
plot(Canada$year,Canada$lifeExp,col="blue",type="l")
#Close the device
dev.off()
