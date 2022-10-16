require(mlbench)
data(HouseVotes84)
library(klaR)
model <- naiveBayes(Class ~ ., data = HouseVotes84)
predict(model, HouseVotes84[1:10,-1])

table(predict(model, HouseVotes84[,-1]), HouseVotes84$Class)
