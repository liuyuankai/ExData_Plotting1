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
png(file="plot4.png")
#par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
par(mfrow=c(2,2),mar=c(4,4,2,1))
plot(data$DateTime,data$Global_active_power,type="l",main="",
     xlab="",ylab="Global Active Power")

plot(data$DateTime,data$Voltage,type="l",main="",
     xlab="datetime",ylab="Voltage")

with(data,plot(DateTime,Sub_metering_1,type="l",main="",
               xlab="",ylab="Energy sub metering"))
with(data,points(DateTime,Sub_metering_2,type="l",col="red"))
with(data,points(DateTime,Sub_metering_3,type="l",col="blue"))
legend("topright",lty=1, col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
#legend("topright",lty=1, col=c("black","red","blue"),
#       inset = c(-0.2,0), cex = 0.5, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))



plot(data$DateTime,data$Global_reactive_power,type="l",main="",
     xlab="datetime",ylab="Global_reactive_power")

#copy the plot to a PND file
#dev.copy(png,file="plot4.png",width = 480, height = 480)
dev.off()