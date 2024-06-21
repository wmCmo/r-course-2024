input = readline('Input:')
output = ''
weird = 'å∫ç∂´ƒ©˙ˆ∆˚¬µ˜øπœ®ß†¨√∑≈¥Ω'
for (i in seq_len(nchar(input))) {
  char = tolower(substr(input, i, i))
  index = which(letters == char)
  if (char %in% letters) {
    output = paste(output, substr(weird, index, index) , sep = '')
  } else {
    output = paste(output, char, sep = '')
  }
}

print(output)