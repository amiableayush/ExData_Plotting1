# reading the first 5 rows of the dataset.
table5<-read.table(file.path(getwd(),"household_power_consumption.txt"),header=T,nrows=5,sep=";")
classes<-sapply(table5,class)

df<-read.table(file.path(getwd(),"household_power_consumption.txt"),header=T,sep=";",colClasses= classes,na="?")

df$Time<-strptime(paste(df$Date,df$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
df$Date<-as.Date(df$Date,"%d/%m/%Y")
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
df <- subset(df, Date %in% dates)