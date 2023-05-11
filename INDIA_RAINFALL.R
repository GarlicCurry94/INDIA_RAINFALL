getwd()
setwd("~/R PROJ/rprojext")
getwd()

ls()

install.packages("learningr")
install.packages("gapminder")
install.packages("rmarkdown")
install.packages("tinytex")
install.packages("ISLR2")

library(readxl)
library(tidyverse)
library(janitor)
library(palmerpenguins)
library(learningr)
library(gapminder)
library(ggplot2)
library(rmarkdown)
library(tinytex)
library(dplyr)
library(ISLR2)

data()

india<-read.csv("india.csv")

india<-read.csv("india.csv")
View(india)
glimpse(india)

mean(india[,3])
hist(india[,3])
cor.test(india[,3],india[,4])

india %>%
  filter (STATE_UT_NAME == "PUNJAB") %>%
  ggplot(aes(x = DISTRICT,
             y = ANNUAL))+
  geom_point()+
  coord_flip()
ggsave("punjab.png")