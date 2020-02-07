plotvisualization <- function() {
  
  require(devtools)
  require(tidyverse)
  require(plotly)
  require(ggplot2)
  names(druguse)
  class(druguse)
  p <- plotly::plot_ly(druguse, labels = ~druguse$crack.frequency, type = 'pie') %>%
    layout(title = "drug-use-by-age",
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  p
}