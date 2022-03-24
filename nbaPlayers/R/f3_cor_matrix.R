##### Function 3: Your input for this function should be an individual year. 
####Your function should limit the data for that year to include numeric continuous
###variables only (not categorical data). Your output should be the correlation matrix 
####for all numeric variables in the data for that year. (Hint: use `cor(data)` to create correlation matrix.
###If you feel adventuresome, then you can return a correlogram plot from here instead).`

#' A nbaPlayers Function
#' 
#' This function allows you to generate the correlation matrix for all numeric variables in the data for that year.
#' @param data  The input dataset
#' @param year The input value of year
#' @keywords year, cor_matrix
#' @export
#' @examples
#' cor_matrix_plot()

cor_matrix_plot <- function(data, year){
  library(purrr)
  library(tidyverse)
  library(dplyr)
  library(corrplot)
  df <- subset(data, Year == year)
  df1 <- keep(df, is_numeric)
  #df2 <- (df1 na.rm = TRUE )
  M <- cor(df1 ) 
  corrplot(M, method="circle")
}