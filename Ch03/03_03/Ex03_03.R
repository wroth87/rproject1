# Up and Running with R
# Ex03_03
# Creating box plots for quantitative variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking site
# and an estimate of how many times they log in
# per week.

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("C:/Users/wade/OneDrive/Course work/Microsoft Data Science/lynda - Learning R/rproject1/Ch03/03_03/social_network.csv", header = T)

# Make boxplots of Age and Times using the defaults
boxplot(sn$Age)

# Add title, colors, etc.
boxplot(sn$Age,
        col = "beige",
        notch = T,
        horizontal = T,
        main = "Ages of Respondents\nSocial Networking Survey of 202 Users",
        xlab = "Age of Respondents")