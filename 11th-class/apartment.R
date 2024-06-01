df = read.csv('./11th-class/data/dataset.csv')
df$X = NULL
alpha = 0.2

the_formula = 'Price ~ '

running = TRUE

col_names = colnames(df)[-1]

while (running) {
  candidates = c()
  ps = c()
  for (i in seq_along(col_names)) {
    colname = col_names[i]
    test_formula = paste(the_formula, "+", colname)
    model = lm(formula = test_formula, data = df)
    coeff = summary(model)$coefficient
    p = coeff[, 4][[nrow(coeff)]]
    candidates[length(candidates) + 1] = colname
    ps[length(ps) + 1] = p
  }
  min_p = ps == min(ps)
  p = ps[min_p]
  if ((p > alpha) |
      ((nrow(df) / nrow(coeff)) < 10) | (length(col_names) == 0)) {
    running = FALSE
  } else {
    the_formula = paste(the_formula, "+", candidates[ps == min(ps)])
    col_names = col_names[-which(min_p)]
  }
}

model = lm(the_formula, data = df)
