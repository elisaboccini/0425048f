#' Data Analisys: linear regression model
#' 
#' reganalysis
#' 
#' @export
#' 
#' 
#' 
#' 
reg_analysis <- function (druguse) { 
  reg <- lm(druguse$tranquilizer.use~druguse$age) 
 return(reg)
}
