genesis_mat <- matrix(seq(from = 1, to = 20), nrow = 4)

nd_and_nd <- function(mat) {
  new_mat <- c()
  for (i in seq_len(ncol(row))) {
    if ((i + 3) %% 2 == 0) {
      for (j in seq_len(ncol(mat))) {
        val <- mat[i, j]
        if (j %% 2 == 0) {
          new_mat[length(new_mat) + 1] <- val
        }
      }
    }
  }
  return(matrix(new_mat, nrow = 2))
}

print(nd_and_nd(genesis_mat))
