install.packages("dplyr")
install.packages('nycflights13')

library(dplyr)
library(nycflights13)
#dplyr is a manipulation package which is extencisely used and if you have to 
head(flights)
summary(flights)
Flights <- flights

#filtering the data similar to subsetting

Extract1 <- Flights[Flights$month == 3 & Flights$day == 20 & Flights$carrier == "UA" ,]

rm(Extract1)

Extract1 <- filter(Flights,months == 3, day == 20, carrier == "UA")


#slicing the data i,e. extracting specified rows only 

Flights[c(9,12,39,46),]

ET2 <- slice(Flights, c(1:3, 5:8, 78))
typeof(ET2)

#selecting the data extracting specified columns only

Extract5 <- select(Flights, 1,2,3,6,8)

# Arranging the data in some order by columns 

Extract3 <- arrange(Flights, year, desc(month), day, arr_time)

Extract4 <- arrange(Flights, year, desc(month), day, desc(arr_time))

Extract6 <- arrange(Flights, year, desc(month), desc(day), desc(hour), desc(minute), desc(dep_time))

# Renaming Columns in a dataset
#here carrier is the new name and airline is the 
#previous name
Flights <- rename(Flights, airline = carrier, destination = dest)
head(Flights)

#Selecting distinct and unique values in the column
distinct(select(Flights, airline))

# Create new columns in the dataset
library(dplyr)

temp1 <- mutate(Flights, totalminutes = (hour*60) + minute)
temp2 <- transmute(Flights, totalminutes = (hour*60) + minute)
#transmute generates the new column and stores it seperately

#Finding the mean value of airtime
summarise(Flights, AverageAirTime = mean(air_time, na.rm = T))
#na.rm ignores the null values and they are not counted at all
#the output of the above function creates a tribble which is embedder in the data set
#nothing is stored anywhere

#randomly select data 
temp3 <- sample_n(Flights, 10)
temp4 <- sample_frac(Flights, .001)

#pipe operator
df <- mtcars

extract1 <- arrange(sample_n(filter(df,mpg > 20),5),desc(mpg))

#Same task with multiplt assignments
f <- filter(df,mpg > 20)
s <- sample_n(f, 5)
extract2 <- arrange(s,desc(mpg))
print(extract2)

#Same task using pipe operator

extract3 <- df %>% filter(mpg > 20) %>% sample_n(5)

#gather() collapsing multiple columns into key pair value

yr <- c(2008, 2009, 2010, 2008, 2009, 2010, 2008, 2009, 2010)
q1 <- runif(9, min = 0, max = 100)
q2 <- runif(9, min = 0, max = 100)
q3 <- runif(9, min = 0, max = 100)
q4 <- runif(9, min = 0, max = 100)

my_df <- data.frame(year = yr, Qtr1 = q1, Qtr2 = q2, Qtr3 = q3, Qtr4 = q4)

#gather() collects all the columns and has collected into Revenue
#and the individual column values are at Quarter
New_df <- gather(my_df, Quarter, Revenue, Qtr1:Qtr4)
print(New_df)
