

#data acquisition

druguse <- read.csv('https://raw.githubusercontent.com/fivethirtyeight/data/master/drug-use-by-age/drug-use-by-age.csv', sep=',')
head(druguse)
save(druguse,file="/Users/francescagraziaradatti/Documents/GitHub/0425048f/data/druguse.rda")
str(druguse)



#data visualization
library(plotly)
library(dplyr)

p<- plot_ly(x="age", type="histogram")
p

#Data Analysis: sammury stats for all variables in the data set:
summary(druguse)
#Option 2: using subset
druguse.sub0 <- subset(druguse, select=c("tranquilizer.use","marijuana.use"))
summary(druguse.sub0)








