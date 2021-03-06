SecondPlot <- function(){
  # load data file provided in assignment 
  textData <- read.table('household_power_consumption.txt', header = TRUE, sep = ";", dec = ".",stringsAsFactors = FALSE)
  
  #subset the record which going to use
  dataDilterByDate <- textData[textData$Date %in% c("1/2/2007","2/2/2007") ,]
  
  # Convert global active power in numeric 
  datetime <- strptime(paste(dataDilterByDate$Date, dataDilterByDate$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  globalActivePower <- as.numeric(dataDilterByDate$Global_active_power)
  png("plot2.png", width=480, height=480)
  
  # Plot the records
  plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  
  dev.off()
}
