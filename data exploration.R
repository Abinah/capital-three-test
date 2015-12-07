

#capital three test
#Abinah Gekara

#load packages
library(data.table)
library(ggplot2)
#read data

things=read.csv("all-things.csv")
View(dead)
dead=read.csv("dead-ii.csv",sep=";",header = FALSE)
names(dead)=c("person_id","death_age")
living=read.csv("living-ii.csv",sep=";",header=FALSE)
names(living)=c("person_id","age")
thing=read.csv("all-things.csv",sep=";",header=FALSE)
names(things)="things_id"
