#' @title regplot function
#' 
#' @description The "regplot" function is an easy way to visualize the dependence of the tranquilizer frequency on the tranquilizer use.
#'
#' The function needs the argument "druguse".
#' The output shows a graph built using the "ggplo2 package"
#'  
#' @author Francesca Grazia Radatti \email{francescaradatti97@gmail.com}
#' 
#' @export
#' 
#' @param druguse data.frame
#' 
#'
#'
#'
regplot <- function (druguse) {
 ggplot2::ggplot(druguse, 
 ggplot2::aes(x=druguse$tranquilizer.use, y=druguse$tranquilizer.frequency, col=druguse$age)) +
 ggplot2::geom_point()+
 ggplot2::geom_abline() 
  
}

 
