#Read file and transform date
source("readfile.R")


# Plot 4 graphs

par(mfrow=c(2,2))

# Graph top left
plot(df$Time,df$Global_active_power, type="l",  xlab="", ylab="Global Active Power")

# Graph bottom left

plot(df$Time,df$Voltage,type="l",xlab="Datetime",ylab="Voltage")

# Graph top right

plot(df$Time,df$Sub_metering_1, type="l",  xlab="", ylab="Energy sub metering)")
points(df$Time,df$Sub_metering_2, type="l",col="red")
points(df$Time,df$Sub_metering_3, type="l",col="blue")

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), col=c("black","red","blue"))
 

# Graph bottom right


plot(df$Time,df$Global_reactive_power,type="l",xlab="Datetime",ylab="Global Reactive Power")


pngfile="plot4.png"

#Source for function for creating png
source("createpng.R")

