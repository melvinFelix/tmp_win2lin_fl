#LIST
#list in R is an organisational Data Structure(can contain matrices,dataframes etc)
#list can be collection of five vectors only, also..anything can be put under in a list

v <- c(10,20,30,40)
m <- matrix(1:10,nrow=2)
df <- mtcars

my.list <- list(v,m,df) #creating mylist as type list which contains three things
print(my.list)  #first vector will be printed then matrix then dataframe

my.list[[2]]  #for printing matrix only
my.list[[1]][3]  #for  printing third value of vector
my.list[[3]][7,]   #for printing seventh row of dataframe

#giving names to columns
mynamed.list <- list(vec=v,mat=m,dataframe=df)


my.list[[3]]["Duster 360",]       #calling by names
names(my.list)                    #it will give null value but
names(mynamed.list)               #it will give column names due to line no. 17


#giving names to my.list
names(my.list) <- c("vec","mat","dataframe")

#names are also used for fetching the names and also for assigning the names

names(mynamed.list)

names(my.list)

my.list[1]
typeof(my.list[[2]])  #it will be of type list
#try both single and double brackets for upper line
class(my.list[[2]])


#extracting columns of list
my.list$dataframe
my.list$vec
my.list$mat


#some more ways
mynamed.list[[1]][3]
mynamed.list$vec[3]
mynamed.list$mat[1,5]
#so using $ are easier

