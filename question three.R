#top 100 things owned in the univers
dead=read.csv("dead-things-ii.csv",sep=";",header = FALSE)
living=read.csv("living-things-ii.csv",sep=";",header=FALSE)

data=rbind(living,dead)
names(data)=c("person_id","thing_id")
head(data)
tb=as.data.table(table(data$thing_id))
tb=tb[order(-rank(tb$N))]
top100=as.data.frame(tb[1:100])
names(top100)=c("object","no_of_times_owned")
plot= qplot(x=object, y=no_of_times_owned,main="top100 owned things", fill=object,
            data=top100, geom="bar",stat="identity",
          position="dodge")
plot
