size = as.integer(readline("Size of the matrix:"))

vec = c()

ones = seq(1, size^2, by=size+1)

for (i in 1:size^2) {
  if (i %in% ones) {
    vec[length(vec) + 1] = 1
  } else {
    vec[length(vec) + 1] = 0
  }
}

mat = matrix(vec, nrow=size, ncol=size)
print(mat)
