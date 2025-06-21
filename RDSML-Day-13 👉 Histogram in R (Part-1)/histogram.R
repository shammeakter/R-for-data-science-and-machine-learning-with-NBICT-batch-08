# Importing the dataset
dataset = read.csv ("data.csv")

#importing the library
library(ggplot2)

#Basic histogram using ggplot2

ggplot()
ggplot( dataset, aes(x = weight))

ggplot( dataset, aes(x = weight))+
  geom_histogram()

#Changing the width of bins

ggplot( dataset, aes(x = weight))+
  geom_histogram(binwidth = 2)

ggplot( dataset, aes(x = weight))+
  geom_histogram(binwidth = 1, color = "black")

#Changing colors

ggplot( dataset, aes(x = weight))+
  geom_histogram(binwidth = 1, color = "black",fill = "blue")

ggplot( dataset, aes(x = weight))+
  geom_histogram(binwidth = 1, color = "black",fill = "light blue")

#Adding the mean line

 myplot = ggplot( dataset, aes(x = weight))+
  geom_histogram (color = "black",fill = "light blue")
 
 myplot + geom_vline(aes(xintercept = mean(weight)),
                     color =" blue")
#To change meanline type and size
 
 myplot = ggplot( dataset, aes(x = weight))+
   geom_histogram (color = "black",fill = "light blue")
 
 myplot + geom_vline(aes(xintercept = mean(weight)),
                     color =" blue", linetype = "dashed" ,size = 1)
 

#Histogram with density plot
 
 ggplot( dataset, aes(x = weight))+
   geom_histogram(aes(y = after_stat(density)),color = "black",fill = "white")+
   geom_density()
 
#Changing line color and fill color
 
 ggplot( dataset, aes(x = weight))+
   geom_histogram(aes(y = after_stat(density)),color = "black",fill = "white")+
   geom_density(fill = "blue")
 
 ggplot( dataset, aes(x = weight))+
   geom_histogram(aes(y = after_stat(density)),color = "black",fill = "white")+
   geom_density(fill = "green")
 
# To increase the transparency because the bins could't see
  
ggplot( dataset, aes(x = weight))+
   geom_histogram(aes(y = after_stat(density)),color = "black",fill = "white")+
   geom_density(fill = "green",alpha = .2)
 

ggplot( dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)),color = "black",fill = "white")+
  geom_density(fill = "green",alpha = .7)

#Changing line color and fill color

ggplot( dataset, aes(x = weight))+
  geom_histogram(color = "darkblue",fill = "lightblue")





