# Up and Running with R
# Ex06_02
# Computing a regression

# Load data file about Google searches by state
google <- read.csv("C:/Users/wade/OneDrive/Course work/Microsoft Data Science/lynda - Learning R/rproject1/Ch06/06_02/google_correlate.csv", header = T)
names(google)

reg1 <- lm(data_viz ~ 
           degree + stats_ed + facebook + nba + has_nba + region,
           data = google)
summary(reg1)