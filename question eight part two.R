#probability of a thing owned by the living
things=read.csv("all-things.csv")
dead=read.csv("dead-ii.csv",sep=";",header=FALSE)
living=read.csv("living-ii.csv",sep=";",header=FALSE)

no_things=nrow(things)
no_living=nrow(living)
no_dead=nrow(dead)

#prob of a thing being owned by the living=prob(thing)*prob(living)
prob.thing=1/(no_things)
prob.dead=no_living/(no_dead+no_living)
answer=prob.thing*prob.dead
answer
