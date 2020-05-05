# test script

# setup -------------------------------------------------------------------
library(tidyverse)

# test --------------------------------------------------------------------
mtcars %>%
  group_by(cyl) %>%
  summarise(mean(hp))

mtcars %>%
  group_by(gear) %>%
  summarise(mean(mpg))
