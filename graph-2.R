x <- 1:5

barplot(x)

barplot(x, horiz = TRUE)

x <- matrix(5:2, 2, 2)

names <- c('kim', 'park')
color <- c('green', 'yellow')


barplot(x, names = names, col = color)

barplot(x, names = names, col = color, ylim = c(0, 12))
barplot(x, names = names, col = color, ylim = c(0, 12), beside = TRUE)

barplot(x, names = names, col = color, ylim = c(0, 12), horiz = TRUE)
barplot(x, names = names, col = color, ylim = c(0, 12), horiz = TRUE, beside = TRUE)
