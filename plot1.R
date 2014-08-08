source("load_data.R")

with(df,hist(Global_active_power,col="Red",main="Global Active Power",xlab="Global Active Power(kilowatts)"))

dev.copy(png,width=480,height=480,file="plot1.png")
dev.off()


