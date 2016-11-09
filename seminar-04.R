# ==========================================================================

# DATA SCIENCE SEMINAR, FALL 2016, WEEK 04

# ==========================================================================

library("ggplot2")

# ==========================================================================

# set your working directory
# examples:
# Mac OSX = setwd("/Users/jdoe/Desktop")
# Windows, Personal = setwd("C:/Users/jdoe/Desktop")
# Windows, SLU Labs = setwd("E:/Users/jdoe/Desktop")

setwd("/Users/herb/Desktop")

# ==========================================================================

# file name - seminar-03-dataClean.R

# project name - data science seminar, fall 2016

# purpose - week 04 - building plots

# created - 09 Nov 2016

# updated - 09 Nov 2016

# author - Chris

# ==========================================================================

# full description - 

# updates - 

# ==========================================================================
# ==========================================================================

# add data to data frame

df <- mpg

# ==========================================================================

# UNIVARIATE PLOTS

# bar
ggplot(df, aes(class)) +
  geom_bar()

# area
ggplot(df, aes(hwy)) +
  geom_area(stat = "bin")

# histogram
ggplot(df, aes(hwy)) +
  geom_histogram(binwidth = 1)

# issues with layering
ggplot(df, aes(hwy)) +
  geom_histogram(binwidth = 1) +
  geom_area(stat = "bin")

# ==========================================================================

# BIVARITE PLOTS

# scatterplot
ggplot(mpg, aes(displ, hwy)) +
  geom_point()
  
# scatterplot with linear regression line
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(method = "lm")

# scatterplot with non-linear (LOESS) regression line
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(method = "loess")

# boxplot
ggplot(efficiency, aes(class,hwy)) +
  geom_boxplot()

# violin plot
ggplot(efficiency, aes(class,hwy)) +
  geom_violin(scale = "area")

# ==========================================================================

# AESTHETICS

# asthetic applied to plot
ggplot(mpg, aes(displ, hwy, color = class)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

# asthetic applied to layer
ggplot(mpg, aes(displ, hwy)) +      
  geom_point(aes(color = class)) +
  geom_smooth(method = "lm", se = TRUE)

# ==========================================================================

# COLOR

# setting color
ggplot(mpg, aes(displ, hwy)) +      
  geom_point(aes(color = class)) +
  geom_smooth(method = "lm", color = "red")

# mapping color
ggplot(mpg, aes(displ, hwy)) +      
  geom_point(aes(color = class)) +
  geom_smooth(method = "lm", aes(color = "red"))

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(aes(color = "loess"), method = "loess") +
  geom_smooth(aes(color = "lm"), method = "lm") 

# ==========================================================================

# WEIGHT

ggplot(mpg, aes(displ, hwy)) +      
  geom_point(aes(color = class), size = 5)

ggplot(mpg, aes(displ, hwy)) +      
  geom_point(aes(color = class), size = 2) +
  geom_smooth(method = "loess", aes(color = "loess"), size = 1.5)

# ==========================================================================

# STANDARD ERROR
ggplot(mpg, aes(displ, hwy)) +      
  geom_point(aes(color = class), size = 2) +
  geom_smooth(method = "loess", aes(color = "loess"), se = TRUE, size = 1.5)

ggplot(mpg, aes(displ, hwy)) +      
  geom_point(aes(color = class), size = 2) +
  geom_smooth(method = "loess", aes(color = "loess"), se = FALSE, size = 1.5)

# ==========================================================================

# CHANGE TITLE OF KEY

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(aes(colour = "loess"), method = "loess", se = FALSE) +
  geom_smooth(aes(colour = "lm"), method = "lm", se = FALSE) +
  labs(colour = "Method")

# ==========================================================================
# ==========================================================================

