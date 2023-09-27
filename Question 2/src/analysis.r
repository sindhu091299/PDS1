library(ggplot2)
library(dplyr)

# Read the CSV file into a data frame
StudentsData <- read.csv("C:\\PDS\\Question 2\\Clean_Data\\Cleaned_StudentsPerformance.csv")


# Convert 'gender' and 'race.ethnicity' to factors
StudentsData$gender <- factor(StudentsData$gender)
StudentsData$race.ethnicity <- factor(StudentsData$race.ethnicity)
#Pie Chart describing Gender distribution
pie(prop.table(table(StudentsData$gender)), main = "Gender distribution", col = rainbow(length(unique(StudentsData$gender))))

#Histogram of Distribution of Math and Reading Scores
par(mfrow=c(2,2))
hist(StudentsData$math.score, xlim=c(0,100), xlab = "MATH SCORE", main = "Distribution Math Score")
hist(StudentsData$reading.score,xlim=c(0,100), col=9, xlab = "READING SCORE", main = "Distribution Reading Score")

#Boxplots of writing score Vs Gender
StudentsData$gender <- as.factor(StudentsData$gender)
plot(StudentsData$gender, StudentsData$reading.score,
     xlab = "SEX", ylab = "READING SCORE",main="BOXPLOTS OF READING SCORE VS GENDER",col.main="purple", col=(c("navyblue","red")))

table_race_ethnicity <- table(StudentsData$race.ethnicity)
table_race_mathscore <- table(StudentsData$math.score)
# Convert table to a numeric vector
heights <- as.numeric(table_race_ethnicity)
# Generate the bar plot of Group distribution
barplot(heights, main = "Groups distribution", col = rainbow(length(heights)), names.arg = names(table_race_ethnicity))

#Generates histogram of Math Scores by Race/Ethinicity
score_matrix <- cbind(StudentsData$parental.level.of.education,StudentsData$reading.score)
hist(StudentsData$math.score, breaks = 10, col = "lightblue", main = "Histogram of Math Scores by Race/Ethnicity",
     xlab = "Math Score", ylab = "groups", xlim = c(0, 100))

# Add a legend
legend("topright", legend = levels(StudentsData$race.ethnicity), fill = unique(StudentsData$race.ethnicity))