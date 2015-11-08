png(filename = "Plot1.png", width = 480, height = 480)
temp <- read.csv2("household_power_consumption.txt")
temp$Date <- as.Date(temp$Date, "%d/%m/%Y")
epcdata <- temp[temp$Date == "2007-02-01" | temp$Date == "2007-02-02",]
epcdata$Global_active_power <- as.character(epcdata$Global_active_power)
epcdata$Global_active_power <- as.numeric(epcdata$Global_active_power)
with(epcdata, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
dev.off()