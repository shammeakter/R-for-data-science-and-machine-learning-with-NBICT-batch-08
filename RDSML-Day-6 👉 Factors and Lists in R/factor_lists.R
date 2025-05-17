#Factors in R

#Summery of numeric items
participents_age = c(78,25,68,45,48,36)
summary(participents_age )

#Finding summery of characters
profession = c ("Doctor","Teacher","Businessman","Teacher")
summary(profession)
Profession = factor(profession)
summary(Profession )

#putting the summary in order
birth_month = c("Jan","Dec", "Apr", "Jan", "Mar", "Jun", "Apr", "Jul", "Aug","Sep", "Apr", "Oct", "Jul", "Sep")
summary(birth_month)

birth_month_fact = factor(birth_month)
summary(birth_month_fact)
birth_month_fact = factor(birth_month, 
                          ordered = TRUE, 
                          levels = c("jan", "Feb","Mar", "Apr","May","Jun","Jul","Aug", "Sep","Oct","nov","Dec"))
summary(birth_month_fact )

#Lists in R
#Lists are used to place number of items in a bundle

a = c(2,4,7)
b = c("Red","Green","Blue")
c = "welcome"

my_list =list(a,b,c)
my_list

#Naming the list items
my_list =list(pieces=a, colors =b, Message = c)
my_list


#calling a specific data structure
my_list[3]
my_list[2]
my_list["colors"]
my_list$pieces
my_list$Message
my_list$colors


#calling specific items from the data structure
my_list$colors[1]
my_list$colors[2]
my_list$colors[4]
