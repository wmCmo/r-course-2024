rec_func = function(x) {
    if (x==0) {
        return(x)
    }
    x = x-1
    return (rec_func(x))

}


get_fib = function(x, orders=c(0,1)) {
  if (is.na(orders[x])) {
    a = get_fib(x-1, orders)
    b = get_fib(x-2, orders)
    orders[x] = as.integer(a + b)
    return(orders[x])
  } else {
    return (orders[x])
  }
}

print(get_fib(13))
