source("prepareData.R")

plotFile <- file.path(plotsFolder, "plot4.png")
png(filename = plotFile, width = 480, height = 480)

par(mfrow = c(2,2))

# first plot
with(data, plot(datetime, global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))

# second
with(data, plot(datetime, voltage, type = "l", ylab = "voltage"))

#third
with(data, plot(datetime, sub_metering_1, type = "l", ylab = "Energy Sub Metering", xlab = "", col = "black"))
lines(data$datetime, data$sub_metering_2, col = "red")
lines(data$datetime, data$sub_metering_3, col = "blue")
legend("topright", pch = 151, col = c("black","red", "blue")
       , legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))

#fourth
with(data, plot(datetime, global_reactive_power, type = "l"))

dev.off()