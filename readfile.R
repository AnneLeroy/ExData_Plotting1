# Include for Reading the datafile


# First version with reading all and subsetting Only selecting necessary dates
# dftmp <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";")
# df <- subset(dftmp, Date == "1/2/2007" | Date == "2/2/2007")
# write.csv(df,"df.csv")


# Performance : use of package sqldf instead to select only two dates when reading file
# only loading in memory what's necessary

library(sqldf)


df <- read.csv.sql("household_power_consumption.txt", header = TRUE, sep = ";",
           sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007" ')

# Temporary file for testing
# write.csv(df,"df.txt",row.names=FALSE)
# df <- read.csv("df.txt",header = TRUE,stringsAsFactors=FALSE)



# Convert Date and Time Characters to Date/Time Format
df$DateTime <- paste(df$Date,"-",df$Time)
df$Date <- as.Date(df$Date,"%d/%m/%Y")
df$Time <- strptime(df$DateTime,"%d/%m/%Y - %H:%M:%S")
