values = c(rep(100 / 6, each = 6))

png(filename = './9th-class/chart/hazard.png')

pie(
  values,
  labels = NA,
  edge = 200,
  border = FALSE,
  col = c(rep(c('red', 'green'), 3))
)

dev.off()
