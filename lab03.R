getwd()
setwd("C:\\Users\\NOVA\\Downloads\\Rstudio")

data_01 <- read.csv("DATA 3.csv",header = TRUE)
data_01
fix(data_01)

#rename
names(data_01) <-  

#data wena wenama read krnwaa
Gender<-data_01$Gender
Accommodation<-data_01$Accommodation
Age <- data_01$Age

#numarical data to categorical
data_01$Gender <- factor(data_01$Gender, c(1,2) , c("Male","Female")) 
data_01$Accommodation <- factor(data_01$Accommodation,c(1,2,3),c(" Stays at Home"," Boarded Students"," Lodging "))
 
attach(data_01)

Gender

#q2
#frequency table
#gender
gender_FreqTable <- table(data_01$Gender)


#accommodation
Accommodation_FreqTable <- table(data_01$Accommodation)

#bar chart
#gender
barplot(gender_FreqTable, main = "Barplot for gender", xlab="Gender", ylab="Frequency")

#meken enaa bar chart sathanee thank mark krgnna puluwn
abline(h=0)

#accommodation
barplot(Accommodation_FreqTable,main = "barplot for accommodation",xlab = "accomodation",ylab = "Frequency")
abline(h=0)

#pie chart
#gender
pie(gender_FreqTable,main = "Pie chart for gender")

#accomodation
pie(Accommodation_FreqTable,main = "pie chart for accomodation")

#age
#histrogroms
Age <- data_01$Age

hist(Age, main="Histogram for age")
abline(h=0)

#boxplot
boxplot(Age,main="Boxplot for age", horizontal=TRUE)


#Q3
#two way frequency table
gender_accommod_FreqTable <- table(Gender,Accommodation)
gender_accommod_FreqTable

#Stacked barchart
barplot(gender_accommod_FreqTable, main = "Stacked barchart for gender and accomodation", xlab = "Accomodation" , ylab = "Frequency", legend=rownames(gender_accommod_FreqTable))
abline(h=0)

#multiple barchart
barplot(gender_accommod_FreqTable, beside = TRUE, main = "MUltiple barchart",xlab = "Accommodation",ylab = "Frequency",legend=rownames(gender_accommod_FreqTable))
abline(h=0)

#Q4
#Gender Age
boxplot(Age ~ Gender, main="Side by side boxplot", xlab = "Age", ylab = "Gender", horizontal = TRUE)

boxplot(Age ~ Accommodation, main="Side by side boxplot", xlab = "Age", ylab="Accommodation", horizontal = TRUE)


#Q5
xtabs(Age~Gender+Accommodation)/gender_accommod_FreqTable













































