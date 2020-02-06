

#data acquisition

druguse <- read.csv('https://raw.githubusercontent.com/fivethirtyeight/data/master/drug-use-by-age/drug-use-by-age.csv', sep=',')
head(druguse)
save(druguse,file="/Users/francescagraziaradatti/Documents/GitHub/0425048f/data/druguse.rda")
str(druguse)



#data visualization
install.packages("ggplot2",repos = "https://cran.rstudio.com" )
require(ggplot2)
ggplot(druguse, aes(tranquilizer.use)) +
  geom_bar(stat="count")


#Data Analysis: sammury stats for all variables in the data set:
summary(druguse)
#Option 2: using subset
druguse.sub0 <- subset(druguse, select=c("tranquilizer.use","marijuana.use"))
summary(druguse.sub0)







