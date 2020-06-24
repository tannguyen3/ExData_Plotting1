source("prepareData.R")

plotFile <- file.path(plotsFolder, "plot1.png")

png(filename = plotFile, width = 480, height = 480)
with(data, hist(Global_active_power, main = "Global Active Power",  xlab = "Global Active Power (kilowatts)", col = "red"))

dev.off()