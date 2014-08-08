#download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
#              destfile="housePower.zip", 
#              method = "curl")
# unzip("housePower.zip")
# housePower<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
# housePower$Date<-as.Date(as.character(housePower$Date), "%d/%m/%Y")
# housePower$Time<-strptime(paste(housePower$Date,housePower$Time), "%Y-%m-%d %H:%M:%S")
# housePowerCut<-subset(housePower, housePower$Date>="2007-02-01" & housePower$Date<="2007-02-02")

## plot 2
png(filename = 'plot2.png', width = 480, height = 480, units = 'px')
plot(housePowerCut$Time,housePowerCut$Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()