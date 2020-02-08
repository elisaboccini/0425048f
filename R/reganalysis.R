#' Data Analisys: linear regression model
#'
#'
#' @param druguse data.frame
#' 
#' 
#' 
#'
#' 
#' @importFrom stats lm
#' 
#' @export
#' 
reg_analysis <- function(druguse) { 
  reg <- lm(data=druguse, druguse$alcohol.use~druguse$tranquilizer.use)
  sumreg <- summary(reg)
  return(sumreg)
}
