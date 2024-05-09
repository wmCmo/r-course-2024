names <- c("Alice", "Bob", "Chalie", "Dave", "Emma", "Felix", "Grek", "Harry")
height <- c(189, 183, 181, 174, 182, 170, 163, 190)
weight <- c(64, 56, 82, 62, 55, 81, 52, 69)

name_height_weight <- function(n, h, w) {
  df <- data.frame(
    names = n,
    height = h,
    weight = w
  )
  df <- (df[order(df$weight, decreasing = TRUE), ])
  print(df)
  sorted_list <- list(df$names, df$height, df$weight)
  print(sorted_list)
}

name_height_weight(names, height, weight)
