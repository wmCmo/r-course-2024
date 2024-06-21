x = as.double(readline("X:"))

equation = function(x) {
  return (exp(sqrt(abs(10)))*sin(x-5))
}

cat('The solution of', x, 'to the equation is', equation(x))