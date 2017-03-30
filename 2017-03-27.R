install.packages('tidyr')

library('tidyr')

Stocks <- data.frame(Mydate = as.Date('2017-03-18') + 0:9,
                     x = rnorm(10,0,1),
                     y = rnorm(10,0,2),
                     z = rnorm(10,0,4))

print(Stocks)

Stocks_gathered <- gather(Stocks, Stocks, Profit, x, y, z)

#spread is the compliment of gather

Orig_stocks <- spread(Stocks_gathered, Stocks, Profit)
#spread must be used with caution
test <- spread(Stocks_gathered, Profit, Stocks)

Sample_df2 <- data.frame(myCol = c('x:a', 'y:b', 'z:c'))
print(Sample_df)

#seperate
Seperated_df <- separate(Sample_df2, col = MyCol, into = c("xyz","abc"), sep = ":")


#uniting two seperated columns 
#unite()
