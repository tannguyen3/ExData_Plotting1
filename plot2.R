source("prepareData.R")

plotFile <- file.path(plotsFolder, "plot2.png")
with(data, plot(global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))