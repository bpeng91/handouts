## Tidy data concept

response <- read.csv(text = "
trial, drug_A, drug_B, placebo 
1,     0.22,   0.58,   0.31 
2,     0.12,   0.98,   0.47
3,     0.42,   0.19,   0.40")

##learn gather function: Reshaping multiple columns in category/value pairs: Gather columns into key-value pairs

library(tidyr)
tidy_response <- gather(response,
  key='treatment',
  value='response')
tidy_response


counts <- read.csv(text = "
site, species, n
1,    lynx,    2
1,    hare,    341
2,    lynx,    7
2,    hare,    42
3,    hare,    289
")

#learn spread function:spread a key-value pair across multiple columns
wide_counts <- spread(counts, key=species, value=n)
wide_counts


## Exercise 1: use gather function, make it into one comlumn to see all six values

one_comlumn <- gather(wide_counts, key=species, value=n)
one_comlumn

## Read comma-separated-value (CSV) files

animals <- read.csv('C:\\Users\\Binbin Peng\\Desktop\\handouts-master\\data\\animals.csv')

animals <- read.csv(
  'C:\\Users\\Binbin Peng\\Desktop\\handouts-master\\data\\animals.csv', na.strings = c("") )

## Subsetting and sorting

library(dplyr)
# filter function: keep rows that satifying your conditions
animals_1990_winter <- filter(animals, year==1990, month %in% 1:3) #filter to the first 3 monts of 1990
animals_1990_winter

#learn select function: keep columns with matching names
animals_1990_winter <- select(animals, year, month) #select columns with year and month

## Exercise 2


## Chainning with pipes

animals_100_winter <- animals %>%
    filter(year==1990,  month %in% 1:3) %>% # filter to the first 3 months of 1990
    select(-year) # select all columns but year

## Grouping and aggregation

counts_1990_winter <- animals_1990_winter %>%
    group_by(...)

counts_1990_winter <- animals_1990_winter %>%
  group_by(...)

weight_1990_winter <- animals_1990_winter %>%
  group_by(species_id) %>%
  ...

## Exercise 3

...

## Transformation of variables

prop_1990_winter <- counts_1990_winter %>%
    mutate(...)

## Exercise 4

...
