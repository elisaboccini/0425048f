#' Data Visualization using a pie chart with the plotly function
#' 
#' plotvisualization
#' 
#' The function needs the argument druguse
#' 
#' @param druguse data.frame
#' 
#' @return pie chart
#' @export
#'
#' 
#' 
#' @importFrom graphics layout
#' @importFrom magrittr %>%  
#' 
#'
#'  
#' 
plotvisualization <-function(druguse) {
  p <- plotly::plot_ly(druguse, labels = ~druguse$crack.frequency, type = 'pie') %>%
    plotly::layout(title = 'Drug use by crack frequency', 
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  return(p) 
}


