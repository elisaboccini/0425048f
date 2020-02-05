#data acquisition
x <- read.csv('drinks.csv')             # read file 
head(x)  
#add a rda file
save(x,file="/Users/francescagraziaradatti/Documents/GitHub/0425048f/data/alcoholconsumption.rda")
#data visualization1
summary(x)
plot(x)
plot(x$country, x$total_litres_of_pure_alcohol)

#data visualization2: install ggplot2 package
install.packages("ggplot2", repos = "https://cran.rstudio.com")
require(ggplot2)
ggplot(x, aes(continent)) +
  geom_bar(stat="count")
ggplot(x, aes(x=country, y=total_litres_of_pure_alcohol, col=continent)) + geom_point()


#linear regression

#view the structure of the dataframe
str(x)

#converse wine_servings and total_litres_of_pure_alcohol in numerical value
x$winenum <- as.numeric(x$wine_servings)
x$total_litresnum <- as.numeric(x$total_litres_of_pure_alcohol)
str(x)



