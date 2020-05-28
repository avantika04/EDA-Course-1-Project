#Reading the dataset
data <- "./data/household_power_consumption.txt"
dataset <- read.table(data, header=TRUE, sep=";")
powerdata <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]

#Creating the plot
datetime <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(powerdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 