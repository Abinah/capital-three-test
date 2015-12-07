# the top 100 things owned by the livng
library(data.table)
library(ggplot2)
#load data
living_things=read.csv("living-things-ii.csv",sep=";",header=FALSE)
names(living_things)=c("person_id","item_id")
#get how many times each thing is owned
thing_table=as.data.table(table(living_things$item_id))
#order the items from largest to smallest
things=thing_table[order(-rank(thing_table$N))]
#get the top 100 things
#subset the data get only the top 100 rows
top100things2=things[1:100]
#so the top 100 things owned by the living are
top100living=(top100things2[,top100things2$V1])
write.table(top100living,file="top100living.csv",sep=" ")

#visualize them on a bar plot
plot= qplot(x=V1, y=N,main="top100 owned things owned by the living", fill=V1,
            data=top100things2, geom="bar",stat="identity",
            position="dodge")