
library(graphics)
library(ggplot2)
library(stringr)

setwd("C:/Users/Sandy/Documents/ge2p") 
mydata <- read.delim("data_22my.txt", header=TRUE, sep = "\t", quote = "\"",
                     dec = ",", fill = TRUE, comment.char = "")
mydata$r1x
plot(mydata$r1y, mydata$uabv)

p <- ggplot(data = mydata, aes(x = uabv , y = r1y))
p <- p + geom_line(size = 1, coloure="black") + theme_bw()
p <- p + geom_point(size = 6, shape=20, color ="blue" )
p <- p + theme(panel.grid.major = element_line(color ="black",linetype ="dotted"),legend.position ="none")
p <- p + labs(x ="Spannung [V]" , y =  "Widerstand [Ohm]", title = "Funktion") 
#p <- p + scale_y_log10() + scale_x_log10()
print(p)