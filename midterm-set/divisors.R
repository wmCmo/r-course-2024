n = as.integer(readline('Input for N:'))

divisors = c()

for (i in 1:n) {
    if (n%%i == 0) {
        divisors[length(divisors) + 1] = i
    }
}

print(divisors)