##set working directory 
setwd("C:/Users/Hiroshi Ikeda/Desktop/Coursera/R Programming")

complete <- function(directory, id = 1:332){
  #initialize all files and the pathes
  files <- list.files(directory, full.names = TRUE) 
  #create a placeholder
  x <- data.frame()
  #loop
  for (i in id) {
  csvs <- read.csv(files[i])
  nobs <- sum(complete.cases(csvs))
  x <- rbind(x, data.frame(i, nobs))
  }
x
}

#test
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)