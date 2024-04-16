y_function = function(x_min, x_max, step) {
  return ((log(x_min) * x_min^2)/exp(x_min))
}

call_y = function(x_min=0, x_max=20, step=2) {
  while (x_min <= x_max) {
    cat(x_min, y_function(x_min, x_max, step), "\n")
    x_min = x_min + step
  }
}

call_y()
