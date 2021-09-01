x<-c(2,3,5,6,10,15,12,10,8,10,13,11,11,2,5,7,4,2,10,6)
library('RcmdrMisc')
Dotplot(x)

stripchart(precip,method = 'overplot' ,xlab = "rainfall") #default method
stripchart(rivers, method = "jitter", xlab = "length")
stripchart(discoveries, method = "stack", xlab = "number")

y <- table(state.region)
dotchart(as.vector(y), labels = names(y))
