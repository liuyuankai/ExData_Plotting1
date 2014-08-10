#assummes that the file "household_power_consumption.txt" was in 
#"workingdirectory/data" directory;
data <- read.table("./data/household_power_consumption.txt",header=TRUE,
                   sep=";",stringsAsFactors=FALSE,na.strings = "?")

#subseting data from the dates 2007-02-01 and 2007-02-02
data<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

#Paste the Date and Time variables to a new variable
#and use strptime function to converte it to Time class;
data$DateTime<-paste(data$Date,data$Time,sep=" ")
data$DateTime<-strptime(data$DateTime,"%d/%m/%Y %H:%M:%S")

#plot 
plot(data$DateTime,data$Global_active_power,type="l",main="",
     xlab="",ylab="Global Active Power (kilowatts)")

#copy the plot to a PND file
dev.copy(png,file="plot2.png",width = 480, height = 480)
dev.off()
