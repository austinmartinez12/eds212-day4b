library("skimr")
library(palmerpenguins)
library(GGally)
library(tidyverse)

#look at data
view(penguins)

#collum names
names(penguins)

# check dimensions of data
summary(penguins)

#get a summary with skimmer
skimr::skim(penguins)

#print first 2 rows
head(penguins)

#print last 6 rows
tail(penguins)

#make a pair plot
GGally::ggpairs(penguins)

#make a pair plot with sleect number of columns by species
GGally::ggpairs(penguins,
                columns = 3:6,
                ggplot2::aes(colour= species))

#make a histogram of penguin flipper length
ggplot(data = penguins, aes(x= flipper_length_mm, fill = species)) + geom_histogram()


