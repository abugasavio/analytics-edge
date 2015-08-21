# Author: Savio Abuga
setwd("/Users/savioabuga/Documents/AnalyticEdge/")
# getwd()

USDA = read.csv("Data/USDA.csv")

str(USDA)

summary(USDA)

USDA$Description[which.max(USDA$Sodium)]

names(USDA)

HighSodium = subset(USDA, Sodium>10000)

nrow(HighSodium)

HighSodium$Description


USDA$Sodium[match("CAVIAR", USDA$Description)]

summary(USDA$Sodium)

sd(USDA$Sodium, na.rm = TRUE)

# PLOTS IN R

plot(USDA$Protein, USDA$TotalFat, xlab = "Protein", ylab = "Fat", main="Protein vs Fat", col= "red")

hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main="Vitamin C", xlim = c(0, 100), breaks=2000)

boxplot(USDA$Sugar, main = "Boxplot of sugar levels", ylab = "Sugar (g)")

# ADDING VARIABLES
USDA$HighSodium = as.numeric(USDA$Sodium > mean(USDA$Sodium, na.rm = TRUE))

USDA$HighProtein = as.numeric(USDA$Protein > mean(USDA$Protein, na.rm = TRUE))

USDA$HighFat = as.numeric(USDA$TotalFat > mean(USDA$TotalFat, na.rm = TRUE))

USDA$HighCarbs = as.numeric(USDA$Carbohydrate > mean(USDA$Carbohydrate, na.rm = TRUE))

str(USDA)

# SUMMARY TABLES
table(USDA$HighSodium)

table(USDA$HighSodium, USDA$HighFat)

tapply(USDA$Iron, USDA$HighProtein, mean, na.rm = TRUE)

tapply(USDA$VitaminC, USDA$HighCarbs, max, na.rm = TRUE)
