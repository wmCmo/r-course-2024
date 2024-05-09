a <- as.integer(readline("Enter A:"))
b <- as.integer(readline("Enter B:"))

is_prime <- function(x) {
  if (x < 2) {
    return(FALSE)
  }
  for (i in 2:(x - 1)) {
    if ((x %% i) == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

primes <- c()

for (i in a + 1:b - 1) {
  if (is_prime(i)) {
    primes[length(primes) + 1] <- i
  }
}

print(sort(primes, decreasing = TRUE))
