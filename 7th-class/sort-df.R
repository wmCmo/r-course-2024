df <- data.frame(
  names = c("Alice", "Bob", "Chalie", "Dave", "Emma", "Felix", "Grek", "Harry"),
  height = c(189, 183, 181, 174, 182, 170, 163, 190)
)

sort_df <- function(df, is_ascending) {
  print(df[order(df$height, decreasing = is_ascending), ])
}

sort_df(df, FALSE)
