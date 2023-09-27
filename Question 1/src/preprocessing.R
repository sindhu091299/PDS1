frailty_data = read.csv("C:\\PDS\\Question 1\\Raw_data\\raw_frailty_data1.csv")

#Getting the info of complete csv
summary(frailty_data)


#creating a data frame
frailty_data <- as.data.frame(frailty_data)
frailty_data

#renaming the columns
colnames(frailty_data) <- c('Height','Weight','Age','Grip_Strength','Frailty')

#Understanding the data and dimensions
names(frailty_data)
dim(frailty_data) 

#Getting the top rows
head(frailty_data)

#getting the datastructure
str(frailty_data)

frailty_data$Frailty <- as.factor(frailty_data$Frailty)



str(frailty_data)
anyNA(frailty_data)


write.csv(frailty_data, "C:\\PDS\\Question 1\\Clean_Data\\cleaned_frailty_data.csv")