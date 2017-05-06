#install.packages("dplyr")
#install.packages("nycflights13")

library(dplyr)
library(nycflights13)

head(flights)
summary(flights)
Flights <- flights
ncol(flights)
nrow(flights)

#filtering the data similarities to subnetting

 Extract1 <- filter(Flights,month==3,day==20,carrier=="UA")
 
 #or
 
 E <- Flights[Flights$month==3 & Flights$day==20 & Flights$carrier=="UA", ]
 
 
 #Slicing the data(selecting particular data either vertically or horizontally)
 #using slice(part of deplyr)
  Extract2 <-slice(Flights,c(1:3,5:9,78))
 
 #earlier way was
 ET2 <- Flights[c(9,32,28,68), ]
 
 
 #Arranging the data in same order by columns
 Extract3 <- arrange(Flights,year,desc(month),day,arr_time)
 
 Extract4 <- arrange(Flights,year,desc(month),day,desc(arr_time))

 Extract7 <- arrange(Flights,year,desc(month),desc(day),desc(dep_time))
 
 Extract9 <- arrange(Flights,dep_delay) #to check max time 
 #selecting the data i.e extracting specified columns only
 Extract5 <- select(Flights, 1,2,3,6,8)
 
 Extract <- select(Flights,contains("delay"))
 #earlier way was
 ET5 <- Flights[,c(1,2,3,6,8)]
 ET6 <- Flights[c(1,2,3,6,8)]
 
 #Reanming columns
 Flights <- rename(Flights,airline=carrier,destination=dest)
 str(Flights)
 
 #selecting unique or distinct values in column
distinct(select(Flights,airline))
#distinct is used for checking the distinct records or unique records,dont count repeated values 


#create new columns in dataset
Temp1 <- mutate(Flights,totalminutes=(hour*60)+minute) 

Temp2 <- transmute(Flights,totalminutes=(hour*60)+minute)
#mutate will create the new column and add with the dataframe and transmute creates column and create different dataframe

#calculating mean 
mean(Flights$air_time,na.rm=1)
summarise(Flights, AverageAirTime=mean(air_time,na.rm=1))
summarise(Flights, TotalDepartureDelayTime= sum(dep_delay,na.rm=1))
#tibble a 2 d structure for better viewing experience in console
#converting a dataframe into tibble
tbl_df(Flights)

#randomly selecting records
Temp3 <- sample_n(Flights,10)
Temp_4 <- sample_frac(Flights,0.01)
#sample_fractakes here 0.01% of data