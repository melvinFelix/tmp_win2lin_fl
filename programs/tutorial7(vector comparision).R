first <- c(10,20,30,40,50,60)
second <-seq(10,20)

#comparision of two vectors
first>second
#elements of first will get repeated after 60

#for saving the output
comparision <- first > second


#for extracting random values of comparision
comparision[3]
comparision[c(3,4,5,6,7)]  #for multiple values
comparision[3:7]      #another method using vector

first[first>30]   #all those values which are greater than 30 in first
first>30    #all values of first will  be compared with 30
test <- first>30



first[test]       #for seeing the values another way


third<-second[-5]  #for removing 5th element from vector second


is.integer(first)   #this type type of function always return logicals ..num denotes double
is.numeric(first)   #for checking data types
is.double(second)
is.integer(second)
is.numeric(second)
is.logical(test)





NA     #not available










