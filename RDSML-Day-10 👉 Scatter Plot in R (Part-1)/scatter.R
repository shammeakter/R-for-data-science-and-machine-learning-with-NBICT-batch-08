 #Installing and loading ggplot2

#install.packages("ggplot2")
library(ggplot2)

# Loading a data set

dataset = mtcars

# Generating a basic scatter plot

ggplot(dataset,aes(x= wt, y = mpg)) + 
  geom_point()

# Changing the point size and shape

ggplot(dataset,aes(x= wt, y = mpg)) + 
  geom_point(size =2)
ggplot(dataset,aes(x= wt, y = mpg)) + 
  geom_point(size = 4, shape = 3)
ggplot(dataset,aes(x= wt, y = mpg)) + 
  geom_point(size = 4, shape = 2)
ggplot(dataset,aes(x= wt, y = mpg)) + 
  geom_point(size = 4, shape = 10)
ggplot(dataset,aes(x= wt, y = mpg)) + 
  geom_point(size = 4, shape = 12)
ggplot(dataset,aes(x= wt, y = mpg)) + 
  geom_point(size =1, shape =18)


  






