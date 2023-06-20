getwd()

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
              destfile = "power_consumption.zip")
unzip("power_consumption.zip")
power_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

str(power_data)
power_data$Date <- as.Date(power_data$Date, "%m/%d/%Y")
