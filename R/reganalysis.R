#' Data Analisys: linear regression model
#' 
#' reganalysis
#'
#' @param druguse ranquilizer.use druguse$age 
#' 
#' 
#' 
#' @export
#' @importFrom stats model.frame lm
#' 
#' 
reg_analysis <- function(druguse) { 
  
  reg <- lm(druguse$tranquilizer.use~druguse$age)
  sumreg <- summary(reg)
  return(sumreg)
}
