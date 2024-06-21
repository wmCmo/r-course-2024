df = read.csv('./training/data/retailstore_customers.csv')

n_col = ncol(df)
n_row = nrow(df)
col_names = colnames(df)

cat('Number of columns:', n_col, '\n')
cat('Column names:', col_names, '\n')
cat('Number of rows', n_row, '\n')

for (i in seq_len(ncol(df))) {
  col = df[, i]
  col_name = col_names[i]
  if (typeof(col) == 'double' | typeof(col) == 'integer') {
    cat('Statistical summary of col', col_name, '-> ')
    cat(
      'Min:',
      min(col),
      'Max:',
      max(col),
      'Average',
      mean(col),
      'Standard Deviation',
      sd(col),
      '\n'
    )
    
  }
}
