#Read file and transform date
source("readfile.R")


# Plot a simple line graph

plot(df$Time,df$Global_active_power, type="l",  xlab="", ylab="Global Active Power (kilowatts)")


pngfile="plot2.png"

#Source for function for creating png
source("createpng.R")

