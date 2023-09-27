StudentsData = read.csv("C:\\PDS\\Question 2\\Raw_Data\\StudentsPerformance.csv")
StudentsData

#Getting the info of complete csv
summary(StudentsData)

#creating a data frame
Students_Data <- as.data.frame(StudentsData)
Students_Data

#Understanding the data and dimensions
names(Students_Data)
dim(Students_Data)

#Getting the top rows
head(Students_Data)

#Getting the bottom rows
tail(Students_Data)

#Getting the Data Structure
str(Students_Data)

#Converting vector object to factor object-with levels of factor
Students_Data$gender <- as.factor(Students_Data$gender)
Students_Data$race.ethnicity <- as.factor(Students_Data$race.ethnicity)
Students_Data$parental.level.of.education <- as.factor(Students_Data$parental.level.of.education)
Students_Data$lunch <- as.factor(Students_Data$lunch)
Students_Data$test.preparation.course <- as.factor(Students_Data$test.preparation.course)

str(Students_Data)


summary(Students_Data)



#Finding out the missing values if any
anyNA(Students_Data)

#save the clean Data
write.csv(Students_Data,"C:\\PDS\\Question 2\\Clean_Data\\Cleaned_StudentsPerformance.csv")