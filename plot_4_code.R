# Define image size
png(filename = "./plot4.png", height = 480, width = 480, units = "px")

# Define plot format
par(mfrow = c(2, 2))

# GAP & TD (Plot 2)
with(td, plot(td$DateTime, td$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l"))

with(td, plot(td$DateTime, td$Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

# Energy Sub (Plot 3)
with(td, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
lines(td$DateTime, td$Sub_metering_2, type = "l", col = "red")
lines(td$DateTime, td$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), border = "black", legend = c("Sub metering 1", "Sub metering 2",
                                                                                 "Sub metering 3"), lty = 1)

with(td, plot(td$DateTime, td$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l"))

dev.off()


