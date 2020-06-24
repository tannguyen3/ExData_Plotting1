source("prepareData.R")

plotFile <- file.path(plotsFolder, "plot1.png")
par(mfrow = c(1,1))

png(filename = plotFile, width = 480, height = 480)
with(data, hist(global_active_power, main = "Global Active Power",  xlab = "Global Active Power (kilowatts)", col = "red"))

dev.off()