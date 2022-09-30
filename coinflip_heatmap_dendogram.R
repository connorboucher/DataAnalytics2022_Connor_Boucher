set.seed(12345)
help(par)

par(mar = rep(0.2,4))
dataMat <- matrix(rnorm(400), nrow = 40)
image(1:10, 1:40, t(dataMat)[,nrow(dataMat):1])

help(heatmap)
help(rep)

par(mar = rep(0.2,4))
heatmap(dataMat)

help(rbinom)

set.seed(678910)
for(i in 1:40){
  coinFlip <- rbinom(1, size=1, prob=0.5)
 
  if(coinFlip){
    dataMat[i, ] <- dataMat[i, ] + rep(c(0,3), each=5)
  } 
}

par(mar = rep(0.2,4))
image(1:10, 1:40, t(dataMat)[,nrow(dataMat):1])

par(mar = rep(0.2,4))
heatmap(dataMat)

hh <- hclust(dist(dataMat))
dataMatOrdered <- dataMat[hh$order,]
par(mfrow = c(1,3))
image(t(dataMatOrdered)[, nrow(dataMatOrdered):1])
plot(rowMeans(dataMatOrdered), 40:1, xlab = "The Row Mean", ylab = "Row", pch=19)
plot(colMeans(dataMatOrdered), xlab = "Column", ylab = "Column Mean", pch=19)
