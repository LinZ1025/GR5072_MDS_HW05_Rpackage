# Function 1: Your input for this function should be an individual year.
# Your output should be a data point of interest in the dataset for some player.

#' A nbaPlayers Function
#'
#' This function allows you to calculate a data point of interest in the dataset for some player in any given year.
#' @param data  The input dataset
#' @param year The input value of year
#' @keywords year
#' @export
#' @examples
#' data_point_of_interest()

data_point_of_interest <- function(data,year){
  library(tidyverse)
  library(dplyr)
  df <- subset(data, Year == year)
  df1 <- select(df, Year, Player,PTS)
  df2 <- slice(summarise(group_by(df1, Player), point_of_interest = sum(PTS)),1)
  df2
}

