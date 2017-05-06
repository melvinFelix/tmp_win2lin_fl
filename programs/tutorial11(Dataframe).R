#data frame: similar to matrix but can hold any type of data 

#first way to open file by browsing
read.csv(file.choose())

stats <- read.csv(file.choose())

is.data.frame(stats)
rm(stats)

?data.frame
#another way, get working directory
getwd()  #for checking the default directory

stats <- read.csv("DemographicData.csv")
is.data.frame(stats)

nrow(stats)  #for counting rows
ncol(stats)

#str ,shortform of structure
str(stats) #used for categorical type for alphabets

#basic stats,mean med mode,high ,min ,etc of numerical values column
summary(stats)


#details for first few rows
head(stats)
head(stats , 10) #for first 10 rows
tail(stats)    #for last 6 rows
tail(stats, 15) #for last 15 rows

stats [2,]  #for only second row
#to check whether its a data frame
is.data.frame(stats[2,])

#for only second column
stats[ , 2]

#for 4th row 2nd col
stats[4,2]

#for from 3rd col and 4th col and from row 6 and 35
stats[c(6,35),c(3,4)]

#for row 6 to 35
stats[6:35,c(3,4)]


#calling a particular col using dollar sign
stats$Income.Group
