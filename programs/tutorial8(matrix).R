#matrix


my.vec <- 1:20
#function for changing vector into matrix
#syntax- matrix(vector name, row, column)
my.mat <- matrix(my.vec, 4 , 5)   #matrix is a function
print(my.mat)
#elements are filled column wise ,default for function matrix

#for row wise

my.mat <- matrix(my.vec, 4 , 5 , byrow=T)  #T here is TRUE
print(my.mat)
my.mat[3,3]  #for printing particular value

my.mat[,2]   #for 2nd column
my.mat[3,]   #for 3rd row


is.matrix(my.mat)
is.integer(my.mat)
is.integer(my.mat[,2])

#for extracting
extract.mat <- my.mat[1:3,2:3] #for row 1 to 3 and col 2 and 3
print(extract.mat)

extract.mat <- my.mat[,c(1,4)] #for extracting column 1 and 4
print(extract.mat)

extract.mat <- my.mat[c(1,3),c(2,5)]  #subsetting a matrix, print 2nd nd 5th element of 1st and 3rd row


extract.mat <- my.mat[3,]   #output is 1 row so output will be of vector type

extract.mat <- my.mat[3,,drop=F]  #for keeping the output in matrix

extract.mat <- my.mat[2, 3,drop=F] #for keeping a single value in matrix

#for making matrix using vectors
v1 <- (1:5)
v2 <- (6:10)
v3 <- (11:15)
v4 <- (16:20)

#now for making matrix we use function rbind(shortform of row binding)
mat1 <- rbind(v1,v2,v3,v4) 
print(mat1)
#we can change the order of v1 v2 v3 and v4 in rbind function acc to our need

mat2 <- cbind(v1,v2,v3,v4)
print(mat2)

