library(tidyverse)
library(rvest)
library(data.table)
library(Quandl)

url <- "https://en.wikipedia.org/wiki/FIFA_World_Rankings"
rankings <- read_html(url)


rankingsdf <- read_html(url) %>%
              html_nodes("table.wikitable:nth-child(67)") %>%
              '[['(1)%>%
              html_table(fill = TRUE)

              
mydata = Quandl('ECONOMIST/BIGMAC_MEX', start_date='2020-01-31', end_date='2021-01-31')

mydata1 = Quandl('ECONOMIST/BIGMAC_IND', start_date='2020-01-31', end_date='2021-01-31')
              