#' Data Visualization using a pie chart with the plotly function
#' 
#' plotvisualization
#' 
#' The function needs the argument druguse
#' 
#' 
#' @export
#' 
#' 
#' 
#' 
#'  
#' 
plotvisualization <- function(druguse) {

  
  p <- plotly::plot_ly(druguse, labels = ~druguse$crack.frequency, type = 'pie') %>%
    layout(title = "drug-use-by-age",
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  p
}



