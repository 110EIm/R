var1 <- c(1, 2, 3, 4, 5)
plot(var1)

var2 <- c(2, 2, 2)
plot(var2)

x <- 1:5
y <- 5:1

plot(x, y)

plot(x, y, xlim = c(1, 10), ylim = c(1, 5))

v1 <- c(100, 130, 120, 160, 150)
plot(v1, type = 'o', col = 'red', ylim = c(0, 200),
     axes = FALSE, ann = FALSE, pch = '#', cex = 3.1)

axis(1, at = 1:5, lab = c('MON', 'TUE', 'WED', 'THU', 'FRI'))
axis(2, ylim = c(0, 200))

title(main = 'FRUIT', col.main = 'red', font.main = 4)
title(xlab = 'DAY', col.lab = 'black')
title(ylab = 'PRICE', col.lab = 'blue')

plot.new()

par(mfrow = c(2, 3))
plot(v1, type = "o")
plot(v1, type = "s")
plot(v1, type = "l")

pie(v1)

plot(v1, type = "o")
barplot(v1)

par(mfrow = c(1, 1))


v1 <- 1:5
v2 <- 5:1
v3 <- 3:7

plot(v1, type = 's', col = 'red', ylim = c(1, 7))
par(new = TRUE)
plot(v2, type = 'o', col = 'blue', ylim = c(1, 7))
par(new = TRUE)
plot(v3, type = 'l', col = 'green', ylim = c(1, 7))

plot(v1, type = 's', col = 'red', ylim = c(1, 7))
lines(v2, type = 'o', col = 'blue')
lines(v3, type = 'l', col = 'green')

legend(4, 9, c('v1', 'v2', 'v3'), cex = 0.9, col = c('red', 'blue', 'green'), lty = 1)