#Data set is been imported from UCI machine learning repository
#Data set name is "Abalone.data".
library(readr)
abal<-read_csv("abalone.data",col_names=FALSE) #Importing the data set from the working directory.
View(abal)
# Assigning the header to the data set.
names(abal)<-c('sex','length','diameter','height','whole_white','shucked_weight','viscera_weight','shell_weight','rings')
x<-mean(abal$rings) #Mean of the coloumn ring in the data set
y<-median(abal$rings)# Median of the colounm 
z<-sort(table(abal$rings),decreasing = TRUE)[1] #Mode of the coloumn
quantile(abal$rings) # To find the quantile ranges 
summary(abal) # Summary of the data set 
tapply(abal$rings,abal$sex,sum) # Consolidating the unique values of Sex colounm and perform the function SUM 
table(abal$sex) # Frequency count of the coloumn
a<-sample(abal$length,50) # taking sample values from the population(data set)
b<-sample(abal$diameter,50)
plot(a,b,xlab = "Length",ylab = "Diameter",pch=20, frame=TRUE) # Scatter plot b/w lenght vs diameter
abline(lm(a~b, data = abal),col="blue") # regression line

