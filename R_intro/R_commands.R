sqrt(64)
print("Wow")
print(64)
install.packages("knitr")
library(knitr)
?print
help("mean")
#variable**********
name <- "Jane"
name
price <- 3.99
price
print(price)
mass <- 47.5
mass
#removing variables
ls()
rm(name)
ls()
rm(list = ls())
#variables and functions
res <- sqrt(64)
res
age <- 45
length(age)
str(age)
typeof(age)
score <- 79
score
is.integer(score)
typeof(is.integer(score))

#how to create multi-element variable
v <- c(1:10)
length(v)
str(v)
head(v, n=2)
tail(v,n=3)
help(c)
#manipulate
v <- c(v,56)
v
#vectorization
v1 <- v*2
v1
#change data type
v2 <- as.character(v1)
#matrices
m <- matrix(c(1:18),3,6)
m
dim(m)
#factor - specialized vector
f <- factor(c("M","F","F"))
f
str(f)
#list
l <- list("Afghanistan",1952,86769)
l
str(l)
length(l)

# Challenge:
#   Try to create a list named 'myOrder' that contains the 
# following data structures as list elements:
#   -- Element 1 is a character vector of length 4 that 
# lists the menu items you ordered from the restaurant: 
#   chicken, soup, salad, tea.
# 
# -- Element 2 is a factor that describes menu items
# as "liquid" or "solid".
# 
# -- Element 3 is a vector that records the cost of each menu item:
#   4.99, 2.99, 3.29, 1.89.
# 
# *Hint: Define your elements first, then create a list with them.
items <- c("chicken","soup","salad","tea")
desc <- factor(c("solid","liquid","solid","liquid"))
cost <- c(4.99,2.99,3.29,1.89)
myOrder <- list(items,desc,cost)
myOrder
length(myOrder)
str(myOrder)
