#commit for plot1, plot2, plot3, plot4
 
   assummes that the file "household_power_consumption.txt" was in "workingdirectory/data" directory;



#for plot1
  1. use read.table() to get data into R;
  2. I first plot the histogram to the screen;
  3. second, i use dev.copy to copy the plot to the png file;
  4. last, use dev.off to close the file device;

  I find tha the plot of screen is identical to that of png file. It is ok for plot1;

#for plot2
  1. use read.table() to get data into R;
  2. subseting data from the dates 2007-02-01 and 2007-02-02;
  3. Paste the Date and Time variables to a new variable, and use strptime function to converte it to Time class;
  4. plot to the screen;
  5. use dev.copy to copy the plot to the png file;
  6. dev.off to close the file device;

  I find it is ok, the plot of screen is identical to that of png file.

#for plot3
  1. use read.table() to get data into R;
  2. subseting data from the dates 2007-02-01 and 2007-02-02;
  3. Paste the Date and Time variables to a new variable, and use strptime function to converte it to Time class;
  4. open the png file devcie;
  5. plot directly to file device;
  6. dev.off to close the file device;

  for this plot, i plot originaly to the screen, and copy to the png. I find plot of the screen is ok, but that of png is something wrong, the legend is not idenctical to that of screen. So i change to plot directly the png file device, and it is ok;

#for plot4
  1. use read.table() to get data into R;
  2. subseting data from the dates 2007-02-01 and 2007-02-02;
  3. Paste the Date and Time variables to a new variable, and use strptime function to converte it to Time class;
  4. open the png file devcie, and use apr make the mfrow to he (2,2);
  5. plot directly to file device;
  6. dev.off to close the file device;

  for this plot, the problem is same as plot3, and finaly i directly plot to the png file device, and the result is ok;