#top 100 things owned in the univers
library(data.table)
library(ggplot2)
#load data first
dead=read.csv("dead-things-ii.csv",sep=";",header = FALSE)
living=read.csv("living-things-ii.csv",sep=";",header=FALSE)
#join the  two files
data=rbind(living,dead)
names(data)=c("person_id","thing_id")
head(data)
#calculate how many times each thing is owned
#convert the result to data.table 
tb=as.data.table(table(data$thing_id))
tb=tb[order(-rank(tb$N))] #sort the results from largest to smalles
top100=as.data.frame(tb[1:100])#get the top 100 things
names(top100)=c("object","no_of_times_owned")
#Visualize
plot= qplot(x=object, y=no_of_times_owned,main="top100 owned things", fill=object,
            data=top100, geom="bar",stat="identity",
          position="dodge")
plot

#so the top 100 oned things by both the living and dead
top100_things=as.data.frame(top100[,1])
write.table(top100_things,file="top100.csv",sep=" ")
