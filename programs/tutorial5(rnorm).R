s<-rnorm(500)    #to create random 50 numbers
N <- 10000;
counter <- 0
for(i in rnorm(N)){
  if(i>=-1&&i<=1){
    counter<-counter+1
  }
}
print(counter)
percent <- counter/N*100;    #to calculate the percent
print(percent)   

?rnorm   #another way to take help


counter<-0
for(i in rnorm(s)){
  if(i>=-0.1&&i<=0.5){
    counter<-counter+1
  }
}
counter
percent<-counter*100/500
percent
