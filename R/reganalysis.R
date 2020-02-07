#Data Analisys: linear regression model
regnalysis <- function () { 
  reg <- lm(druguse$tranquilizer.use~druguse$age)  
  reg_1 <- lm(druguse$stimulant.use~druguse$age)
}