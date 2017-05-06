stats <- read.csv(("DemographicData.csv"))

#for backup
backup.stats <- stats 


str(stats)
summary(stats)
head(stats)

#adding new columns

stats$NewCol <- stats$Internet.users * stats$Birth.rate


stats$temp <- 1:5
stats


#for replacing
stats$NewCol <- 1:195


#to delete a column
stats$NewCol <- NULL
stats$temp <- NULL


#to delete a row
stats <- stats[-5,]



#creating data frames
c1 <- 1:10
c2 <- letters[1:10]
d1 <- data.frame (c1,c2)
print(d1)



#renaming columns
colnames (d1) <- c('One','Two')


#creating dataframe from two vectors
d1 <- data.frame(First=c1,Second=c2)

#renaming and deleting
colnames (d1) <- c('One','Two')
#passing selected column
colnames(d1)[2]<-('Second')

rm(d1)


Ascending <- order(d1$Second)
d2 <- d1[Ascending,]

Descending <- order(-d1$c1)
d2 <- d1[Descending,]
