df = read.csv('./training/data/weather.csv')

correlaiton = cor(df$MaxTemp, df$MinTemp)

print(correlaiton)