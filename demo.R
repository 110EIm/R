
install.packages("KoNLP")
install.packages("wordcloud")

library(KoNLP)
library(wordcloud)

useSejongDic()
mergeUserDic(data.frame("주상절리","ncn"))
txt <- readLines("resources/jeju.txt")

place <- sapply(txt,extractNoun,USE.NAMES=F)
place  

head(unlist(place), 30)
c <- unlist(place)
place <- unlist(place)
place <- Filter(function(x) {
  nchar(x) >= 2
}, c)
place
write(unlist(place), "jeju_2.txt")
rev <- read.table("jeju_2.txt")
nrow(rev)
wordcount <- table(rev)
head(sort(wordcount, decreasing = T), 10)
library(RColorBrewer)
palete <- brewer.pal(9, "Set1")

wordcloud(names(wordcount), freq = wordcount, scale = c(5, 1), rot.per = 0.25, min.freq = 1, random.order = F, random.color = T, colors = palete)