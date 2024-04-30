exponent = function(x) {
  return ( 5 + log2(x) * exp(x) - (1.5*x^2))
}

from = as.integer(readline("Start from:"))
until = as.integer(readline("Until:"))
dif = as.integer(readline("Step to take:"))

inputs = seq(from, until, by=dif)

outputs = c()

for (inpt in 1:length(inputs)) {
  outputs[length(outputs) + 1] = exponent(inpt)
  cat(inputs[inpt], outputs[inpt], '\n')
}
