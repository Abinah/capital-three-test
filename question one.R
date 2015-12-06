#at what age do most people die?

data=dead
str(data)
count=as.data.frame(table(data$death_age))
names(count)=c("age","freq")
#visualize
plot= qplot(x=age, y=freq, fill=age,
            data=count, geom="bar", stat="identity",
            position="dodge")
plot

#from count table and plot above,we see most people die at the age of one
