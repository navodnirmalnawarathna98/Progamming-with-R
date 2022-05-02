#control statement

#if
x <- 6
x
if( x > 0){
  print("positive")
}else{
  print("negative")
}

y <- 0

# Nested If…Else condition if 
if(y>0){
  print("positive")
}else if(y>0){
  print("negative")
}else{
  print("zero")
}

#while loop
i <- 1

while(i<6){
  print(i)
  i=i+1
}

#for loop
8:16
for(i in 1:10){
  print(i)
}

#Importing and Exporting
getwd()
setwd("C:\\Users\\NOVA\\Downloads\\Rstudio")

data_1 <- read.table("data1.txt",header=FALSE, sep = ",")
data_1
fix(data_1)
#fix ekn puluwn apita table ekak widiyta display krgnna ekaa data editer ekak
#ekee data edit krnna puluwn


data_2 <- read.csv("DATA 2.csv", header = TRUE)
data_2 
fix(data_2)

#export
Name <- c("Nirmal","kamal","saman")
Marks <- c(98,68,74)

marksofmaths <- data.frame(Name,Marks)

#create text file
write.table(marksofmaths, file = "StudentMarks.txt")
#create  
write.csv(marksofmaths, file="studentMarks.csv")

#function
8+10

function_01 <- function(a,b){
  y <- a+b
  y
}

function_01(8,10)



quardRoot <- function(a,b,c){
  #Q01
  x1 = (-b + sqrt(b^2 + 4*a*c)/(2*a))
  x2 = (-b - sqrt(b^2 + 4*a*c)/(2*a))
  print(x1)
  print(x2)
}
 
quardRoot(5,10,-2)

#q4

xvector <- c(1:20)
xvector %% 3==0
sum(xvector %% 3==0)
aa <- data.frame(xvector)
print(aa)
class(xvector)

#q5

#q6
w <- c(1:10)
w
max <- 0
for(i in w){
  if(w[i]>max){
    max<-w[i]
  }
}
print(max)

#q7
# Do the same without using a loop.
which.max(w)

#q8
moneyOwed <- function(p,R,n){
  for(i in 1:n){
    A = p * ((1+(R/100))^i)
    print(A)
  }
}
moneyOwed(5000,11.5,15)

#q9
 



A<-0









































