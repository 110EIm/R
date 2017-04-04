v1 <- c(100, 120, 140, 160, 180)
v2 <- c(120, 130, 150, 140, 180)
v3 <- c(140, 170, 120, 110, 150)
day <- c('MON', 'TUE', 'WED', 'THU', 'FRI')

qty <- data.frame(BANANA = v1, CHERRY = v2, ORANGE = v3)
qty

barplot(as.matrix(qty), main = "Fruit's sales QTY", beside = T, col = rainbow(nrow(qty)), ylim = c(0, 400))


legend(14, 400, day, cex = 0.8, fill = rainbow(nrow(qty)))

barplot(t(qty), main = "Fruit's sales QTY", ylim = c(0, 900), col = rainbow(length(qty)),
        space = 0.1, cex.axis = 0.8, las = 1, names.arg = day, cex = 0.8)
legend(0.2, 800, names(qty), cex = 0.7, fill = rainbow(length(qty)))


peach <- c(180, 200, 250, 190, 170)
colors <- c()

# TODO simplify
for(i in 1:length(peach)) {
  if(peach[i] >= 200)
    colors <- c(colors, 'red')
  else if(peach[i] >= 180)
    colors <- c(colors, 'yellow')
  else
    colors <- c(colors, 'green')
}

barplot(peach, main = 'Peach Sales QTY', names.arg = c('MON', 'TUE', 'WED', 'THU', 'FRI'), col = colors)
