# Function to Initialize reef with randomly placed corals


initialize_reef <- function(reef_size = 5, num_coral = 8, fill = 1){
  reef <- matrix(0, nrow = reef_size, ncol = reef_size) # makes reef w 0s
  random_coral <- sample(1:reef_size ** 2, size = num_coral) # makes vector w randomly sampled locations
  for (rc in random_coral) { # fill spots on matrix in randomly generated coral positions
    rc_row <- (rc - 1) %/% reef_size + 1
    rc_col <- (rc - 1) %% reef_size + 1
    reef[rc_row, rc_col] <- fill
}
  return(reef)
}

initialize_reef(8, fill = 'uwu')
