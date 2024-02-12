
## Generate mock datasets ##

## Packages ----

library(tidyverse)

## Generate tidyr data ----

forest_data <- tibble(forest_1 = rnorm(100, 20, 5),
                      forest_2 = rnorm(100, 22, 6),
                      forest_3 = rnorm(100, 21, 8),
                      forest_4 = rnorm(100, 16, 6),
                      forest_5 = rnorm(100, 27, 5))

save(forest_data, file = "data/forest_data.RData")

## Generate dplyr & purr data ----

lake_data <- tibble(lake = rep(c("A", "B", "C"), each = 100),
                    date = rep(seq(1,100,1), 3),
                    nitrogen = c(rgamma(100, 2, 5), rgamma(100, 0.1, 0.5), rgamma(100, 5, 12)),
                    chlorine = c(rnorm(100, 10, 8), rnorm(100, 20, 2), rnorm(100, 12, 1)))

save(lake_data, file = 'data/lake_data.RData')

