d <- data.frame(x = c(1, 2, 3, 4, 5),
                y = c(2, 4, 6, 8 ,10),
                z = c('M', 'F', 'M', 'F', 'M'))
d
d$v <- c(3, 6, 9, 12, 15)
d

d$x
d[1, 2]
d[c(1, 3), 2]
d[-1, -c[2, 3]]
d[, c('x', y)]
d[, c('x')]

d[, c('x'), drop = FALSE]

str(d)
head(d)