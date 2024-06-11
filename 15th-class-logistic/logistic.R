library(datasets)

iris_data = iris

iris_small = iris_data[iris_data$Species %in% c("versicolor", "virginica"), ]

glm_out = glm(
  Species ~ Petal.Length + Petal.Width,
  data = iris_small,
  family = binomial
)

color = ifelse(iris_small$Species == "versicolor", "blue", "red")

png(filename = './15th-class/chart/flower.png')

plot(iris_small$Petal.Length, iris_small$Petal.Width, col=color)

dev.off()

