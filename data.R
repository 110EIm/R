data(iris)
iris
head(iris)
summary(iris)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
sd(iris$Sepal.Length)
var(iris$Sepal.Length)
quantile(iris$Sepal.Length, 1/4)
max(iris$Sepal.Length)
min(iris$Sepal.Length)

install.packages("MASS")
library(MASS)
data(Animals)
Animals
mean(Animals$body)
mean(Animals$brain)

install.packages("Hmisc")
library(Hmisc)
data(mtcars)
mtcars
drat <- mtcars$drat
disp <- mtcars$disp
plot(drat, disp)
cor(drat, disp)
cor(mtcars)
cov(mtcars)