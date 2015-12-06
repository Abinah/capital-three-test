#get all object owned by the living and not the dead
library(sqldf)
living=read.csv("living-things-ii.csv",sep=";",header=FALSE)
names(living)=c("person_id","object_id")
dead=read.csv("dead-things-ii.csv",sep=";",header=FALSE)
names(dead)=c("person_id","object_id")
#query
data=sqldf('SELECT  object_id FROM living WHERE object_id not in (select object_id from dead)')
