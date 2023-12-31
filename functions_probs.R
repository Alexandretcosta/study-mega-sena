
## Get Results
odds_mega_senna <- function(n = 6, k = 6, chance = T){
  
  #Total of Possible Combination
  N_combination = choose(n = 60, k = 6)
  
  if(n >= k & n >= 6){
  opt = choose(n = n, k = k)*choose(n = 60-n, k = 6-k)
  odds = round(N_combination/opt, 0)
  prob = round(opt/N_combination, 10)
  if(chance){
  return(odds)
    }else{return(prob)}
  }else{print("k is bigger then n")}
}

## Table With Results

table_odds <- function(){
  ods <- data.frame(matrix(rep(0,45),ncol = 3))
  colnames(ods) <- c('Quatro','Cinco','Seis')
  row.names(ods) <- 6:20
  for(j in 6:20){
    aux <- c(odds_mega_senna(j,4),odds_mega_senna(j,5),odds_mega_senna(j,6))
    ods[j-5,] <- aux
  }
  return(ods)
}

table_odds()
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

## Variation of Price in The Games

price <- c(5,35,140,420,1050,2310,4620,8580,15015,25025,40040,61880,92820,135660,193800)
odds_6 <- rep(0,length(6:20)); for(i in 6:20){odds_6[i-5] <- odds_mega_senna(i, chance = FALSE)}
odds_5 <- rep(0,length(6:20)); for(i in 6:20){odds_5[i-5] <- odds_mega_senna(i, k = 5, chance = FALSE)}
odds_4 <- rep(0,length(6:20)); for(i in 6:20){odds_4[i-5] <- odds_mega_senna(i, k = 4, chance = FALSE)}

variation_between_elements <- function(vetor){
  
  razao <- rep(0, length(vetor)-1)
  for(i in 1:(length(vetor)-1)){
    razao[i] <- round(vetor[i+1]/vetor[i],2)
  }
  return(razao)
}

## 140/5
data_variation <- data.frame(Preco = variation_between_elements(price),
           Odds_6 = variation_between_elements(odds_6),
           Odds_5 = variation_between_elements(odds_5),
           Odds_4 = variation_between_elements(odds_4),
           Odds_Acumulada = cumprod(variation_between_elements(odds_6)))
row.names(data_variation) <- 7:20
data_variation
