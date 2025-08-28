setwd("C:\\Users\\it24100018\\Desktop\\IT24100018_lab_05")
getwd()

#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE,sep="", stringsAsFactors = FALSE)
head(Delivery_Times)

#Q2
names(Delivery_Times) <- c("DeliveryTimes")
hist(Delivery_Times$DeliveryTime,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Time (minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "lightgreen",
     border = "black")

#Q4
names(Delivery_Times)
x <- as.numeric(Delivery_Times[[1]])
hist(x,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Time (minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "lightgreen",
     border = "black")

h <- hist(x, breaks = seq(20, 70, length.out = 10), right = FALSE, plot = FALSE)
cf <- cumsum(h$counts)

plot(h$breaks[-1], cf, type = "o",
     main = "Ogive (Cumulative Frequency Polygon)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     pch = 16)
points(h$breaks[1], 0, pch = 16)
lines(c(h$breaks[1], h$breaks[-1], c(0), cf)





