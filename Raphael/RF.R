
library(randomForest)

# quick random forest for GPA variable

d_gpa <- d %>%
  rename(GPA = F5) %>%
  filter(GPA %>% between(1, 9)) %>% # codebook p.32 
  na.omit() %>%
  select(-GRADE)

rf <- randomForest(GPA ~ .,
                   data = d_gpa,
                   ntree = 20,
                   do.trace = 2,
                   importance = TRUE)

importance(rf) %>%
  as_tibble(rownames = "id") %>%
  arrange(-`%IncMSE`)
