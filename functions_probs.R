
## Get Results
odds_mega_senna <- function(n = 6, k = 6){
  
  #Total of Possible Combination
  N_combination = choose(n = 60, k = 6)
  
  if(n >= k & n >= 6){
  opt = choose(n = n, k = k)*choose(n = 60-n, k = 6-k)
  odds = round(N_combination/opt, 0)
  prob = round(opt/N_combination, 4)
  return(odds)
  }else{print("k is bigger then n")}
}

## Experiment with Monte Carlo

experiment <- function(number_of_types = 6,number_of_bets = 10){
  results <- sample(1:60,6,replace = FALSE)
  
  my_bets <- list()
  numbers_rights <- list()
  
  id = 0
  k = 0
  
  for(type in number_of_types){
    k = k + 1
    i = 0
    repeat{
      
      i = i + 1
      id = id + 1
      my_bets[[id]] <- sample(1:60,size = type, replace = FALSE)
      numbers_rights[[id]] <- sum(my_bets[[id]] %in% results)

    if(i == number_of_bets[k] | number_of_bets[k] == 0)
      break
    }
  }
  
  numbers_rights <- unlist(numbers_rights)
  return(list(results,my_bets,numbers_rights))
}



## Monte Carlo with Mega Sena

mc_mega <- function(M = 10,types = 6,bets = 10){
  
  mc_4 <- rep(0,M)
  mc_5 <- rep(0,M)
  mc_6 <- rep(0,M)
  for(i in 1:M){
    result <- experiment(types,bets)[[3]]
    mc_4[i] <- sum(result == 4)
    mc_5[i] <- sum(result == 5)
    mc_6[i] <- sum(result == 6)
  }
  
  return(list(mc_4,mc_5,mc_6))
}
