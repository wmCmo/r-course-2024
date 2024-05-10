v_list <- list(
  c(1, 3, 5, 7, 9, 1, 3, 5, 7, 9),
  c(2, 4, 6, 8, 10, 50, 2, 6),
  c(123, 1234, 12345)
)

remove_and_order <- function(list_of_vecs) {
  lengths <- c()
  for (i in seq_along(list_of_vecs)) {
    vec <- list_of_vecs[[i]]
    vec <- vec[!duplicated(vec)]
    list_of_vecs[[i]] <- vec
    lengths[i] <- length(vec)
  }
  return(sort(list_of_vecs[lengths == max(lengths)][[1]], decreasing = TRUE))
}

print(remove_and_order(v_list))
