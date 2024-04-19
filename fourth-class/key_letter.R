
inpt = readline("Input your text here:")
key_letter = tolower(readline("Input your key letter here:"))

count = 0
for (i in 1:nchar(inpt)) {
  if (substring(tolower(inpt), i, i) == key_letter) {
    count = count + 1
  }
}

noun = "times."
if (count <= 1) {
  noun = "time."
}

cat("There are", key_letter, "in", inpt, count, noun)