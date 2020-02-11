library(readr)
library(tidyverse)
library(randomForest)

var <- read_table2("Harvard_CAS_2001/Harvard_CAS_2001/DS0001/04291-0001-Record_layout.txt",
                   col_names = FALSE, skip = 9) %>%
  rename(var_name = X1, beg = X2, end = X3, type = X4) %>%
  select(-X5) %>%
  
  mutate(len = end-beg+1)

d <- read_fwf("Harvard_CAS_2001/Harvard_CAS_2001/DS0001/04291-0001-Data.txt",
         fwf_widths(widths = var$len, col_names = var$var_name),
         na = c(" ", "."),
         guess_max = 1e4) %>%
  select_if(function(x){mean(is.na(x)) < 0.1})

d %>% map(is.na) %>% map_dbl(mean) %>% sort


d_gpa <- d %>%
  rename(GPA = F5) %>%
  filter(GPA %>% between(1, 9)) %>% # pdf p.32 
  drop_na()

rf <- randomForest(GPA ~ ., data = d_gpa,
                   ntrees = 10)
