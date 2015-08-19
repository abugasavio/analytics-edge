# Introduction to R in MITx: 15.071x The Analytics Edge Class
# Author: Savio Abuga

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


