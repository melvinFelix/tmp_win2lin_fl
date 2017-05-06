fin <- read.csv("Future500.csv")
fin <- read.csv("Future500.csv",na.strings = c("")) #for replacing every blank record with NA 
#for data set preparation so that operations can be applied

head(fin)
tail(fin)
str(fin)

#converting ID into factor
fin$ID <- factor(fin$ID)
fin$Inception <-factor(fin$Inception)
str(fin)
summary(fin)

#using function gsub and sub(used for replacing one parameter with another)
#modifying columns Expenses and revenue and growth
fin$Expenses <- gsub("Dollars","",fin$Expenses)
fin$Expenses <- gsub(",","",fin$Expenses)

fin$Revenue <- gsub("\\$","",fin$Revenue)#using backslash coz $ is an special symbol
fin$Revenue <- gsub(",","",fin$Revenue)

fin$Growth <- gsub("%","",fin$Growth)

head(fin)
str(fin)

#now Expenses , growth and revenue column are of character type so we need to convert to numeric type to perform operations
 fin$Expenses <- as.numeric(fin$Expenses)
 fin$Revenue <- as.numeric(fin$Revenue)
 fin$Growth <- as.numeric(fin$Growth)
str(fin) #for checking datatype

#for taking backup
fin.backup <- fin

#for accessing first 24 records
head(fin,24)
head(fin)
str(fin)
head(fin,24)

#locating the missing data by taking all records which have complete values
complete.cases(fin)

fin[!complete.cases(fin),] #for checking records where we have NA values
fin[fin$Profit == 8553827,]
