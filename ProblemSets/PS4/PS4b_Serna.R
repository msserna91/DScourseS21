library(tidyverse)

library(sparklyr)

library(dplyr)

install.packages(c("nycflights13", "Lahman"))

iris_tbl <- copy_to(sc, iris)

flights_tbl <- copy_to(sc, nycflights13::flights, "flights")

batting_tbl <- copy_to(sc, Lahman::Batting, "batting")

sc <- spark_connect(master = "local")

df1 <- as_tibble(iris)

df <- copy_to(sc, df1)

class(df1)

class(df)

df %>% select(Sepal_Length,Species) %>% head %>% print

df %>% filter(Sepal_Length>5.5) %>% head %>% print

df %>% select(Sepal_Length,Species) %>% filter(Sepal_Length>5.5)  %>% head %>% print

df2 <- df %>% group_by(Species) %>% summarize(mean = mean(Sepal_Length), count = n()) %>% head %>% print

df2 %>% arrange(Species) %>% head %>% print

