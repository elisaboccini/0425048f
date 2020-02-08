#' Data Analisys: linear regression model
#' 
#' reganalysis
#'
#' @param druguse data.frame
#' 
#' 
#' 
#' @export
#' @importFrom stats lm
#' 
#' 
reg_analysis <- function(druguse) { 
  
  reg <- lm(druguse, druguse$alcohol.use~druguse$tranquilizer.use)
  sumreg <- summary(reg)
  return(sumreg)
}
