# GGplot

library(ggplot2)
#Scatter plot showing variation of total sleep wrt bodywt using msleep data
ggplot(data = msleep, aes(x = bodywt, y = sleep_total))+geom_point()
#color based on vore
ggplot(data = msleep, aes(x = bodywt, y = sleep_total, col=vore))+geom_point() 
#plotting total sleep wrt log transformed value of body
scatterplot <- ggplot(data=msleep, aes(x=log(bodywt), y=sleep_total,col=vore))+geom_point()

ggplot(data=msleep, aes(x=log(bodywt), y=sleep_total,col=vore))+geom_point(size=5) 
+ xlab("Log Body Weight") + ylab("Total Hours Sleep") + ggtitle("Some Sleep Data")

scatterplot <- ggplot(data=msleep, aes(x=log(bodywt), y=sleep_total,col=vore))+geom_point(size=5) 
+ xlab("Log Body Weight") + ylab("Total Hours Sleep") + ggtitle("Some Sleep Data")

ggplot(data=msleep, aes(x=log(bodywt), y=sleep_total,col=vore))+geom_point(size=5) + xlab("bodywt") + ylab("sleep_total") + ggtitle("Some Sleep Data")+ theme_set(theme_bw(base_size=18)) +
scale_colour_brewer(palette="Set1")+theme(plot.title=element_text(vjust=+2))+scale_x_continuous(breaks=-5:10)

#Strip chart showing variation of category vore wrt bodywt using msleep data
ggplot(msleep, aes(vore, sleep_total)) + geom_point()     
ggplot(msleep, aes(vore,sleep_total,col=vore))+geom_jitter(position = position_jitter(width = 0.2),size=5)
stripchart<-ggplot(msleep, aes(vore,sleep_total,col=vore))+geom_jitter(position = position_jitter(width = 0.2),size=5)
stripchart+geom_errorbar()

#Plotting histogram/bar plot/box plot using festival data 
library(data.table)
festival.data <- fread("Festival.txt",header=T) %>% as.tibble()
ggplot(aes())