inpt <- mtcars

models = list()

# for (i in seq_len(ncol(inpt))) {
#   if (i==4 | i == 1) {
#     next
#   }
#   model = lm(as.formula(paste(colnames(inpt)[1], "~", "wt + cyl + ", colnames(inpt)[i + 1])), data = inpt)
#   print(summary(model))
# }

# p = c(6.113e-10, 9.38*10^-10, 1.788*10^-7, 1.776*10^-5, 1.294*10^-10, 0.01708, 3.416*10^-5, 0.000285, 0.005401, 0.001084)



# p = c(6.809e-12, 2.744e-10, 9.109e-12, 1.294e-10, 9.395e-12, 6.818e-11, 1.579e-09, 1.488e-09, 1.255e-10)

p = c(5.399e-11, 2.184e-11, 6.569e-11, 2.979e-11, 6.24e-11, 6.51e-11, 5.262e-11, 2.322e-11)

model = lm(mpg~wt+cyl+hp, data=inpt)