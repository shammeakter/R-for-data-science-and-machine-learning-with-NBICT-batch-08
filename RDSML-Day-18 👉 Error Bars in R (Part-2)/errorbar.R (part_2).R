# Importing the dataset
tooth_data = ToothGrowth
 sum = function(){}

 
sum(23,25,89,87)

add_values = function(a,b) {          
  result = a+b
}
 add_values(23,25)
 
 # Creating the function for summarizing the data 
 # based on the grouping variables
 
 data_summary = function(data, varname, groupnames){
   require(plyr)
   summary_func = function(x, col){
     c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
   }
   data_sum = ddply(data, groupnames, .fun = summary_func, varname)
   data_sum = rename(data_sum, c("mean" = varname))
   return(data_sum)
 }


  d_summary = data_summary(tooth_data, varname = "len" , groupnames = c("supp", "dose"))
 

   
 data_summary = function(data, varname, groupnames){
   require(plyr)
   
   summary_func = function(x, col){
     c(mean = mean(x[[col]]), sd = sd(x[[col]]))
   }
   
   all_summary = ddply(data, groupnames, .fun = summary_func, varname)
   data_sum = rename(all_summary, c("mean" = varname))
   return(data_sum)
 }
 
 
 d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))
 
 # Making barplot using dataset
 #At first Converting 'dose' to a factor variable
 
 d_summary$dose = as.factor( d_summary$dose) 
 class(d_summary$dose) 

 # Standard deviation of the mean as error bar with explanation

 library(ggplot2)

 ggplot(d_summary)
 
 ggplot(d_summary,aes(x = dose,y = len))
 
 ggplot(d_summary,aes(x = dose,y = len)) +
   geom_bar(stat = "identity")
 
 ggplot(d_summary,aes(x = dose,y = len,fill = supp)) +
   geom_bar(stat = "identity",position = position_dodge())
  
ggplot(d_summary,aes(x = dose,y = len,fill = supp)) +
   geom_bar(stat = "identity",position = position_dodge()) +
   geom_errorbar(aes(ymin = len + sd, ymax = len + sd))
 
ggplot(d_summary,aes(x = dose,y = len,fill = supp)) +
  geom_bar(stat = "identity",position = position_dodge()) +
  geom_errorbar(aes(ymin = len + sd, ymax = len + sd),width = 0.2)


# changing the position of error bar

ggplot(d_summary,aes(x = dose,y = len,fill = supp)) +
  geom_bar(stat = "identity",position = position_dodge()) +
  geom_errorbar(aes(ymin = len + sd, ymax = len + sd),width = 0.2,position = position_dodge(0.9))

ggplot(d_summary,aes(x = dose,y = len,fill = supp)) +
  geom_bar(stat = "identity",position = position_dodge()) +
  geom_errorbar(aes(ymin = len + sd, ymax = len + sd),width = 0.2,position = position_dodge(0.9)) +
  theme_minimal()
  

 
 