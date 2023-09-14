

## Get Results
odds_mega_senna <- function(n, k){
  N_combination = choose(n = 60, k = 6)
  opt = choose(n = n, k = k)*choose(n = 60-n, k = 6-k)
  odds = round(N_combination/opt,0)
  return(odds)
}


## Experiment with Monte Carlo

experiment <- function(number_of_types,number_of_bets){
  results <- sample(1:60,6,replace = FALSE)
  
  my_bets <- list()
  numbers_rights <- list()
  for(i in 1:number_of_bets){
    my_bets[[i]] <- sample(1:60,size = number_of_types, replace = FALSE)
    numbers_rights[[i]] <- sum(my_bets[[i]] %in% results)
  }
  
  numbers_rights <- unlist(numbers_rights)
  my_bet <- sample(1:60,size = n, replace = FALSE)
  return(list(results,my_bets,numbers_rights))
}

experiment(10,100)[[3]]

    