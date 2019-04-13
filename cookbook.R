### Common codes for R

## Load dependencies ##
if(!require(pacman)) install.packages("pacman", repos = "http://cran.r-project.org")
pacman::p_load(dplyr, caret, ggplot2)

setwd('')


# Save graph
plot(g)
dev.copy(graph, 'xx.png')
dev.off() # You have to make sure of this, otherwise graphing state error occurs.
