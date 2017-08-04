# Up and Running with R
# Ex05_03
# Creating scatterplot matrices

# Load data file about Google searches by state
google <- read.csv("C:/Users/wade/OneDrive/Course work/Microsoft Data Science/lynda - Learning R/rproject1/Ch05/05_03/google_correlate.csv", header = T)
names(google)

# Basic Scatterplot Matrix
pairs(~data_viz + degree + facebook + nba,
      data = google, 
      pch = 20,
      main = "Simple Scatterplot Matrix")

# Use "Pairs Plot" from "psych" package
install.packages("psych")
library("psych")
pairs.panels(google[c(3, 7, 4, 5)], gap = 0)