#probabilty that a thing is owned by the dead
#load data
things=read.csv("all-things.csv")
dead=read.csv("dead-ii.csv",sep=";",header=FALSE)
living=read.csv("living-ii.csv",sep=";",header=FALSE)

no_things=nrow(things)
no_living=nrow(living)
no_dead=nrow(dead)
data=cbind(no_things,no_living,no_dead)
write.table(data,file="promatrix.csv",sep=",",col.names=TRUE)
#prob of a thing being owned by the dead=prob(thing)*prob(dead)
prob.thing=1/(no_things)
prob.dead=no_dead/(no_dead+no_living)
answer=prob.thing*prob.dead
answer
