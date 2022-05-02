#01
X<-c(2,5,6,3,3,2,1,1,0,9,1,0,5,4,9,4,9,9)

u1<-table(X)
cc<-names(u1[u1==min(u1)])

get.f1<-function(y){
  u1<-table(X)
  names(u1[u1==min(u1)])
}
get.f1(X)

#02
#five number summary
summary(variable)

#03
#data get from text file
data_1 <- read.table("data1.txt",header=FALSE, sep = ",")
#data getfrom csv file
data_2 <- read.csv("DATA 2.csv", header = TRUE)


#04
d<-c(13,15,17,19,21,23,25,27)
b<-c()
for(i in 1:7){
  b[i]<-paste0("[",d[i],",",d[i+1],"]")
}
print(b)

#5
a<-c(2,3,8,10,15,18,22,25)
new<-c()
for(i in 1:8){
  if(i==1){
    new[i]=0
  }else if(i==3){
    new[i]=25
  }else{
    new[i]=a[i-1]
  }
}
new

#Q5
X<-c(20,15,10,34,28,11,43,37,5,60,58)
get.ans<-function(z){
  a<-z[2]
  b<-z[7]
  d<-b-a
    UL<-a+1.5*d
    LL<-b-1.5*d
    print(paste("Upper Limit=",UL))
    print(paste("Lower Limit=",LL))
    print(paste("Answer",paste(sort(z[z<LL|z>UL]),collapse = ",")))
}

get.ans(X)

#Q6



















