data = read.csv('./10th-class/data/house-price.csv')

kawagoe = data[which(data$location == 'Kawagoe'), ]

relation = lm(kawagoe$price ~ kawagoe$space)

png('./10th-class/data/plot.png')

plot(
  kawagoe$space,
  kawagoe$price,
  col = 'green',
  abline(relation),
  main = 'Relation: House Price ~ House Space (Kawagoe)',
  xlab = 'Space',
  ylab = 'Price'
)

dev.off()
