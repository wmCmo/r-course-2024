info = read.csv('./8th-class/data/input.csv')

sals = info$salary

dict = list()

keys = c('1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.')
values = c('one',
           'two',
           'three',
           'four',
           'five',
           'six',
           'seven',
           'eight',
           'nine',
           'zero',
           'dot')

for (i in seq_along(keys)) {
  key = keys[i]
  value = values[i]
  dict[key] = value
}

out = c()
for (i in seq_along(sals)) {
  sal = as.character(sals[i])
  print(sal)
  output = ""
  for (j in seq_len(nchar(sal))) {
    char = substr(sal, j, j)
    num = dict[char][[1]]
    output = paste(output, num)
    print(output)
  }
  out[length(out) + 1] = output
}

info$salary = out
print(info)
