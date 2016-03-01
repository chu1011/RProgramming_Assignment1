##set working directory 
setwd("C:/Users/Hiroshi Ikeda/Desktop/Coursera/R Programming")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  #initialize all files and the pathes
  files <- list.files(directory, full.names = TRUE) 
  #create a placeholder
  x <- data.frame()
  #loop
  for (i in id) {
      csvs <- read.csv(files[i])
      x <- rbind(x, csvs)
  }
  #calculate mean
  mean <- mean(x[[pollutant]], na.rm = TRUE)
  #round
  round(mean, 3)
  }

#test
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)