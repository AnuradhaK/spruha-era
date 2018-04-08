data <- read.csv("~/R/data.csv", comment.char="#")
cor(data$No_Of_Resources,data$Request_Avg_completion_time)
cor(data$No_Of_Request,data$Request_Avg_completion_time)
cor(data$No_Of_Request,data$Month)
expanded_data <- data[,2:length(data)]


par(mfrow  = c(2,2))
plot(data$No_Of_Resources, data$Request_Avg_completion_time)
plot(data$No_Of_Request, data$Request_Avg_completion_time)
plot(data$Month, data$Request_Avg_completion_time)
cor(data[,4:5])

m1<-lm(Request_Avg_completion_time~Month,data=data)
summary(m1)
par(mfrow=c(2,2))
plot(m1)


m2<-lm(Request_Avg_completion_time~No_Of_Resources,data=data)
summary(m2)
par(mfrow=c(2,2))
plot(m2)


m3<-lm(Request_Avg_completion_time~No_Of_Request,data=data)
summary(m3)
par(mfrow=c(2,2))
plot(m3)




