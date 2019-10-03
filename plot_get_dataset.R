plot_get_dataset <- function() {
  if (!file.exists('household_power_consumption.zip')) {
    download.file(url = 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip',
                  method = 'curl',
                  destfile = 'household_power_consumption.zip')
  }
  
  if (!file.exists('household_power_consumption.txt')) {
    unzip('household_power_consumption.zip')
  }
  
  f <- read.csv('household_power_consumption.txt', sep = ';', na.strings = '?')
  f$datetime <- strptime(paste(f$Date, f$Time, sep = ' '), '%d/%m/%Y %H:%M:%S', tz = 'UTC')
  f$Date <- as.Date(strptime(f$Date, '%d/%m/%Y'))
  f <- f[f$datetime >= as.POSIXlt('2007-02-01', tz = 'UTC') & f$datetime < as.POSIXlt('2007-02-03', tz = 'UTC'), ]
  
  f
}
