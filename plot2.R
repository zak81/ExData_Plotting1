energy_usage <- read.table("./UCI Data/household_power_consumption.txt", header=TRUE, stringsAsFactors = FALSE, na.strings = "?", sep = ";")
energy_usage_s <- energy_usage[(energy_usage$Date=="1/2/2007" | energy_usage$Date=="2/2/2007"), ]
energy_usage_s$DateTime <- strptime(paste(energy_usage_s$Date, energy_usage_s$Time), "%d/%m/%Y %H:%M:%S")
png(filename = "./data/plot2.png", width = 480, height = 480)
plot(energy_usage_s$DateTime, energy_usage_s$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()