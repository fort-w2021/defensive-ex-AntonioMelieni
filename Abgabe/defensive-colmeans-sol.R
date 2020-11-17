
library(tidyverse)

# ich gebe es zu, ich hab alles abgekupfert.. aber ich habs zumindest verstanden

col_means_anton <- function(df, na.rm = FALSE) {
  
  df <- data.frame(df) %>% select_if(is.numeric)
  
  if (any(dim(df) == 0)) {
    warning("df must have at least one row and one column")
    
    df <- data.frame()
  }
  
  data.frame(vapply(df, mean, na.rm = na.rm, drop = FALSE))
}
