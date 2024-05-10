n = as.integer(readline('Enter you N:'))

arr = c()

is_prime = function(x) {
  if (x < 2) {
    return(FALSE)
  }
  for (i in 2:x) {
    if (x%%i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

find_prime = function(n) {
  result = c()
  for (i in 2:n) {
    print('hello')
    if (is_prime(i)) {
      result[length(result) + 1] = i
      
    }
  }
  return (result)
}

print(find_prime(n))
