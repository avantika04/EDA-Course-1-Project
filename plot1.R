#Reading the dataset
data <- "./data/household_power_consumption.txt"
dataset <- read.table(data, header=TRUE, sep=";")
powerdata <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]

#Creating the plot
GlobalActivePower <- as.numeric(powerdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 