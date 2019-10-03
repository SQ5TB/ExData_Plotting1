Sys.setlocale("LC_ALL","en_US.UTF-8")

wd <- '~/edu/ExploratoryDataAnalysis/ExData_Plotting1'
setwd(wd)
source('plot_get_dataset.R')

if (!exists('power.consumption')) {
  power.consumption <- plot_get_dataset()
}

# plot2
par(mfrow = c(1,1))
with(power.consumption, plot(datetime, Global_active_power, type = 'l', ylab = 'Global Active Power (kilowatts)', xlab = '') )
dev.copy(png, 'plot2.png')
dev.off()
