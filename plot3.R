energy_usage <- read.table("./UCI Data/household_power_consumption.txt", header=TRUE, stringsAsFactors = FALSE, na.strings = "?", sep = ";")
energy_usage_s <- energy_usage[(energy_usage$Date=="1/2/2007" | energy_usage$Date=="2/2/2007"), ]
energy_usage_s$DateTime <- strptime(paste(energy_usage_s$Date, energy_usage_s$Time), "%d/%m/%Y %H:%M:%S")
png(filename = "./data/plot3.png", width = 480, height = 480)
with(energy_usage_s, plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering"))
with(energy_usage_s, lines(DateTime, Sub_metering_2, type = "l", col = "red"))
with(energy_usage_s, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

