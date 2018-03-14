# Load packages
require(readxl)

## READ IN DATA AND ORGANIZE ####
# Read in data
setwd("E:/DataSets/MarketData")
data = read_excel("data/spy.xlsx")

# View column names
names(data)

# Check for quantitative variables
str(data)

# No. of rows and columns
dim(data)

summary(data)

pairs(data)

# Correlatiions among predictors
cor(data)

attach(data)

# Volume fluctuated the most
plot(Volume)
