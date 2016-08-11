setwd("C:/Users/Florent/ExData_Plotting1")

#get the data
data<-read.csv("household_power_consumption.txt",sep=";", na.strings ="?")
#change date format
data$Time<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data$Date<-strptime(data$Date,"%d/%m/%Y")
#subset the data
DT<-subset(data,data$Date>="2007-02-01" & data$Date<="2007-02-02")

#create the graph into a .png file
png(file="plot2.png",width=480,height=480)
plot(DT$Time,DT$Global_active_power,type = "l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
