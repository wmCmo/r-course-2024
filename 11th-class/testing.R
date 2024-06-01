df = read.csv('./11th-class/data/xy.csv')

model = lm(df$Y ~ df$X, data = df)

png(filename = './11th-class/data/line.png')

plot(df$X, df$Y)
lines(df$X, df$X * 16 - 27.41, col = 'red')

y_pred = df$X * 16 - 27.41

dev.off()

r_squared = function(y, y_pred) {
  y_mean = mean(y)
  return (1 - (sum((y - y_pred) ^ 2) / sum((
    y - rep(y_mean, length(y))
  ) ^ 2)))
}

msd = function(y, y_pred) {
  y_mean = mean(y)
  return ((1 / length(y)) * sum((y - y_pred) ^ 2))
}
