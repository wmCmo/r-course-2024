initial_data = read.csv('./8th-class/data/InitialData.csv')

round_func = function(x) {
  return (round(x, digits = 3))
}

ys = initial_data$Ys

new_y = c()
for (i in seq_along(ys)) {
  y = ys[i]
  new_y[length(new_y) + 1] = round_func(y)
}

relations = initial_data$Relation


new_relation = c()

for (j in seq_along(relations)) {
  relation = relations[j]
  long = strsplit(relation, ' ')[[1]][1]
  long = round_func(as.double(long))
  the_rest = paste(strsplit(relation, ' ')[[1]][-1], collapse = ' ')
  new_relation[length(new_relation) + 1] = paste(as.character(round_func(as.double(long))), the_rest)
}

initial_data$Ys = new_y
initial_data$Relation = new_relation

write.csv(initial_data, './8th-class/data/output.csv')
