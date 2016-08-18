#Read file and transform date
source("readfile.R")


# Plot 3 lines + add a legend

plot(df$Time,df$Sub_metering_1, type="l",  xlab="", ylab="Energy sub metering)")
points(df$Time,df$Sub_metering_2, type="l",col="red")
points(df$Time,df$Sub_metering_3, type="l",col="blue")

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), col=c("black","red","blue"))
 
pngfile="plot3.png"

#Source for function for creating png
source("createpng.R")

