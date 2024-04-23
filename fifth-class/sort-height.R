df = data.frame(
  names=c('Alice', 'Bob', 'Charlie', 'Dave'),
  height=c(185, 162, 174, 190)
)

print(df[order(df$height), ])
