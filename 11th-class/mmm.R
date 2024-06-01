# mmm = min, max mean

df = read.csv('./11th-class/data/dataset.csv')

df$X = NULL

x = df$Size
y = df$Price

line = 2498.61*x + min(df$Size)

png(filename = './11th-class/data/graph.png')

min_model = plot(x,y)

lines(x, line, col='red')

dev.off()
