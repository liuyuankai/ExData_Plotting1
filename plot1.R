#assummes that the file "household_power_consumption.txt" was in 
#"workingdirectory/data" directory;
data <- read.table("./data/household_power_consumption.txt",header=TRUE,
                   sep=";",stringsAsFactors=FALSE,na.strings = "?")

#subseting data from the dates 2007-02-01 and 2007-02-02
data<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

#plot hist to the screen
hist(data$Global_active_power,col="red",xlab="Global active power (kilowatt)",
     main="Global active power")

#copy the plot to a PND file
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()

