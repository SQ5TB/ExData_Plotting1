Sys.setlocale("LC_ALL","en_US.UTF-8")

wd <- '~/edu/ExploratoryDataAnalysis/ExData_Plotting1'
setwd(wd)
source('plot_get_dataset.R')

if (!exists('power.consumption')) {
  power.consumption <- plot_get_dataset()
}

# plot3
par(mfrow = c(1,1))

with(power.consumption, plot(datetime, Sub_metering_1, type = 'l', ylab = 'Energy sub metering', xlab = '', col = 'black'))
with(power.consumption, points(datetime, Sub_metering_2, type = 'l', col = 'red'))
with(power.consumption, points(datetime, Sub_metering_3, type = 'l', col = 'blue'))
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty = c(1,1,1))

dev.copy(png, 'plot3.png')
dev.off()
