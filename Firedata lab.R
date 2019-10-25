 firedata <- read.csv("/Users/yangcan/Desktop/forestfires.csv", header = TRUE)
# 
# wind =as.numeric(as.character(firedata$wind))
# area =as.numeric(as.character(firedata$area))
# area[area >= 500]<- NA
# #area <- na.omit(area)
# #summary(wind)
# 
# firedataset <- data.frame(wind,area)
# rm(wind,area) 
# Dataset<-firedataset[complete.cases(firedataset), ]
# #Dataset<-na.omit(firedataset)
# attach(Dataset)
# 
# plot(wind,area,ylab="area", xlab="wind")
# cor(area,wind)
# 
# fit <- lm(wind~area)
# summary(fit)
# 
# ###########
# 
# month =as.numeric(as.character(firedata$month))
# day =as.numeric(as.character(firedata$day))
# area =as.numeric(as.character(firedata$area))
# area[area >= 500]<- NA
# 
# firedataset <- data.frame(month,area)
# rm(month,area) 
# Dataset<-firedataset[complete.cases(firedataset), ]
# 
# attach(Dataset)
# 
# plot(month,area,ylab="area", xlab="month")
# cor(area,month)
# 
# fit <- lm(month~area)
# summary(fit)

DC =as.numeric(as.character(firedata$DC))
ISI =as.numeric(as.character(firedata$ISI))
area =as.numeric(as.character(firedata$area))
area[area >= 500]<- NA
area <- na.omit(area)
fit.lm <-lm(area~DC+ISI, data = firedataset)
fit.stdres = rstandard(fit.lm)
plot(area,fit.stdres, 
ylab="standard residuals", 
xlab = "area", 
main = "standardized residual plot")
summary(fit)
abline(0, 0) 

