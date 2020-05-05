# setup -------------------------------------------------------------------
library(lubridate)
library(tidyverse)

# test --------------------------------------------------------------------
mtcars %>%
  group_by(cyl) %>%
  summarise(mean(hp))

mtcars %>%
  group_by(gear) %>%
  summarise(mean(mpg))


# develop -----------------------------------------------------------------
dat <- tribble(
  ~name,       ~geburtsdatum,
  "philipp",   "1986-01-02",
  "christoph", "1987-01-05"
)

dat %>%
  mutate(alter = interval(geburtsdatum, today()) / years(1)) %>%
  arrange(alter)
