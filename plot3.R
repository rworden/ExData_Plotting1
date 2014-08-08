#download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
#              destfile="housePower.zip", 
#              method = "curl")
# unzip("housePower.zip")
# housePower<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
# housePower$Date<-as.Date(as.character(housePower$Date), "%d/%m/%Y")
# housePower$Time<-strptime(paste(housePower$Date,housePower$Time), "%Y-%m-%d %H:%M:%S")
# housePowerCut<-subset(housePower, housePower$Date>="2007-02-01" & housePower$Date<="2007-02-02")

png(filename = 'plot3.png', width = 480, height = 480, units = 'px')
plot(housePowerCut$Time,housePowerCut$Sub_metering_1, type="l",ylab="Energy sub metering",xlab="",col="black")
lines(housePowerCut$Time,housePowerCut$Sub_metering_2, type="l",col="red")
lines(housePowerCut$Time,housePowerCut$Sub_metering_3, type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","blue","red"))
dev.off()
