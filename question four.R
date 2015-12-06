#top 100 things owned by the dead
library(data.table)
library(ggplot2)
#load data
dead_things=read.csv("dead-things-ii.csv",sep=";",header=FALSE)
names(dead_things)=c("person_id","item_id")
#get how many times each thing is owned
thing_table=as.data.table(table(dead_things$item_id))
#order the items from largest to smallest
things=thing_table[order(-rank(thing_table$N))]
#get the top 100 things
#subset the data get only the top 100 rows
top100things=things[1:100]
#so the top 100 things owned by the dead are
top100things[,top100things$V1]

#visualize them on a bar plot
plot= qplot(x=V1, y=N,main="top100 owned things owned by the dead", fill=V1,
            data=top100things, geom="bar",stat="identity",
            position="dodge")