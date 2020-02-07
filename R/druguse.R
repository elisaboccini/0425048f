

#data acquisition

druguse <- read.csv("drug-use-by-age.csv")
head(druguse)
#data visualization


plotvisualization <- function() {

require(devtools)
require(tidyverse)
require(plotly)
require(ggplot2)
names(druguse)
class(druguse)
p <- plotly::plot_ly(druguse, labels = ~druguse$crack.frequency, type = 'pie') %>%
  layout(title = "drug-use-by-age",
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
p
}
plotvisualization ()

#Data Analysis: summary stats for all variables in the data set:
summary(druguse)
#Option 2: using subset
druguse.sub0 <- subset(druguse, select=c("tranquilizer.use","marijuana.use"))
summary(druguse.sub0)

#Data Analisys: linear regression model
regnalysis <- function () { 
reg <- lm(druguse$tranquilizer.use~druguse$age)  
reg_1 <- lm(druguse$stimulant.use~druguse$age)
}










