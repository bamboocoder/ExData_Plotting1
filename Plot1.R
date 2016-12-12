FirstPlot <- function(){
# load data file provided in assignment 
filesInFolder <-  list.files()
textData <- read.table('household_power_consumption.txt', header = TRUE, sep = ";", dec = ".",stringsAsFactors = FALSE)

#subset the record which going to use
dataDilterByDate <- textData[textData$Date %in% c("1/2/2007","2/2/2007") ,]

# Convert global active power in numeric 
globalActivePower <- as.numeric(dataDilterByDate$Global_active_power)
png("plot1.png", width=480, height=480)

# Plot the records
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
}