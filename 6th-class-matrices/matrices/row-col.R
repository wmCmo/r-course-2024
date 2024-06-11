letter_list = c()

for (letter in letters) {
  letter_list[length(letter_list) + 1] = letter
}

mat = matrix(letter_list, nrow = 2)

print('Print by rows')
for (row in 1:nrow(mat)) {
  for (col in 1:ncol(mat)) {
    print(mat[row, col])
  }
}

print('Print by columns')
for (col in 1:ncol(mat)) {
  for (row in 1:nrow(mat)) {
    print(mat[row, col])
  }
}