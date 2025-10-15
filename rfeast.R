
# Shortcuts and autocomplete ----------------------------------------------
this_is_a_really_long_name <- 2.5 # Make Assignment
this_is_a_really_long_name # Inspect variable

# R functions, help pages -------------------------------------------------
seq(1, 10) # Calling sequence function
?seq # Learning sequence function

# Help exercise -----------------------------------------------------------
?st_read() # Function help search
??install # Example for when you only sort of know function name
date() # Function example

# Praise package practice -------------------------------------------------
library(praise)

praise() # Load in random praise
objects() # List of objects
ls() # List of objects
rm(not_cancelled) # Removed object not_cancelled
rm(list = ls()) # Remove all objects

# Creating variables
cat("\014") # Clear workspace
exp_sequence <- seq(from = 1, to = 20) # Create variable that is sequence from 1 to 20
mean_of_exp_sequence <- mean(exp_sequence) # Create variable that is the mean of 1 to 20
print(mean_of_exp_sequence) # Print variable


# ggplot2 practice --------------------------------------------------------
library(tidyverse)
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.4     ✔ readr     2.1.5
#> ✔ forcats   1.0.0     ✔ stringr   1.5.1
#> ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.4     ✔ tidyr     1.3.1
#> ✔ purrr     1.0.4     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

# Creating a ggplot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# Graphing
ggplot(data = mtcars) + 
  geom_line(mapping = aes(x = hp, y = mpg))

library(dplyr)
library(nycflights13)

# Masked not cancelled flights
not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))

# Grouping by date
not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay))