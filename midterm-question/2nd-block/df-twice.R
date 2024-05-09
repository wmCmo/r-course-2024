a <- c(6, 3, 5, 4, 9)
b <- c(10, 4, 8, 7, 5)
c <- c(2, 4, 6, 3, 10)

df <- data.frame(
  a = a,
  b = b,
  c = c
)


df_twice <- function(df) {
  counter <- list()
  for (i in seq_along(df)) {
    col <- df[[i]]
    for (val in col) {
      key <- as.character(val)
      if (key %in% names(counter)) {
        counter[[key]] <- counter[[key]] + 1
      } else {
        counter[key] <- 1
      }
    }
  }
  print(counter[counter == 2])
}

df_twice(df)
