#Matrix in R

Study_hours = c(89,69,45,75,63,54,23,25,57,46)
subject_marks = c(79,53,71,57,63,54,74,77,61,69)

#creating a matrix using study_hours

stu_hours_mat = matrix(Study_hours)
stu_hours_mat
Study_hours

#Joining two columns in a matrix

student_data = c(Study_hours,subject_marks )
student_matrix = matrix(student_data )
student_matrix

# Separating two columns

student_matrix = matrix(student_data,byrow = FALSE,nrow = 10 )
student_matrix


#Naming rows and columns

colnames(student_matrix) = c('hours','Marks')
student_matrix

rownames(student_matrix) = c (1:10)
student_matrix


#Creating matrix using 3 columns

Study_hours = c(89,69,45,75,63,54,23,25,57,46)
subject_marks = c(79,53,71,57,63,54,74,77,61,69)
Grade = c ( 5.00,4.50,5.00,4.30,3.90,4.80,4.90,4.00,3.00,5.00)

student_info = c(Study_hours,subject_marks,Grade )
stud_matrix =matrix(student_info)
stud_matrix

#separating those matrices

stud_matrix =matrix(student_info, byrow = FALSE,nrow = 10)
stud_matrix

colnames(stud_matrix )= c('hour','mark','grade')
stud_matrix
rownames(stud_matrix) = c(1:10)
stud_matrix

# Selecting an element from matrix

student_matrix[6,1]
student_matrix[4,2]

summary(stud_matrix)

#Data Frames in R
student_names = c('mr1','ms2','ms3','mr4','ms5')
study_hours = c (20,24,46,62,22)
marks = c (40,55,69,54,45)
Gender = c ("Male","Female","Female","Male","Female")
male = c(TRUE,FALSE,FALSE,TRUE,FALSE)

stu_data = data.frame(student_names,study_hours,marks,Gender)
summary(stu_data)

stu_data = data.frame(student_names,study_hours,marks,male)
summary(stu_data)

stu_data$study_hours
 mean(stu_data$study_hours)
