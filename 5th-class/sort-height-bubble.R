namae = c('Alice', 'Bob', 'Chalie', 'Dave')
height = c(185, 162, 174, 190)

for (i in 1:length(height)) {
  for (j in 1:(length(height)-1)) {
    if (height[j] > height[j+1]) {
      temp = height[j]
      height[j] = height[j+1]
      height[j+1] = temp
      tempo = namae[j]
      namae[j] = namae[j+1]
      namae[j+1] = tempo
    }
  }
}
print(height)
print(namae)

for (i in 1:length(height)) {
  cat(i, namae[i], height[i], "\n")
}
