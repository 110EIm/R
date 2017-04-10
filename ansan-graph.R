library(ggplot2)
library(ggmap)

loc <- read.csv('resources/ansan.csv', header = T)

mean(loc$남성용.대변기수)

kor <- get_map('ansan-si', zoom = 14, maptype = 'roadmap')
kor <- get_map(c(126.831529, 37.342149), zoom = 14, maptype = 'roadmap')
kor.map <- ggmap(kor) + geom_point(data = loc, aes(x = LON, y = LAT), size = 3, alpha = 0.7, col = 'red')
kor.map + geom_text(data = loc, aes(x = LON, y = LAT + 0.005, label =  화장실명), size = 2)


loc <- read.csv('resources/천안여행코스.csv', header = T)
kor <- get_map('seodaemun gu', zoom = 11, maptype = 'roadmap')
kor.map <- ggmap(kor) + geom_point(data = loc, aes(x = LON, y = LAT), size = 3, alpha = 0.7, col = 'red')

kor.map + geom_path(data = loc, aes(x = LON, y = LAT), size = 1, linetype = 2, col = 'green') + geom_text(data = loc, aes(x = LON, y = LAT + 0.005, label = 장소), size = 2)


loc <- read.csv('resources/서울지하철3호선역위경도정보.csv', header = T)
kor <- get_map('seodaemun gu', zoom = 11, maptype = 'roadmap')
kor.map <- ggmap(kor) + geom_point(data = loc, aes(x = LON, y = LAT), size = 3, alpha = 0.7, col = 'red')

kor.map + geom_path(data = loc, aes(x = LON, y = LAT), size = 1, linetype = 2, col = 'green') + geom_text(data = loc, aes(x = LON, y = LAT + 0.005, label = 역명), size = 2)