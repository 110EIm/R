setwd('/home/murye/Workspace/R')
data <- read.csv('resources/2016KBO.csv', header = 1)
class(data)
data
data2 <- data[, c(2, 3, 4, 9, 12)]
data2
data3 <- data2$HR
data3
mean(data3)
var(data3)
sum(data3)
fivenum(data3)
fivenum(data3)
summary(data3)

aver <- mean(data3)
data3

aver <- round(aver, digits = 1)

bp <- barplot(data2$HR, col = rainbow(25), cex.names = 0.7, las = 2, name.arg = data2$name, ylim = c(0, 50))

abline(h = aver, col = 'blue')

text(x = aver - 7, y = 20, col = 'black', cex = 0.8, labels = paste(aver, '홈런 평균'))