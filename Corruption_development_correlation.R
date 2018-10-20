library(ggplot2)
library(data.table)

df <- fread(input = "/Users/vimal/Machine-learning/R-Course-HTML-Notes/R-for-Data-Science-and-Machine-Learning/Training Exercises/Capstone and Data Viz Projects/Data Visualization Project/Economist_Assignment_Data.csv")
new.df <- data.frame(df)

pl <- ggplot(new.df, aes(x = CPI, y = HDI, colour = Region)) + geom_point(shape = 1, size = 5)
pl2 <-  pl + geom_smooth(aes(group=1), method = 'lm', formula = y ~ log(x), se = FALSE, color = 'red')

pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)

pl4 <- pl3 + theme_bw()

pl5 <- pl4 + scale_x_continuous(name = new.df$CPI, limits = c(1, 10), breaks = 1:10) + scale_y_continuous(name = new.df$HDI, limits = c(0.2, 1))

pl5 + labs(title = "New plot title")