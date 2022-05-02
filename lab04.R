#Q1
getwd()

#csv file ekak nam read.csv
#text file ekak nam read.table
#sep ekn comma / space thiynna puluwn
data_02 <- read.table("DATA 4.txt",sep=" ",header = FALSE)
data_02
fix(data_02)
attach(data_02)


names(data_02) <- c("Name","Team Attendance","Team Salary ","Years")
attend<-data_02$`Team Attendance`
salary<-data_02$`Team Salary `
Years<-data_02$Years

#Q02
#a
#box-plot
#outline:- outliers penna thamai / pitathin thiyana value
boxplot(attend,main="Boxplot for team", outline = TRUE, outpch=8, horizontal = TRUE)
boxplot(salary,main="Boxplot for Team Salary", outline = TRUE, outpch=8, horizontal = TRUE)
boxplot(Years,main="Boxplot for Years", outline = TRUE, outpch=8, horizontal = TRUE)

#Histrogram
hist(attend, main="Histogram for Team", xlab = "Team Attendance" , ylab = "Frequency")
abline(h=0)

hist(salary, main="Histogram for salary",xlab = "Team Salary" , ylab = "Frequency")
abline(h=0)

hist(Years, main="Histogram for Years",xlab = "Years" , ylab = "Frequency")
abline(h=0)

#Steam-leaf plot
fix(data_02)
stem(attend)
stem(salary)
stem(Years)

#b
#mean:-average
mean(attend)
mean(salary)
mean(Years)

#median:-middle value
median(attend)
median(salary)
median(Years)

#Standard Deviation. 
sd(attend)
sd(salary)
sd(Years)


#c
#first and third quartile
#this give five number summary
summary(attend)
summary(salary)
summary(Years)

#Quartile
quantile(attend)
quantile(salary)
quantile(Years)

#first Quartile
quantile(attend) [2]
#third qurtile
quantile(attend) [4]


#d
IQR(attend)
IQR(salary)
IQR(Years)


#Q3
#mode wdima waragnak yedila thiyna ekaa
get.mode<-function(y){#start point function y is parameter
  counts<-table(Years)#table of years
  names((counts[counts==max(counts)]))
}#end point function

get.mode(Years)
table(Years)

#Q4
get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  
  iqr<- q3-q1
  
  ub<-q3+1.5*iqr
  lb<-q1+1.5*iqr
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", lb))
  print(paste("Outliers:", paste(sort(z[z<lb|z>ub]), collapse=",")))
}
get.outliers(attend)
get.outliers(salary)
get.outliers(Years)

detach(data_02)









