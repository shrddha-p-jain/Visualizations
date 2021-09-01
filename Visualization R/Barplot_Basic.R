# Random data
x = c(2,4, 3, 2, 3,5, 6, 7, 10, 2, 5, 8, 8, 2, 3, 2, 5, 6, 2,3)

# Basic barplot function
barplot(x) # This just builts a barplot with the heights = x, 
           # Which is not what we wnat most of the times.
barplot(table(x)) #Something more appropriate

# Manipulating
a<-table(x)

# width of bars 
barplot(a, width=c(5,1)) # width only works when the vectors of different length is given.
barplot(a, width=c(5))
barplot(a, width=c(1)) # Both above give same graph
#space between bars
barplot(a,space = 2)
barplot(a,space = 0)

# names of bars
barplot(a,names.arg = LETTERS[1:8])

# baseline
abline(h=0)
#lines
brplt = barplot(a,names.arg = LETTERS[1:8])
lines(brplt,a,col="blue",lwd=2)

# Titles and lables
barplot(a, main = 'Sample barplot', xlab = 'Alphabets', ylab = 'Count')
#Superscript
barplot(a, main = expression('Sample barplot'^Super), xlab = 'Alphabets', ylab = 'Count')
#subscript
barplot(a, main = expression('Sample barplot'['Sub']), xlab = 'Alphabets', ylab = 'Count')


# Limits of axes
barplot(a, ylim = c(0,10))

# Adding values
brplt = barplot(a, ylim = c(0,8))
text(brplt,y= a,a,pos = 3)
# pos = 1 - below, 2 - left, 3- above, 4 - right
# first a is to specify the y coordinate, that is the height at which ith should be print, 
# second a tells us what to print
brplt = barplot(a, ylim = c(0,8))
text(brplt,y= a,a,pos = 1)
# text can be manipulated. see help if needed

#adding a little colour
barplot(a, ylim = c(0,8), col= 'Red')
barplot(a, ylim = c(0,8), col= c('Red','Blue','Lightblue','Orange','Pink'))
barplot(a, ylim = c(0,8), col= rainbow(10))

palette(gray(seq(0.5,1,len=9)))
palette()
barplot(a, ylim = c(0,8), col= palette())

#grid
grid() # basic. See help for customizing
# OR
barplot(a, ylim = c(0,8))
abline(h=0)
abline(h=seq(1,9,1),col='pink')
abline(v=seq(1,9,1),col='pink')

# enclosing in a box
box()


