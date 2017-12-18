# author: Hans Hellén (hans.hellen@hellen.me) 
# date() "Mon Dec 18 2017" 
# This is data wrangling part of final assingment of the IODS course 
# at Uni Helsinki.

setwd("~/Github/IODS-final")

library(MASS)
library(dplyr)
library(tidyr)
library(ggplot2)

data("Boston")
str(Boston)

#The variable chas (Charles River dummy variable which is 1 if tract 
#bounds river and 0 otherwise) is integer and is removed from the analysis:

Boston <- dplyr::select(Boston, -chas)

# Note1: 
# rad (index of accessibility to radial highways) is integer 
# and others are numerical. 
# Note2: 
# The variable black gets smaller values as the proportion of black skin 
# colour increases.


# Now, as I have decided to focus on 25 % of the towns 
# that has the most highest crime rates, I remove other observations:  
crim4 <- Boston$crim
bins <- quantile(crim4)
bins
#Then I keep those observations where crim > 3.677083. 
boston_final <- subset(Boston, (crim > 3.677083))

summary(boston_final)

#Finished wrangling:
write.csv(boston_final, file = "data/boston_final.csv", row.names = FALSE, quote = TRUE, eol = "\n", fileEncoding = "UTF-8")
#reading test:
read_test <- read.csv("data/boston_final.csv", header = TRUE)
str(read_test)
str(boston_final)
head(read_test)
head(boston_final)
remove(read_test)