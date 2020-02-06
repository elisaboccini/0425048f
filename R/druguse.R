

#data acquisition

druguse <- read.csv('drug-use-by-age.csv')
head(druguse)




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









