#Reading the dataset
data <- "./data/household_power_consumption.txt"
dataset <- read.table(data, header=TRUE, sep=";")
powerdata <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]

#For the plot
datetime <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
SubMetering1 <- as.numeric(powerdata$Sub_metering_1)
SubMetering2 <- as.numeric(powerdata$Sub_metering_2)
SubMetering3 <- as.numeric(powerdata$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, SubMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SubMetering2, type="l", col="red")
lines(datetime, SubMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 

