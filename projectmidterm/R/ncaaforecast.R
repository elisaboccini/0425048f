#data acquisition
# ncaaforecast<- read.csv('https://raw.githubusercontent.com/fivethirtyeight/data/master/historical-ncaa-forecasts/historical-538-ncaa-tournament-model-results.csv', sep = ',')
# head(ncaaforecast)

"/Users/francescagraziaradatti/Documents/GitHub/0425048f/projectmidterm"

#data visualization:ggplot2
install.packages("ggplot2")
require(ggplot2)
summary(ncaaforecast)
ggplot(ncaaforecast, aes(x=year, y=	underdog, col=round)) + geom_point()

ggplot(ncaaforecast, aes(year)) +
geom_bar(stat="count")

ggplot(ncaaforecast, aes(underdog, col=round))+geom_bar(stat="count")


#data analysis: time series analysis: create a ts with zoo
class(ncaaforecast)

mfavorprob<-ts(ncaaforecast$favorite_probability, start=1, end=96, frequency = 1)
class(mfavorprob)
head(mfavorprob)

tsfavflag<-ts(ncaaforecast$favorite_win_flag, start=2011, end=2014, frequency=1)
class(tsfavflag)
head(tsfavflag)

m_ts <- ts(ncaaforecast[,-1], start=1, end=96, frequency=1)
class(m_ts)

install.packages("xts")
require(xts)

tsfavflag.xts <- as.xts(tsfavflag)
head(tsfavflag.xts)
class(tsfavflag.xts)

plot(tsfavflag.xts)

tsfavorprob<-ts(ncaaforecast$favorite_probability, start=2011, end=2014, frequency = 1)
class(tsfavorprob)
head(tsfavorprob)

#shiny app
install.packages("shiny")
require(shiny)

