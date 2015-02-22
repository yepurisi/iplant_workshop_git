# ggplot learning script
# Sidhardha Yepuri sidhardha@email.arizona.edu
# February 22, 2015

install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

head(iris)

myplot <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width))
summary(myplot)

ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
myplot <- myplot + geom_point()

ggplot(data=iris, aes(Sepal.Length, Sepal.Width, color=Species)) + geom_point(size=4)
ggplot(data=iris, aes(Sepal.Length, Sepal.Width, color=Species)) + 
   geom_point(aes(shape=Species), size=4)

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000),]
dim(d2)

diamondPlot <- ggplot(data=d2, aes(carat,price, color=color)) + geom_point(size=2)
diamondPlot
