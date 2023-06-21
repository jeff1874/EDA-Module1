View(td)
getwd()

td$DateTime <- strptime(paste(td$Date, td$Time), "%Y-%m-%d %H:%M:%S")

png(filename = "./plot3.png", height = 480, width = 480, units = "px")

with(td, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
lines(td$DateTime, td$Sub_metering_2, type = "l", col = "red")
lines(td$DateTime, td$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), border = "black", legend = c("Sub metering 1", "Sub metering 2",
                                                                                 "Sub metering 3"), lty = 1)
dev.off()
     