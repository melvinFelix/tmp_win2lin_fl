# Q1

cars <- data.frame(mtcars)
library('dplyr')
result <- filter(cars, mpg > 20, cyl == 6)
print(result)

result2 <- mutate(cars, performance = hp/wt)
print(result2)

result3 <- cars %>% filter(cyl == 6) %>% select(hp) %>% as.matrix %>% mean
print(result3)

