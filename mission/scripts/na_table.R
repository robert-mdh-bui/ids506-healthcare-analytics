require(tidyverse)

na_table <- function(dframe){
  NAs <- colMeans(is.na(dframe)) %>% data.frame()
  colnames(NAs) <- c("prop_NA")
  NAs <- NAs %>% arrange(desc(prop_NA))
  
  return(NAs)
}