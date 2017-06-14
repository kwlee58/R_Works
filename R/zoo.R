install.packages("zoo", repos = "https://cran.rstudio.com")
library(zoo)
x.Date <- as.Date("2003-02-01") + c(1, 3, 7, 9, 14) - 1
x.Date
class(x.Date)
x <- zoo(rnorm(5), x.Date)
x
class(x)
plot(x)
y <- zoo(matrix(1:12, 4, 3), 0:10)
y
plot(y)
zooreg(1:10, frequency = 4, start = c(1952, 2))
as.zoo(ts(1:10, frequency = 4, start = c(1952, 2)))
zr <- zooreg(rnorm(10), frequency = 4, start = c(1952, 2))
plot(zr)
