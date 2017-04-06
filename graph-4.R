academy <- read.csv('resources/academy.csv', stringsAsFactors = FALSE, header = FALSE)
academy
academy <- academy[-1]
head(academy)

dist_academy <- dist(academy, method = 'euclidean')
dist_academy

two_coord <- cmdscale(dist_academy)
plot(two_coord, type = 'n')
text(two_coord, as.charactor(1:52))

food <- read.csv('resources/food.csv', stringsAsFactors = TRUE, header = TRUE)
food <- food[1]
head(food)

food.mult <- t(as.matrix(food)) %*% as.matrix(food)
food.mult

dist.food <- dist(food.mult)
dist.food

two_coord2 <- cmdscale(dist.food)
plot(two_coord2, type = 'n')
text(two_coord2, rownames(food.mult))
