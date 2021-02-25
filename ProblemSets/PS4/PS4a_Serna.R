library(jsonlite)

mylist <- fromJSON("dates.json")

library(tidyverse)

mydf <- bind_rows(mylist$result[-1])

class(mydf)

class(mydf$date)

head(mydf, 4)
