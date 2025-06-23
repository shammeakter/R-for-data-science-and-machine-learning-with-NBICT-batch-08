# Creating dataset or dataframe

dataset = data.frame(dose = c("D0.5","D1","D2"),
                     len = c(4.2,10,29.5))

# to entry or adding column

dataset = data.frame(dose = c("D0.5","D1","D2"),
                    len = c(4.2,10,29.5),
                    gsg = c(45,70,7))

# Export R dataframe to csv or Excel

write.csv(dataset, "my_data.csv")


library(ggplot2)

#Basic barplot

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity")

# HOrizontal barplot

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity")+
  coord_flip()

#Changing the width of bars

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity", width = 0.5)


# Changing colors

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity", color = "blue", fill = "white", width = .5)

#Minimal theme + blue fill color

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  theme_minimal()

# Bar plot with labels

# outside bars

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len)) +
  theme_minimal()

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len), vjust = -0.5, size = 3) +
  theme_minimal()

# outside bars

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#9F9F9F") +
  theme_minimal()

# inside bars

ggplot(data = dataset,aes(x = dose,y = len))+
  geom_bar(stat = "identity", fill = "steelblue")+
  geom_text(aes(label = len), vjust = 1.6, size = 3, color = "#9F9F9F") +
  theme_minimal()

mycarsData = mtcars

 # Barplot of counts
 # To make a barplot  of counts, we will use mtcars dataset

ggplot(data = mycarsData,aes( x = factor(cyl))) +
  geom_bar(stat = "count")

ggplot(data = mycarsData,aes( x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue")+
  theme_minimal()

 





  

