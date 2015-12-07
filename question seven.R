#things owned by the dead bt not living
library(sqldf)
living=read.csv("living-things-ii.csv",sep=";",header=FALSE)
names(living)=c("person_id","object_id")
dead=read.csv("dead-things-ii.csv",sep=";",header=FALSE)
names(dead)=c("person_id","object_id")
#query
data2=sqldf('SELECT  object_id FROM dead WHERE object_id not in (select object_id from living)')
write.table(data2,file="ownedbydeadnotliving.csv",sep=" ")
