# Introduction to R in MITx: 15.071x The Analytics Edge Class
# Author: Savio Abuga
setwd("/Users/savioabuga/Documents/AnalyticEdge/")

# Working with Vectors

Country <- c("Brazil", "China", "India", "Switzerland", "USA")

LifeExpectancy <- c(74, 76, 65, 83, 79)

length(Country)

length(LifeExpectancy)

# Creating a Sequence
seq(0, 100, 2)

# Working with DataFrames
CountryData <- data.frame(Country, LifeExpectancy)

CountryData$Population <- c(199000, 1390000, 1240000, 7997, 318000)

# Using rbind

Country <- c("Austraria", "Greece")
LifeExpectancy <- c(82, 81)
Population <- c(23050, 11125)

NewCountryData <- data.frame(Country, LifeExpectancy, Population)

AllCountryData <- rbind(CountryData, NewCountryData)

# Reading DataFiles

WHO <- read.csv("Data/WHO.csv")

str(WHO)

summary(WHO)

# Subsetting

WHO_Europe = subset(WHO, Region == "Europe")

write.csv(WHO_Europe, "WHO_Europe.csv")

ls()

rm(WHO_Europe)

ls()

# DATA ANALYSIS - SUMMARY STATISTICS AND SCATTERPLOTS

Under15

WHO$Under15

mean(WHO$Under15)

sd(WHO$Under15)

summary(WHO$Under15)

which.min(WHO$Under15)

WHO$Country[86]

which.max(WHO$Under15)

WHO$Country[124]

plot(WHO$GNI, WHO$FertilityRate)

outliers = subset(WHO, GNI > 10000 & FertilityRate>2.5)

nrow(outliers)

outliers[c("Country", "GNI", "FertilityRate")]

# Quiz

# What is the mean value of the "Over60" variable
mean(WHO$Over60)

# Which country has the smallest percentage of the population over 60?
WHO$Country[which.min(WHO$Over60)]

# Which country has the largest literacy rate?
WHO$Country[which.max(WHO$LiteracyRate)]

#VIDEO 6: DATA ANALYSIS - PLOTS AND SUMMARY TABLES

hist(WHO$CellularSubscribers)

boxplot(WHO$LifeExpectancy ~ WHO$Region)

boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab="", ylab="Life Expectancy", 
        main="Life Expectancy of Countries by Region")

table(WHO$Region)

tapply(WHO$Over60, WHO$Region, mean)

tapply(WHO$LiteracyRate, WHO$Region, mean, na.rm=TRUE)

# QUIZ
# Use the tapply function to find the average child mortality rate of countries
# in each region.

# Which region has the lowest average child mortality rate across all 
# countries in that region?

tapply(WHO$ChildMortality, WHO$Region, mean)
