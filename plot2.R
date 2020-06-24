source("prepareData.R")

plotFile <- file.path(plotsFolder, "plot2.png")
par(mfrow = c(1,1))
png(filename = plotFile, width = 480, height = 480)


with(data, plot(datetime, global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))

dev.off()