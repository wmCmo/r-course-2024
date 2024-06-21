df = read.csv('./training/data/retailstore_customers.csv')
df['Gender'] = ifelse(df$Gender == 'Male', 1, 0)

png('./training/data/paying.png')

plot(df$Annual_Income, df$Spending_Score.1.100.)

dev.off()