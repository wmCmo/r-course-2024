first_func = function(x) {
  return ((1.5 * (x ^ 3)) - (5 * (x ^ 2)) - (0.5 * x) + 5)
}

second_func = function(x) {
  return (exp(x - 2))
}

third_func = function(x) {
  return (2 * log(x))
}

seqs = 0.1:10.7

first_line = first_func(seqs)
second_line = second_func(seqs)
third_line = third_func(seqs)

png(filename = './9th-class/chart/three-lines.png')

plot(
  seqs,
  first_line,
  type = 'o',
  ylim = c(third_line[length(third_line)], second_line[length(second_line)]),
  ylab = 'y'
)
lines(seqs, second_line, type = 'o')
lines(seqs, third_line, type = 'o')

dev.off()
