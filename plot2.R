source("prepareData.R")

plotFile <- file.path(plotsFolder, "plot2.png")
png(filename = plotFile, width = 480, height = 480)

data2 <- mutate(data, datetime = date + time )
with(data2, plot(datetime, global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))

dev.off()