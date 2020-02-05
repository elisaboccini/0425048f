#data acquisition
alcoholconsumption <- read.csv('https://raw.githubusercontent.com/fivethirtyeight/data/master/alcohol-consumption/drinks.csv', sep=',')
head(alcoholconsumption)  
#add a rda file
save(alcoholconsumption,file="/Users/francescagraziaradatti/Documents/GitHub/0425048f/data/alcoholconsumption.rda")

#data visualization1
summary(alcoholconsumption)
plot(alcoholconsumption)
plot(alcoholconsumption$country, alcoholconsumption$total_litres_of_pure_alcohol)

#data visualization2: install ggplot2 package
install.packages("ggplot2", repos = "https://cran.rstudio.com")
require(ggplot2)
ggplot(alcoholconsumption, aes(country)) + geom_bar(stat="count")
ggplot(alcoholconsumption, aes(x=country, y=total_litres_of_pure_alcohol, col=country)) + geom_point()





