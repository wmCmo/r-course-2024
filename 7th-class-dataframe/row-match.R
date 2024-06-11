class_a <- data.frame(
  names = c("Alice", "Bob", "Chalie", "Dave", "Emma", "Felix", "Grek", "Harry"),
  height = c(189, 183, 181, 174, 182, 170, 163, 190)
)

class_b <- data.frame(
  height = c(190, 170, 160, 165, 162, 163, 190),
  names = c("Harry", "Ivan", "Jake", "Kevin", "Luna", "Mary", "Harry")
)

row_match <- function(df_1, df_2) {
  if (ncol(df_1) != ncol(df_2)) {
    cat("Error: The number of columns does not match")
  }
  for (row1 in 1:nrow(df_1)) {
    for (row2 in 1:nrow(df_2)) {
      if (all(c(df_1[row1, ] == df_2[row2, ]))) {
        cat("The matched rows are line", row1, "of the first dataframe and row", row2, "of the second dataframe.")
      }
    }
  }
}

row_match(class_a, class_b)
