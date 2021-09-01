rownm=c("Blackbird", "Chaffinch", "Great Tit", "House Sparrow", "Robin", "Song Thrush")
colnm=c("Garden","Hedgerow","Parkland","Pasture","Woodland")
bird=matrix(c(47,10,40,2,2,19,3,5,0,2,50,0,10,7,0,46,16,8,4,0,9,3,0,0,2,4,0,6,0,0),nrow=6,ncol=5,byrow=T)
colnames(bird)<-colnm
rownames(bird)<-rownm            
bird

# Stacked
barplot(bird,ylim=c(0,200)) #when in matrix several rows, stacked chart
abline(h=0)

#When needed side by side
barplot(bird,ylim=c(0,60),beside = TRUE)

barplot(t(bird),beside = T,legend=T,cex.names=0.8,col=c("black","green","lightblue","red","brown","yellow"))
title(xlab = "Total bird counted",ylab="Habitat")
abline(h=0)

#Other things can be manipulated as before

# Note: Object can be a matrix

# Another example - stacked
barplot(VADeaths,plot = T)
# Beside
barplot(VADeaths,plot = T,beside = T)
