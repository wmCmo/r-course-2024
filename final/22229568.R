df = read.csv('./DataForFinalTask.csv')

Equation_result = function(x) {
  y = (exp(x ^ 2) * (-(1 / x) + (2 * x) - (3 * (x ^ 2)) + 4))
  return(y)
}

Matrix_insides = function(mat) {
  max_col = c()
  for (i in seq_len(ncol(mat))) {
    column = mat[, i]
    if (!(typeof(column) == 'double' |
          typeof(column) == 'integer')) {
      next
    }
    max_value = max(abs(column))
    max_col = c(max_col, max_value)
  }
  return(c(nrow(mat), ncol(mat), max(max_col)))
}

DF_explorer_A = function(dataframe) {
  random_index = sample(nrow(dataframe), 1)
  return(dataframe[random_index, ])
}

DF_explorer_B = function(dataframe, x) {
  row_has_x = c()
  for (i in seq_len(nrow(dataframe))) {
    row_i = dataframe[i, ]
    if (any(row_i == x)) {
      row_has_x = c(row_has_x, i)
    }
  }
  return(dataframe[row_has_x, ])
}

Text_replacer = function(string) {
  output = ''
  for (i in seq_len(nchar(string))) {
    letter = tolower(substr(string, i, i))
    if (letter %in% letters) {
      output = paste(output, which(letters == letter), sep = '')
    } else {
      output = paste(output, letter, sep = '')
    }
  }
  return(output)
}

Two_popular_letters = function(string) {
  chars = c()
  count = c()
  for (i in seq_len(nchar(string))) {
    letter = tolower(substr(string, i, i))
    if (letter %in% letters) {
      index = which(letters == letter)
      if (letter %in% chars) {
        chars_index = which(chars == letter)
        count[chars_index] = count[chars_index] + 1
      } else {
        chars = c(chars, letter)
        count = c(count, 1)
      }
    }
  }
  max_index = which(count == max(count))
  if (length(max_index) > 2) {
    max_index = max_index[1:2]
  }
  return(chars[max_index])
}

Three_curves_graph = function(v = c(bl1, bl0, bs2, bs1, bs0, bc3, bs2, bc1, bc0, Xmin, Xmax)) {
  sequences = v[10]:v[11]
  linear = function(bl0, bl1, x) {
    return(bl0 + (bl1 * x))
  }
  
  squared = function(bs0, bs1, bs2, x) {
    return(bs0 + (bs1 * x) + (bs2 * (x ^ 2)))
  }
  
  cubic = function(bc0, bc1, bc2, bc3, x) {
    return(bc0 + (bc1 * x) + (bc2 * (x ^ 2)) + (bc3 + x ^ 3))
  }
  
  cube = cubic(v[9], v[8], v[7], v[6], sequences)
  
  png(filename = './Three-curves.png')
  
  plot(sequences, cube, col = 'green')
  points(sequences, squared(v[5], v[4], v[3], sequences) , col = 'red')
  points(sequences, linear(v[2], v[1], sequences), col = 'blue')
  
  legend(
    1,
    max(cube),
    legend = c('Cubic', 'Squared', 'Linear'),
    col = c('green', 'red', 'blue'),
    pch = c(19, 19)
  )
  dev.off()
}

Data_analysis_A = function(df) {
  models = c()
  col_names = colnames(df)[-1]
  for (i in 2:seq_len(ncol(df) - 1)) {
    the_formula = paste('Price ~', col_names[i])
    model = lm(formula = as.formula(the_formula), data = df)
    models = c(models, model)
  }
}
