# Up and Running with R
# Ex06_01
# Calculating correlations

# Load data file about Google searches by state
google <- read.csv("C:/Users/wade/OneDrive/Course work/Microsoft Data Science/lynda - Learning R/rproject1/Ch06/06_01/google_correlate.csv", header = T)
names(google)

# Create data frame with only quantitative variables
g.quant <- google[c(3, 7, 4, 5)]

# Correlation matrix for data frame
cor(g.quant)

# Can test one pair of variables at a time
# Gives r, hypothesis test, and confidence interval
cor.test(g.quant$data_viz, g.quant$degree)

# Install "Hmisc" package to get p-values for matrix
install.packages("Hmisc")
library("Hmisc")

# Need to coerce g.quant from data frame to matrix
# to get correlation matrix and p-values
rcorr(as.matrix(g.quant))