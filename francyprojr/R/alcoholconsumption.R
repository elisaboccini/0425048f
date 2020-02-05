#View where is my folder
getwd()

#import my csv file
alcoholconsumption <- read.csv("drinks.csv", TRUE, sep = ',')
class(alcholconsumption)

#data visualization 1: install ggplot2 package
install.packages("ggplot2")
summary(alcholconsumption)

plot(alcholconsumption)

plot(alcholconsumption$country, alcholconsumption$total_litres_of_pure_alcohol)
#data visualization 2: do some plots with some different characteristics
ggplot(alcholconsumption, aes(x=country, y=total_litres_of_pure_alcohol, col=continent)) + geom_point()
ggplot(alcholconsumption, aes(continent)) +
geom_bar(stat="count")


dataframe.rename(from "alcholconsumption", to "alcoholconsumption")

alcoholconsumption <- NULL

#Data Analysis: sammury stats for all variables in the data set:
summary(alcholconsumption)
cor("alcholconsumption")
