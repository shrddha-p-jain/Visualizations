hist(precip, breaks = 10, main = "")
hist(precip, breaks = 200, main = "")

bins = seq(min(precip),max(precip),by=10)
hist(precip, breaks = bins, main = "")

# other manipulations as in basic plotting