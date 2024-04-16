left = as.integer(readline("Input the left boundary:"))
right = as.integer(readline("Input the right boundary:"))
step = as.integer(readline("Input the step:"))

y_function = function(x) {
  return ((log(x) * x^2)/exp(x))
}

while (left <= right) {
  cat(left, y_function(left), "\n")
  left = left + step
}


