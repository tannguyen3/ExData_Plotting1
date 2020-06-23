library(dplyr)
library(lubridate)

setAs("character","myDate", function(from) dmy(from) )
setAs("character","myTime", function(from) hms(from) )
classes <- c("myDate", "myTime", rep("numeric", 7))

data <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";", comment.char = "",
                 colClasses = classes)
data <- tibble(data)
data <- filter(data, Date == ymd("2007-02-01") | Date == ymd("2007-02-02"))
with(data, hist(Global_active_power, main = "Global Active Power",  xlab = "Global Active Power (kilowatts)", col = "red"))