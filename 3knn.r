library(ISLR)
library(class)
data = Default
data$default = ifelse(data$default == 'No', 0, 1)
knn(data[,c(3, 4)], test = data.frame(balance = 10000, income=50000), cl = data$default, k = 3)
