#Read file and transform date
source("readfile.R")


# Histogram
hist(df$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")

pngfile="plot1.png"

#Source for function for creating png
source("createpng.R")

