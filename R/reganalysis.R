#' Data Analisys: linear regression model
#' 
#' reganalysis
#' 
#' @export
#' 
#' 
#' 
#' 
regnalysis <- function (druguse) { 
  reg <- lm(druguse$tranquilizer.use~druguse$age) 
  reg_1 <- lm(druguse$stimulant.use~druguse$age)
}
