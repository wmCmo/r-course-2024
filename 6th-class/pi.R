
#This was is much longer than your code.
#I was struggling to deal with the lists, but anyway here we are.

sample_size = as.integer(readline("Sample size here:"))

x.cord = c(runif(sample_size, 0, 1))
y.cord = c(runif(sample_size,0,1))

points = list()

for (point in 1:length(x.cord)) {
  point = list(x.cord[point], y.cord[point])
  points[[length(points) + 1]] = point
}

in_circle = 0
for (point in points) {
  if ((point[[1]]^2 + point[[2]]^2) <=1){
    in_circle = in_circle + 1
  }
}

pi_estimate = in_circle/sample_size*4

print(pi_estimate)

#Last sample size was 1000000 and we got 3.141582 so it was getting pretty close. This is so cool.
