setwd("C:/Users/Florent/ExData_Plotting1")

#get the data
data<-read.csv("household_power_consumption.txt",sep=";", na.strings ="?")
#change date format
data$Time<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data$Date<-strptime(data$Date,"%d/%m/%Y")
#subset the data
DT<-subset(data,data$Date>="2007-02-01" & data$Date<="2007-02-02")

#create the graph into a .png file
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
#graph1
plot(DT$Time,DT$Global_active_power,type = "l",xlab="",ylab="Global Active Power (kilowatts)")
#graph2
plot(DT$Time,DT$Voltage ,type = "l",xlab="datetime",ylab="Voltage")
#graph3
plot(DT$Time,DT$Sub_metering_1,type = "l",xlab="",ylab="Energy sub metering")
lines(DT$Time,DT$Sub_metering_2,col="red")
lines(DT$Time,DT$Sub_metering_2,col="red")
lines(DT$Time,DT$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
#graph4
plot(DT$Time,DT$Global_reactive_power ,type = "l",xlab="datetime",ylab="Global_reactive_power")
dev.off()