prime = c(2, 3, 5, 7, 11, 13, 17, 19)
num = 11

check = function(vec, num) {
  if (num %in% vec) {
    indx = which(vec == num)[1]
    vec = vec[-indx]
  } else {
    result = c(prime[1:(length(prime)/2)], num, c(prime[((length(prime)/2)+1): length(prime)]))
    
  }
}

print(check(prime, num))
