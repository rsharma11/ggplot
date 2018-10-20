library(ggplot2)
library(ggthemes)
head(mpg)

############# Histogram of hwy mpg values:
ggplot(mpg, aes(x = hwy)) + geom_histogram(fill = 'pink')

############# Barplot of car counts per manufacturer with color defined by cyl count:
ggplot(mpg, aes(x = manufacturer)) + geom_bar(aes(fill = factor(cyl)))

############# Scatter plot:
data("txhousing")
ggplot(txhousing, aes(x = sales, y = volume)) +
  geom_point(aes(alpha= 50), color = 'blue') +
    geom_smooth(color = 'red')

  
  
  
  
  