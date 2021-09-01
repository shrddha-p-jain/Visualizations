x <- c(2,4, 3, 2, 3,5, 6, 7, 10, 2, 5, 8, 8, 2, 3, 2, 5, 6, 2,3)
a<-table(x)

# horizontal barplot
barplot(a,horiz = T)

# Manipulations like barplots
barplot(a,horiz = T, names.arg = LETTERS[1:8],col = rainbow(10))

# Baseline
abline(v=0)

# Labels alignment
barplot(a,horiz = T, names.arg = LETTERS[1:8],col = rainbow(10), las=1)
#las = 0: Labels always parallel to the axis (default)
#las = 1: All labels horizontal
#las = 2: Labels perpendicular to the axes
#las = 3: All labels vertical
