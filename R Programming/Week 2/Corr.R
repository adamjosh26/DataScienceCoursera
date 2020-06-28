corr <- function(directory, threshold = 0){
  file_full <- list.files(directory, full.names = TRUE)
  result <- numeric()
  
  for (i in 1:length(file_full)){
    file <- read.csv(file_full[i])
    obs <- sum(complete.cases(file))
    data <- file[which(complete.cases(file)),]
    if(obs>threshold){
      s <- data[['sulfate']]
      n <- data[['nitrate']]
      result <- c(result, cor(s,n))
    }
  }
  return(result)
}