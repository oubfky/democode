data <- read.csv('./data/甲基汞数据.csv',nrow=130)
View(data)
con <- scale(data$甲基汞以汞计)
lat <- scale(data$海拔)
col<- heat.colors(3164)
index <- data$海拔-1983

pdf("figure/con.pdf",height=8,width=10)
plot(data$经度,data$纬度,cex=con*2,pch=19,col=col[index])
dev.off()
