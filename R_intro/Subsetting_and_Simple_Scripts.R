#### COMMANDS FOR SUBSETTING AND WRITING SIMPLE R SCRIPTS #########
menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCost <- c(4.99,2.99,3.29,1.89)
myOrder <- list(menuItems,menuType,menuCost)
myOrder
length(myOrder)
str(myOrder)
length(menuItems)
length(menuType)
length(menuCost)
myOrder_df <- data.frame(menuItems,menuType,menuCost)
myOrder_df

### Subsetting
### By Position Index
v <- c(10:20)
v
v[7]
v[7:10]
v[-c(7:10)]
myOrder[1]
myOrder[3]
myOrder_df
myOrder_df[3,3]
myOrder_df[3,]

### By Name
myOrder_df$menuType


### By Logical Vectors
## < less than
## > greater than
## == equal to
## <= lesser than or equal to
## >= greater than or equal to
v <- c(2,3,4,5,6)
v1 <- v[v==5]
v2 <- v[v<4]
v1
df1 <- myOrder_df[myOrder_df$menuType=="liquid",]
df1
df2 <- myOrder_df[myOrder_df$menuCost<3.00,]
df2
myData <- read.table("../Data/gapminder.txt",header = TRUE)
head(myData,n=5)
#read.csv("path_to_the_file")
dim(myData)

# Challenge:
#   Answer the following questions about the 'myData' object:
#   1. What is the overall object structure? What function will you use?
#   2. Can you tell the data type of the elements in each column?
#   3. Can you extract the 3rd and 5th column of the dataset?
#   4. Can you extract the list of countries in this dataset? ### Hint: use unique(). ###
#   5. Can you get a part of this dataset that inclues information about Sweden?
#   6. Can you extract all countries for which life expectancy is below 70?
#   7. Can you make a new column that contains population size in units of millions of people?
str(myData)
typeof(myData)
dat1 <- myData[,c(3,5)]
dat1
dat2 <- unique(myData$country)
dat2
dat3 <- myData[myData$country=="Sweden",]
dat3
dat4 <- myData[myData$lifeExp<70,]
dat4 <- unique(dat4[,1])
dat4
new_pop <- myData$pop/10^6
myData$pop_mil <- new_pop
myData
str(myData)

afri <- myData[myData$continent=="Africa",] 
euro <- myData[myData$continent=="Europe",]
afri_gdp_mean <- mean(afri$gdpPercap)
euro_gdp_mean <- mean(euro$gdpPercap)
gdp <- c(afri_gdp_mean,euro_gdp_mean)
png("afri_euro_gdp_comp.png")
barplot(gdp,col="darkgreen",main="Mean GDP",ylab="$",names.arg=c("Africa","Europe"))
dev.off()