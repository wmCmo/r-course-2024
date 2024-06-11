name = readline("Your name:")
current_age = as.integer(readline("Your current age:"))

birth_year = 2024 - current_age

age60_year = birth_year + 60

if (current_age > 60) {
  
  pass60 = current_age - 60
  age60_year = 2024 - pass60
  
  cat("Good day ", name, "さん, you're now", current_age, "and you already reached 60 years old in the year", age60_year)

} else if (current_age == 60) {
  
  cat("Good day ", name, "さん, you're now", current_age, "exactly in this year! Congratulations.")

} else {
    
  cat("Good day ", name, "さん, you're now", current_age, "years old and you will be 60 in the year", age60_year)

}
