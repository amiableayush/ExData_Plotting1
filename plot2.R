source("load_data.R")

with(df,plot(df$Time,df$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.copy(png,width=480,height=480,file="plot2.png")
dev.off()
