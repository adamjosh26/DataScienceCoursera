pollutantmean <- function(directory, pollutant, id = 1:332){
  files_full <- list.files(directory, pattern = '.csv', full.names = TRUE)
  
  file <- numeric()
  
  for (i in id){
    data <- read.csv(files_full[i])
    file <- c(file, data[[pollutant]])
    
  }
  
  mean(file, na.rm = TRUE)
  
}
