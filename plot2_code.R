td <- subset(power_data, Date == "2007-2-1" | Date == "2007-2-2")
str(td)

td$DateTime <- strptime(paste(td$Date, td$Time), "%Y-%m-%d %H:%M:%S")

png(filename = "./plot2.png", height = 480, width = 480, units = "px")

with(td, plot(td$DateTime, td$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l"))
dev.off()

str(power_data)
