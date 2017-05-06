install.packages("tidyr")
library(dplyr)
df <- mtcars
#nested
extract1 <- arrange(sample_n(filter(df,mpg>20),5),desc(mpg))

#same with  multiple codes
f <- filter(df,mpg>20)
s <- sample_n(f,5)
extract2 <- arrange(s,desc(mpg))
print(extract2)


#Pipe operator which is used in nested operations
#Data %>% op1 %>% op2 %>% op3

extract3 <- df %>% filter(mpg>20)%>% sample_n(5) %>% arrange(desc(mpg))


library(tidyr)

#gather() collapsing multiple columns into key pair value

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(2008,2009,2010,2008,2009,2010,2008,2009,2010)
q1 <- runif(9, min=0, max=100)#random values
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)
#creating dataframe
my_df <- data.frame(Company=comp,year=yr,qtr1=q1,qtr2=q2,qtr3=q3,qtr4=q4)

#now data is much scattered as all quarters are scattered and dataframe is wide.
#contents of qtrs is revenue which is not mentioned anywhere.
#we will gather the info under revenue,making it easy to read

New_df <-gather(my_df,quarter,Revenue,qtr1:qtr4)

New_df <-gather(my_df,quarter,Revenue,qtr1:qtr3)
#here we will get qtr4 separately

New_df <- gather(My_df,Quarter,Revenue,Qtr1:Qtr4)

Stocks <- data.frame(MyDate=as.Date('2017-03-18')+0:9,
                     x=rnorm(10,0,1),
                     y=rnorm(10,0,2),
                     z=rnorm(10,0,4))
print(Stocks)

Stock1 <- gather(Stocks,Stock,Price,x,y,z)#also can write x:z

#reverse of gather :-
#spread() is complement of gather()
Original_df <- spread(New_df,Quarter,Revenue)
Original_Stocks <- spread(Stock1,Stock,Price)


#splitting each column into many
Sample1_df <- data.frame(Mycol=c('x.a','y.b','z.c'))

Separated1_df <- separate(Sample1_df,Mycol,c("xyz","abc"))

Sample2_df<- data.frame(Mycol=c('x:a','y:b','z:c'))
Separated2_df <- separate(Sample2_df,col=Mycol,into=c("xyz","abc"),sep=":")

#unite function
unite(Separated1_df,joined.col1,xyz,abc,sep=".")
unite(Separated2_df,joined.col2,xyz,abc,sep="///")
