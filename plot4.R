source("load_data.R")

par(mfrow=c(2,2),mar=c(4,4,1,0),oma=c(1,1,1,1))
with(df,plot(df$Time,df$Global_active_power,type="l",xlab="",ylab="Global Active Power"))

plot(df$Time,df$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(df$Time,df$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(df$Time,df$Sub_metering_2,col="red")
lines(df$Time,df$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,box.lwd=0,pt.cex=1,cex=.7)

plot(df$Time,df$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.copy(png,width=480,height=480,file="plot4.png")
dev.off()

