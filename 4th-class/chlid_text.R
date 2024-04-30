inpt = tolower(readline("Input your text here:"))

outpt = ""

for (i in 1:nchar(inpt)) {
  if (i %%2 == 1) {
    outpt = paste(outpt,toupper(substring(inpt, i, i)), sep = "")
  } else {
    outpt = paste(outpt, substring(inpt, i, i), sep = "")
  }
}

print(outpt)