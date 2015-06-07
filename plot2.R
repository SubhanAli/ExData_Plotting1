data <- read.table("household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";", 
                   colClasses = c("character", "character", rep("numeric",7)), 
                   na = "?")
nData <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
attach(nData)
nData$DateTime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")
rownames(nData) <- 1:nrow(nData)
attach(nData)

plot(DateTime, 
     Global_active_power, 
     type = "l", 
     xlab = " ", 
     ylab = "Global Active Power (kilowatts)")