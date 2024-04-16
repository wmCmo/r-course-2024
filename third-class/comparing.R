
poly_function = function(x) {
  return (1.5*x^3-5*x^2-0.5*x+5)
}

exp_function = function(x) {
  return (exp(x-2))
}

ln_function = function(x) {
  return (2*log(x))
}

input = as.integer(readline("Give us the X:"))
cat("The max output from the given input (", input, ") is", max(poly_function(input), exp_function(input), ln_function(input)))