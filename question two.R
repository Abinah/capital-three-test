#What is the median age of the living?
data =living
#MEDIAN
MEDIAN=median(living$age)

#visualizing
#use a box plot 
boxplot=boxplot(living$age)
#thiz works but the graoh is untidy
dens=density(living$age)
plot(density(living$age), xlim=c(-2.5,10), type="l", col="green",
     xlab="age", main="density curve",lwd=2)
abline(v=median(living$age))

#make adjustments to make a good graph

dens=density(living$age)
n <- length(dens$y)                       
point1 <- mean(diff(dens$x))                  
point2 <- sum(dens$y) * point1               
point3 <- point1 / point2                         
x.mean <- sum(dens$y * dens$x) * point3
y.mean <- dens$y[length(dens$x[dens$x < x.mean])] 
x.mode <- dens$x[i.mode <- which.max(dens$y)]
y.mode <- dens$y[i.mode]                  
y.cs <- cumsum(dens$y)                    
x.med <- dens$x[i.med <- length(y.cs[2*y.cs <= y.cs[n]])] 
y.med <- dens$y[i.med]                                    

# Plot the density curve and 

plot(dens, xlim=c(-2.5,10), type="l", col="green",
     xlab="age", main="density curve",lwd=2)
temp <- mapply(function(x,y,c) lines(c(x,x), c(0,y), lwd=2, col=c), 
               c(x.mean, x.med, x.mode), 
               c(y.mean, y.med, y.mode), 
               c("Blue", "Red", "Gray"))
#the red line shows the median,blue shows mean,Gray shows mode



