1:10     #for creating array

#creating vectors
v1<- 3:33     #it will show integers in global environment  as : are used  
v2<- c(2,4,6,8,10)   #c here means combine,for double
v3<- c(2L,4L,6L)    #for integers
v2[3]              #for printing 3rd value

v4<- seq(4, 80)     #for sequence
print(v4)            #for printing


v5<- seq(1,100, 3)    #for gap of 3
print(v5)
seq(0,1,length.out=11)   #make 11 equal partitions between 0 and 1

#vector of characters
v6<- c("a","b","c","d","e")
v6[-3]    #access the vector without -3 means c
v6[3]     #only 3rd element will be printed
v7<- v6[-3]   #giving values to vector v7



v8<- c("a","b","c","d","e",98)  #R changes 98 into character directly

#to repeat 3 fifty times
v9<- rep(3,50)
v9


#for loop        first method,not vectorised form of loop,not preferred
v10<- 1:50
for(i in 1:50){
  print(v10[i])
}

v11<-seq(10,100,10)
for(i in 1:10){
  print(v11[i])
}


for(i in v11){    #second method,vectorised form of for loop,preffered in R
  print(i)
}



#BASIC ARITHMETIC OPERATIONS
a<- 1:10
b<- seq(100,1000, 100)
c<- a+b   
c

#if vector a has 5 elements then the elements will be added twice
#if vector is not having elements of factor of b we will get warning


a<b    #to check,returns true or false
b=a
