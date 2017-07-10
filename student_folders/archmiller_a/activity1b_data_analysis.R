# Here we will do regression analysis of RIKZ data

# Preamble - load libraries and clear environment
remove(list=ls())

## Step 1. Load merged/processed data
load("data/processed_data/rikz.Rdata")
head(rikz.data)

## Step 2. Linear regression
lm.out <- lm(Richness~NAP, data = rikz.data)
summary(lm.out)

## Step 3. Plot results
plot(rikz.data$NAP, rikz.data$Richness)
abline(lm.out)
