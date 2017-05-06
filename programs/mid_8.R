ggplot(mtcars, aes(x=cyl,y=mpg))+geom_point()
#this plot is showing for cylinder 4,6 and 8 ,so its no use of 5 and 7
library(ggplot2)
#making cyl as factor for removing 5 and 7
ggplot(mtcars, aes(x=factor(cyl),y=mpg))+geom_point()


#mapping shapes nd colors
ggplot (mtcars,aes(x=wt,y=mpg))+
  geom_point(aes(shape=factor(cyl),color=factor(cyl)),size=4)

#setting by color name
ggplot (mtcars,aes(x=wt,y=mpg))+
  geom_point(aes(shape=factor(cyl)),color="Orange",size=4)

#setting by color hexcode https:// www.color-hex.com
ggplot (mtcars,aes(x=wt,y=mpg))+
  geom_point(aes(shape=factor(cyl)),color="#5814df",size=4)

#mapping color to continuous variable
ggplot (mtcars,aes(x=wt,y=mpg))+
  geom_point(aes(color=hp),size=4)   #blues are not clear
             
             
#mapping color to continuous variable with own  low and high color
ggplot (mtcars,aes(x=wt,y=mpg))+
  geom_point(aes(color=hp),size=4)+
  scale_color_gradient(low="blue",high="red")

