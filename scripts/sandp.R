# Load packages
require(xlsx)

## READ IN DATA AND ORGANIZE ####
# Read in data
setwd("E:/DataSets/MarketData")
sp <- read.xlsx("data/SPY.xlsx", 1)
# View column names
names(sp)

# Check for quantitative variables
str(sp)

# No. of rows and columns
dim(sp)

summary(sp)

pairs(sp[,-8])

# Correlatiions among predictors
cor(sp[,-8])

attach(sp)

# Volume fluctuated the most
plot(Volume, col = "magenta")
