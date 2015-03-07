energy_usage <- read.table("./UCI Data/household_power_consumption.txt", header=TRUE, stringsAsFactors = FALSE, na.strings = "?", sep = ";")
energy_usage_s <- energy_usage[(energy_usage$Date=="1/2/2007" | energy_usage$Date=="2/2/2007"), ]
energy_usage_s$DateTime <- strptime(paste(energy_usage_s$Date, energy_usage_s$Time), "%d/%m/%Y %H:%M:%S")
png(filename = "./data/plot1.png", width = 480, height = 480)
with(energy_usage_s, hist(energy_usage_s$Global_active_power, freq = TRUE, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col="red"))
dev.off()