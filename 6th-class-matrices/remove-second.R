letter_list = list()

for (letter in letters) {
  letter_list[length(letter_list) + 1] = letter
}

cat('letter_list has', length(letter_list), 'elements \n')

len = length(letter_list)

for (i in 1:len) {
  if (len%%2 == 0) {
  letter_list = letter_list[-len]
  }
  len = len - 1
}

print(letter_list)