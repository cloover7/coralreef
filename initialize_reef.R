set.seed(32)

# matrix w all 0s
reef <- matrix(0, nrow = 5, ncol = 5)

# sample 8 tiles without replacement
samp_1 <- sample(1:25, size = 8, replace = FALSE)
samp_1

# setting to 1 
reef[(6 %/% 5 + 1), (6 %% 5)] <- 1
reef

#test for loop
for (n in samp_1){
  reef[(n %/% 5 + 1), (n %% 5)] <- 1
}
reef
