# Author: Savio Abuga
# Analysing the Chicago Crime Data Set

setwd("/Users/savioabuga/Documents/AnalyticEdge/")

# Reading the dataset
mvt <- read.csv("Data/mvtWeek1.csv")

# Describing the dataset
nrow(mvt)
names(mvt)
summary(mvt)
str(mvt)


max(mvt$ID)

min(mvt$Beat)

summary(mvt$Arrest)

nrow(mvt[mvt$LocationDescription == 'ALLEY',])


# DATES IN R
mvt$Date

# Convert the data
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
summary(DateConvert)
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert

names(mvt)

mvt$Month

r = tapply(mvt$ID, mvt$Month, summary, na.rm = TRUE)

