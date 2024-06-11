until = as.integer(readline("Run until:"))
divisor1 = as.integer(readline("First divisor:"))
divisor2 = as.integer(readline("Second divisor:"))
divisors = c(divisor1, divisor2)

for (i in 1:until) {
  if (any(divisors==0)) {
    cat("You cannot divide by 0.")
    break
  }
  remainder = c(i%%divisor1, i%%divisor2)
  if (all(remainder==0)) {
    print("Bizz Buzz")
  } else if (remainder[1] == 0) {
    print("Bizz")
  } else if (remainder[2] == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}
