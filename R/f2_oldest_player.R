##### Function 2: Your input for this function should be an individual year. 
#####Your output should be the oldest player in the NBA data for that year (if multiple players have the same age, then decide how to return a single player).

#' A nbaPlayers Function
#' 
#' This function allows you to know the oldest player in the NBA data for that year
#' @param data  The input dataset
#' @param year The input value of year
#' @keywords year
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(data, year){
  library(tidyverse)
  library(dplyr)
  df <- subset(data, Year == year)
  df1 <- select(df, Year, Player, Age)
  df2 <- summarise(group_by(df1, Player),  player_age = max(Age))
  df3 <- arrange(df2, desc(player_age))
  df4 <- slice(select(df3, Player),1)
  df4
}
