complete <- function(directory, id = 1:332){
  file_full <- list.files(directory, pattern = '.csv', full.names = TRUE)
  nobs <- numeric()
  rows <- numeric()
  for (i in id){
    data <- read.csv(file_full[i])
    nobs <- c(nobs, sum(complete.cases(data)))
  }
 result <- data.frame(id, nobs)
 
 return(result)
}