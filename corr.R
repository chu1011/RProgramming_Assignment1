##set working directory 
setwd("C:/Users/Hiroshi Ikeda/Desktop/Coursera/R Programming")

corr <- function(directory, threshold = 0){
  #initialize all files and the pathes
  files <- list.files(directory, full.names = TRUE) 
  #create a placeholder of numeric vector
  x <- numeric()
  #loop
  for (i in 1:332) {
  #create matrics of #nobs
  comp <- complete(directory, i)
  if (comp$nobs > threshold) {
      #from data001 to 332
      csvs <- read.csv(files[i])
      #calc correlation with casewise deletion of NAs
      x <- c(x, cor(csvs$sulfate, csvs$nitrate, use = "complete.obs"))
      }
  }
x
}


#test1
cr <- corr("specdata", 150)
head(cr)
summary(cr)
#test2
cr <- corr("specdata", 400)
head(cr)
summary(cr)
#test3
cr <- corr("specdata", 5000)
summary(cr)
length(cr)
#test4
cr <- corr("specdata")
summary(cr)
length(cr)