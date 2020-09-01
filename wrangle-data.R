library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total /population * 10^5 )
save(murders, file = "rda/murders.rda")   # La funcion save() guarda objetos en RDA (R data) files