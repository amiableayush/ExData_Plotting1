source("load_data.R")

with(df,plot(df$Time,df$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering"))
lines(df$Time,df$Sub_metering_2,col="red")
lines(df$Time,df$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
dev.copy(png,width=480,height=480,file="plot3.png")
dev.off()
