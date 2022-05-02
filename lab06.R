#Q1
data_04 <- read.table("Forest.txt",sep=",",header = TRUE)
data_04
fix(data_04)

#meka karama apita colum name walinma ktha krnna puluwn
attach(data_04)

#Q2
#not five no summary this for normal summry
str(data_04)

#Q3
#observations
517

#Q4
min(wind)
max(wind)

#5
#Get five number summary of temperature
summary(temp)


#6
boxplot(wind, horizontal = TRUE,outline=TRUE,pch=16)

#7
#negative distribution

#8
median(temp)

#9
#mean wind
mean(wind)

#Standers variation
sd(wind)

#10
IQR(wind)

#11
#How many observations have measured during 
#Friday in August :- 21
freq<-table(day,month)
freq 

freq1<-table(month,day)
freq1

#12
#What is the average temperature, during September?
mean(temp)
mean(wind)
mean(temp[month=="sep"])
mean(wind[month=="sep"])


#13
#On which day have they measured most observations during month of July
#mekee wdima gana blnne ekaa barchart ekaka usama ekaa wgee e nis barplot ekaa
#use krnna puluwn
barplot(freq,besides = TRUE,xlab = "Month",ylab = "Frequency", legend=rownames(freq))











