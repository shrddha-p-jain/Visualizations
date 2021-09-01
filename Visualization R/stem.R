x<-c(2,3,5,6,10,15,12,10,8,10,13,11,11,2,5,7,4,2,10,6)
stem(x)
stem(x,scale = .5)
stem(x,scale = .75)
stem(x,scale = .2)

library('aplpack')
stem.leaf(UKDriverDeaths, depth = FALSE)
