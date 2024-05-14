y_func = function(x, z) {
  return (5 + (1.5 * x) + (3 * z) + (4.5 * x * z))
}

Xs = sample(0:20, 100, replace = TRUE)
Zs = sample(0:20, 100, replace = TRUE)
Ys = c()


for (i in seq_along(Xs)) {
  x = Xs[i]
  z = Zs[i]
  y = y_func(x, z)
  Ys[length(Ys) + 1] = y
}

new_df = data.frame(Xs = Xs, Zs = Zs, Ys = Ys)

write.csv(new_df, './8th-class/data/y-func.csv')
