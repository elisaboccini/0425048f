#' @title reg_analysis function
#' 
#' @description Data Analisys: linear regression model to evaluete the "tranquilizer use" variation due to the "alcohol use" variation.
#'
#' It's necessary to import other packages if the are not installed.
#' The function needs the argument druguse.
#' The output show some significant estimates that allow us to understand how the model is significative.
#' 
#' @param druguse data.frame
#' 
#' @author Francesca Grazia Radatti \email{francescaradatti97@gmail.com}
#' 
#' @importFrom stats lm
#' 
#'
#' 
#' @export
#' 
reg_analysis <- function(druguse) { 
  reg <- lm(data=druguse, druguse$alcohol.use~druguse$tranquilizer.use)
  sumreg <- summary(reg)
  return(sumreg)
}
