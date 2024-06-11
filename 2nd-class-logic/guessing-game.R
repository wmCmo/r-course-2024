
from = as.integer(readline("Starting from:"))
until = as.integer(readline("Until:"))

target = sample(from:until, 1)
correct = FALSE
turn = 0

while (!correct) {
  guess = as.integer(readline("Put your guess here:"))
  turn = turn + 1
  if (guess < target) {
    cat(guess, "is less than my number.")
  } else if (guess > target) {
    cat(guess, "is higher than my number.")
  } else {
    if (turn == 1) {
      noun = "guess."
    } else {
      noun = "guesses."
    }
    cat("Congratulations!", guess, "is the correct number! And it took you", turn, noun)
    correct = TRUE
  }
}
