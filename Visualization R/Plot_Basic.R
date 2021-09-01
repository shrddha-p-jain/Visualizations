# Preprocessing
df = read.csv("C://Users//Shraddha//Desktop//Data//master.csv")
colSums(is.na(df)) 
df <- df[,c(-8,-9,-10)]
head(df)
a = rowsum(df[,5],df[,2])
colnames(a)=c('Deaths')
head(a)

# Basic plotting
plot(as.numeric(rownames(a)),a)

x=as.numeric(rownames(a))

#limit
plot(x,a, xlim=c(1984,2018), ylim = c(50000,300000))

# Type of graph
#what type of plot should be drawn. Possible types are:
# + "p" for points,
#+ "l" for lines,
#+ "b" for both,
#+ "c" for the lines part alone of "b",
#+ "o" for both 'overplotted',
#+ "h" for 'histogram' like (or 'high-density') vertical lines,
#+ "s" for stair steps,
#+ "S" for other steps, see 'Details' below,
#+ "n" for no plotting.
plot(x,a,ylim = c(0,300000),type = 'l')
plot(x,a,ylim = c(0,300000),type = 'p') #default
plot(x,a,ylim = c(0,300000),type = 'o')
plot(x,a,ylim = c(0,300000),type = 'b')
plot(x,a,ylim = c(0,300000),type = 'c')
plot(x,a,ylim = c(0,300000),type = 'h')
plot(x,a,ylim = c(0,300000),type = 's')
plot(x,a,ylim = c(0,300000),type = 'S')

# Different plotting characters
plot(x,a,ylim = c(0,300000),pch = 0)
# pch :0-25

#different linetype
plot(x,a,ylim = c(0,300000),'l', lty=5)
# lty: 1-6

#legend
plot(x,a,ylim = c(0,300000),"o", lty = 6, col = "deepskyblue")
legend(locator(1),legend = c('suicide rate'),pch = c(1),col='deepskyblue')
# the legend can be specified in x-y coordinates, or 
# a keyword from: "bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right" and "center". 
#Will explore legend later.
legend('bottomleft',legend = c('suicide rate'),pch = c(1),col='deepskyblue')

# cex:charachter expansion - used to specify size of legend
plot(x,a,ylim = c(0,300000),"o", lty = 6, col = "deepskyblue")
legend('topleft',legend = c('suicide'),pch = c(1),col='deepskyblue', cex=0.8)

#Adding points
plot(x,a,ylim = c(0,300000),"o", lty = 6, col = "deepskyblue")
points(c(1995,1996,1997),c(50000,10000,15000), col = 'Black',pch = 4,type = 'p')

#Adding lines
lines(seq(1985,1995,1),seq(10000,30000,length.out = 11))
