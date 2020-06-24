library(dplyr)
library(lubridate)

# create the folder for all plots
plotsFolder <- "result"
if (!dir.exists(plotsFolder)) {
  dir.create(plotsFolder)
}

# download data 
dataFolder <- "data"
dataFile <- file.path(dataFolder, "household_power_consumption.txt")

if (!file.exists(dataFile)) {
  
  if (!dir.exists(dataFolder)) {
    dir.create(dataFolder)
  }
  
  zipFile <- file.path(dataFolder, "download.zip")
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
                , dest = zipFile, method = "curl")
  
  unzip(zipFile, exdir = dataFolder)
}

# read data 
setAs("character","myDate", function(from) dmy(from) )
setAs("character","myTime", function(from) hms(from) )
classes <- c("myDate", "myTime", rep("numeric", 7))

data <- read.csv(dataFile, na.strings = "?", sep = ";", comment.char = "",
                 colClasses = classes)
data <- tibble(data)

# only keep data for 2-day period in February, 2007
data <- filter(data, Date == ymd("2007-02-01") | Date == ymd("2007-02-02"))