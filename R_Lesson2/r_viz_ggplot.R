# Script for data visualization using ggplot
# SWC fall 17
# 2017-11-12

# intall and load the ggplot2 package
# install.packages("ggplot2")
library(ggplot2)

gapminder <- read.table('C:/Users/Ashley/Desktop/SWC_fall2017/Data/gapminder.txt',header=TRUE)

# ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) +
#   geom_point()
# 
# # How does life expectancy change over time?
# ggplot(data=gapminder,aes(x=lifeExp,y=year)) +
#   geom_point()

# Modify this example so that data points are colored by country
ggplot(data=gapminder,aes(x=lifeExp,y=year,color=country)) +
  geom_point(show.legend = FALSE)

# adding layers
ggplot(data=gapminder,aes(x=year,y=lifeExp,color=country)) +
  geom_point() +
  geom_line() +
  theme(legend.position = "none")

# make the lines all one color
ggplot(data=gapminder,aes(x=year,y=lifeExp)) +
  geom_point(aes(color=country)) +
  geom_line(color="black") +
  theme(legend.position = "none")

# adding text
ggplot(data=gapminder,aes(x=year,y=lifeExp,color=country)) +
  geom_point() +
  theme(legend.position = "none") +
  labs(x="Year",y="Life Expectancy",title="Figure 1.")

# manipulate scales (transformations)
ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) +
  geom_point() +
  scale_x_log10()

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) +
  geom_point() +
  scale_x_log10() +
  geom_smooth(method="lm")

# faceting the data
starts.with <- substr(gapminder$country,start=1,stop=1)
az.countries <- gapminder[starts.with %in% c('A','Z'),]

ggplot(data=az.countries,aes(x=year,y=lifeExp,color=country)) +
  geom_point() +
  theme(legend.position = "none") +
  facet_wrap(~ country)

lifeExp_50_2007 <- gapminder[(gapminder$lifeExp<46)&(gapminder$year==2007),]
ggplot(data=lifeExp_50_2007,aes(x=lifeExp,y=pop)) +
  geom_point()

