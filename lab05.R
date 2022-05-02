getwd()

data_03 <- read.table("Data.txt",sep=",",header = TRUE)
data_03
fix(data_03)

names(data_03) <- c("x1","x2")

attach(data_03)
#Q1
hist(x2,main="Histogrm for number of shareholders")
abline(h=0)

#Q2
histogram<-hist(x2,main="Histogrm for number of shareholders",breaks = seq(130,270, length=8), right = FALSE)
abline(h=0)

#Q3
breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids <- histogram$mids
mids

classes <- c()
i<-1
for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],"]")
}
classes

cbind(Classes=classes,Frequency=freq)

#Q4
#Get the mid point in chart
lines(histogram$mids, freq)

plot(mids, freq, type="l", main="FrequencyPolygon for Shareholders", xlab="Shareholders", ylab = "Frequency", ylim = c(0,max(freq)))
#ylim ekee wenne y axis ekee o idn lokuma frequency ekata dena ekaa

#Q5
cum.freq<-cumsum(freq)
cum.freq
new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}
new

plot(breaks, new, type="o", main="Cumulative FrequencyPolygon for Shareholders", xlab="Shareholders", ylab = "Frequency", ylim = c(0,max(freq)))

#cumulative frequency table
cbind(Upper = breaks,CumFreq = new)





 
