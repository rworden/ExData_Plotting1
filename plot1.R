#download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
#              destfile="housePower.zip", 
#              method = "curl")
# unzip("housePower.zip")
# housePower<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
# housePower$Date<-as.Date(as.character(housePower$Date), "%d/%m/%Y")
# housePower$Time<-strptime(paste(housePower$Date,housePower$Time), "%Y-%m-%d %H:%M:%S")
# housePowerCut<-subset(housePower, housePower$Date>="2007-02-01" & housePower$Date<="2007-02-02")

##plot 1
png(filename = 'plot1.png', width = 480, height = 480, units = 'px')
hist(housePowerCut$Global_active_power, col="red", breaks=12, xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()