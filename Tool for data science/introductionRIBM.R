# ggplot2, dplyr, stringr, caret

#Introduction
print("Hello World!")

x<-1
y<-2
z<-x+y
print(z)

x<-10
y<-20
result<-y-x
print(result)

#Librarys
library(datasets)
data(iris)
View(iris)
unique(iris$Species)

# Plots
data(mtcars)
head(mtcars, 5)

library(ggplot2)
ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") +
  labs(x="Displacement", y = "Miles per Gallon")

mtcars$vs <- as.factor(mtcars$vs)
ggplot(aes(x=vs, y=mpg, fill=vs),data=mtcars)+geom_boxplot(alpha=0.3)+
  theme(legend.position = "none")

ggplot(aes(x=wt),data=mtcars)+geom_histogram(binwidth=0.5)

# Advance plot
library(GGally)
ggpairs(iris, mapping=ggplot2::aes(colour=Species))
