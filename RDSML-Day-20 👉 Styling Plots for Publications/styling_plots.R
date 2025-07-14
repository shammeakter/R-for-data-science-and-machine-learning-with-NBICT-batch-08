# styling plots for Publications

library(ggplot2)
install.packages("ggthemes")
library(ggthemes)

# packages for color blind which gives
# friendly color paleets 

#After install this package have to commenting
 # install.packages("viridis")
library(viridis)

#sample data loading
df = mtcars
# converting  cyl data to factor

df$cyl= as.factor(df$cyl)

# styling plot
ggplot(df,aes(x = wt, y = mpg , color = cyl))+
  geom_point(size = 3)

# write cylinder instead of cyl