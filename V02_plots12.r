
library(graphics)
library(ggplot2)
library(stringr)

setwd("C:/Users/Sandy/Documents/ge2p") 
mydata <- read.delim("data_11.txt", header=TRUE, sep = "\t", quote = "\"",
                     dec = ",", fill = TRUE, comment.char = "")
mydata$ux
plot(mydata$ux, mydata$iy)

p <- ggplot(data = mydata, aes(x = ux, y = iy))
p <- p + geom_line(size = 1, coloure="black") + theme_bw()
p <- p + geom_point(size = 5, shape=20, color ="blue" )
p <- p + theme(panel.grid.major = element_line(color ="black",linetype ="dotted"),legend.position ="none")
p <- p + labs(x ="Spannung U [V]" , y =  "Strom I [A]", title = "Kennlinie doppelt-linear") 
#p <- p + scale_y_log10() + scale_x_log10()
#p <- p + annotation_logticks()
print(p)