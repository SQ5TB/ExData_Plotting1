wd <- '~/edu/ExploratoryDataAnalysis/ExData_Plotting1'
setwd(wd)
source('plot_get_dataset.R')

if (!exists('power.consumption')) {
  power.consumption <- plot_get_dataset()
}

# plot 1
par(mfrow = c(1,1))
hist(power.consumption$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
dev.copy(png, 'plot1.png')
dev.off()
