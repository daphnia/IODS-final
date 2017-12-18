# author: Hans Hellén (hans.hellen@hellen.me) 
# date() "Mon Dec 18 2017" 
# This is data wrangling part of final assingment of the IODS course 
# at Uni Helsinki.

setwd("~/Github/IODS-final")

#I will use Boston dataset for R package called MASS.

library(MASS)
library(dplyr)
library(tidyr)
library(ggplot2)



Boston_final <- data("Boston")
str(Boston_final)

######IMPORTANT: Make clear comments if changes are made!




#Finished wrangling:
write.csv(Boston_final, file = "data/Boston.csv", row.names = FALSE, quote = TRUE, eol = "\n", fileEncoding = "UTF-8")
#reading test:
read_test <- read.csv("data/Boston.csv", header = TRUE)
str(read_test)
str(alc)
head(read_test)
head(alc)
remove(read_test)