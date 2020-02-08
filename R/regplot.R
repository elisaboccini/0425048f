#' data visualization 2: do some plots with some different characteristics
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

 
