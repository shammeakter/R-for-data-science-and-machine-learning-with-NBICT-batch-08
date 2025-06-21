library(ggplot2)
dataset = mtcars
#Converting cyl column from a numeric to a factor variable

dataset$cyl = as.factor(dataset$cyl)

#Adding regression lines based on multiple groups

ggplot(dataset,aes(x =wt,y = mpg)) +
  geom_point()

ggplot(dataset,aes(x =wt,y = mpg)) +
  geom_point()+
  geom_smooth(method = lm)

ggplot(dataset,aes(x =wt,y = mpg , color = cyl)) +
  geom_point()+
  geom_smooth(method = lm)

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm)

# Removing the confidence intervals

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE)

# Extending the regression lines

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE)

 # Filling the color of confidence bands 

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, aes(fill = cyl), fullrange = TRUE)

#to avoid overlap

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, aes(fill = cyl))

# Changing point shapes manually

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(16,3,17))

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(15,19,17))+
  theme(legend.position = "top")

# Changing point colors manually

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(15,19,17))+
  scale_color_manual(values = c("darkblue","Green","orange"))
  
# Customizing scatter plots

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(15,19,17))+
  labs(title = "Miles per gallon according to the weight")+
  scale_color_manual(values = c("darkblue","Green","orange"))

# Breaking down the title because of long line

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(15,19,17))+
  labs(title = "Miles per gallon \n according to the weight")+
  scale_color_manual(values = c("darkblue","Green","orange"))

# To change the title of X and Y axis

ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(15,19,17))+
  labs(title = "Miles per gallon \n according to the weight",
       x = "weight", y =" miles/gallon" )+
  scale_color_manual(values = c("darkblue","Green","orange"))

# Customizing themes

plot = ggplot(dataset,aes(x =wt,y = mpg , color = cyl,shape = cyl)) +
  geom_point()+
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(15,19,17))+
  labs(title = "Miles per gallon \n according to the weight",
       x = "weight", y =" miles/gallon" )+
  scale_color_manual(values = c("darkblue","Green","orange"))

plot + theme_classic()
plot + theme_minimal()







