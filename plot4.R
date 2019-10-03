Sys.setlocale("LC_ALL","en_US.UTF-8")

wd <- '~/edu/ExploratoryDataAnalysis/ExData_Plotting1'
setwd(wd)
source('plot_get_dataset.R')

if (!exists('power.consumption')) {
  power.consumption <- plot_get_dataset()
}

# plot4
par(mfrow = c(2,2))

# topleft
with(power.consumption, plot(datetime, Global_active_power, type = 'l', ylab = 'Global Active Power', xlab = '') )

# topright
with(power.consumption, plot(datetime, Voltage, type = 'l', ylab = 'Voltage', xlab = 'datetime') )

# bottomleft
with(power.consumption, plot(datetime, Sub_metering_1, type = 'l', ylab = 'Energy sub metering', xlab = '', col = 'black'))
with(power.consumption, points(datetime, Sub_metering_2, type = 'l', col = 'red'))
with(power.consumption, points(datetime, Sub_metering_3, type = 'l', col = 'blue'))
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty = c(1,1,1), bty = 'n')

# bottomright
with(power.consumption, plot(datetime, Global_reactive_power, type = 'l', ylab = 'Global_reactive_power', xlab = 'datetime') )

dev.copy(png, 'plot4.png')
dev.off()
