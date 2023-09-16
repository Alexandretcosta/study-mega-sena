library(packHV)
library(shiny)
source('functions_probs.R')


# Define UI for random distribution app ----

ui <- pageWithSidebar(
  
  # App title ----
  headerPanel("Mega Sena"),
  
  # Sidebar layout with input and output definitions ----
  #sidebarLayout(
  
  # Sidebar panel for inputs ----
  sidebarPanel(
    
    numericInput("bet_6", "Quantidade de Vezes Joga 6",
                 min = 0, max = 1000, value = 1, step = 1),
    
    numericInput("bet_7", "Quantidade de Vezes Joga 7",
                 min = 0, max = 1000, value = 0, step = 1),
    
    
    numericInput("bet_8", "Quantidade de Vezes Joga 8",
                 min = 0, max = 1000, value = 0, step = 1),
    
    
    numericInput("bet_9", "Quantidade de Vezes Joga 9",
                 min = 0, max = 1000, value = 0, step = 1),
    
    
    numericInput("bet_10", "Quantidade de Vezes Joga 10",
                 min = 0, max = 1000, value = 0, step = 1),
    
    
    numericInput("bet_11", "Quantidade de Vezes Joga 11",
                 min = 0, max = 1000, value = 0, step = 1),
    
    
    numericInput("bet_12", "Quantidade de Vezes Joga 12",
                 min = 0, max = 1000, value = 0, step = 1),
    
    
    numericInput("bet_13", "Quantidade de Vezes Joga 13",
                 min = 0, max = 1000, value = 0, step = 1),
    
    
    numericInput("bet_14", "Quantidade de Vezes Joga 14",
                 min = 0, max = 1000, value = 0, step = 1),
    
    numericInput("bet_15", "Quantidade de Vezes Joga 15",
                 min = 0, max = 1000, value = 0, step = 1),
    
    numericInput("bet_16", "Quantidade de Vezes Joga 16",
                 min = 0, max = 1000, value = 0, step = 1),
    
    numericInput("bet_17", "Quantidade de Vezes Joga 17",
                 min = 0, max = 1000, value = 0, step = 1),
    
    numericInput("bet_18", "Quantidade de Vezes Joga 18",
                 min = 0, max = 1000, value = 0, step = 1),
    
    numericInput("bet_19", "Quantidade de Vezes Joga 19",
                 min = 0, max = 1000, value = 0, step = 1),
    
    numericInput("bet_20", "Quantidade de Vezes Joga 20",
                 min = 0, max = 1000, value = 0, step = 1)

  ),
  
  mainPanel(
    
    tabsetPanel(type = "tabs",
                tabPanel("Descrição",
                         h2("O que é a Mega-Sena? "),
                         p("A Mega-Sena é uma loteria muito popular no Brasil, criada em 1996 e administrada pela Caixa Econômica Federal, uma instituição financeira controlada pelo governo brasileiro. Para jogar, os participantes devem escolher de seis a quinze números entre um conjunto de 60 números. O objetivo é acertar os seis números sorteados para ganhar o prêmio máximo."),
                         p("A Mega-Sena é conhecida por seus altos prêmios, que muitas vezes chegam a dezenas de milhões de reais. Em 2022, por exemplo, a Mega da Virada, que ocorre em 31/12, distribuiu o prêmio total de R$ 541 milhões."),
                         p("No entanto, vale destacar que a probabilidade de ganhar o prêmio máximo jogando apenas 6 números é extremamente baixa, cerca de uma em mais de cinquenta milhões. "),
                         br(),
                         h2("Como funciona a Mega Sena?"),
                         p("Os sorteios da Mega Sena são realizados duas vezes por semana, geralmente às quartas-feiras e aos sábados. Os sorteios são transmitidos ao vivo pela televisão, dando transparência à todo o processo."),
                         p("Além do prêmio máximo, a Mega Sena oferece prêmios menores para quem acerta quatro (quadra) ou cinco números (quina). A probabilidade de acertar cinco números é de uma em mais de 150 mil, enquanto a probabilidade de acertar quatro números é de uma em quase 2 mil, considerando uma aposta simples de 6 números."),
                         p("Caso nenhuma pessoa tenha marcado os 6 números em um dado sorteio, o prêmio acumula para o próximo concurso. Por isso que existem premiações que ultrapassam dezenas de milhões de reais!"),
                         p("A exceção a esta regra é a Mega da Virada, que ocorre no último dia do ano, e que não acumula. Nesse caso, se ninguém marcar os 6 números, o prêmio é distribuído para quem marcou 5, e assim por diante."),
                         br(),
                         h2('Dá para jogar mais de 6 números? Como funciona?'),
                         br(),
                         p("Claro que dá! Na verdade, quem joga pode marcar até 20 números na mesma aposta, mas isso encarece consideravelmente o valor a ser pago."),
                         p("A aposta simples de 6 números custa R$4,50, e a aposta de 7 números custa R$31,50, a de 8 números custa R$126... e esse valor vai aumentando uma vez que a chance de ganhar também aumenta."),
                         p("Só para ter como referência, o custo de um jogo de 20 números marcados na mesma aposta é de R$ 174 mil. Nesse caso, a chance de ganhar a mega (acertando os 6 números) é de 1 em 1.292, portanto bem maior do que os 50 milhões calculados na aposta simples, mas o valor a ser pago é quase 39 mil vezes maior (R$ 174 mil contra R$ 4,50)."),
                         h2('Quais são os outros formatos de jogo na Mega?'),
                         br(),
                         p("A Mega Sena também oferece a possibilidade de jogar em grupo, conhecido como bolão."),
                         p("Nesse formato, várias pessoas compram bilhetes juntas e dividem o prêmio em caso de vitória. Essa pode ser uma boa opção para quem deseja aumentar suas chances de ganhar, já que o valor do bilhete pode ser dividido entre várias pessoas. No entanto, é importante lembrar que, em caso de vitória, o prêmio será dividido entre os membros do grupo, reduzindo o valor do prêmio individual, ok?"),
                         p("Há também a surpresinha, que você apenas delimita a quantidade de números e o sistema escolhe aleatoriamente para você."),
                         p("E por fim a teimosinha, que é a possibilidade de escolher os mesmos números por 2, 4 ou até 8 concursos."),
                ),
                tabPanel("Experimento",
                         h2("Quais são as chances de ganhar na Mega-Sena?"),
                         p("Como foi dito, a probabilidade de ganhar na Mega-Sena varia em relação a quantidade de acertos que você teve. É importante lembrar que a partir de 4 números já há premiação!"),
                         p("Então, as chances de ganhar na Mega-Sena apostando em 6 números são as seguintes:"),
                         p("- De acertar a quadra (quatro números na cartela): 1 chance em 2332 ou 0,04%"),
                         p("- De ganhar na quinta (cinco números): 1 chance em 154.518 ou 0,0006%"),
                         p("- De ganhar o prêmio máximo (seis números): 1 chance em 50.063.860 ou 0,000002%"),
                         p("Mas essas chances podem aumentar se você jogar mais de 6 números. Caso você aumente o número de jogos em mais de 6 números, suas chances são as seguintes:")
                )
                
                
    )
    
   )
  )
)

# Define server logic for random distribution app ----
server <- function(input, output) {
  
  
  d <- reactive({
    vector_types <- c(6:20)
    number_of_games <- c(input$bet_6, input$bet_7, input$bet_8, input$bet_9, input$bet_10, input$bet_11, 
                         input$bet_12, input$bet_13, input$bet_14, input$bet_15, input$bet_16, input$bet_17, 
                         input$bet_18, input$bet_19, input$bet_20) 
    experiment(number_of_types = vector_types,
               number_of_bets = number_of_games)
  })
  
  
  output$MaximumMoneyLoss_describe1 <- renderTable({
    t(data.frame(unclass(summary(d()[['df']]$MaximumMoneyLoss)), 
                 check.names = FALSE, stringsAsFactors = FALSE))
    
  })
  
  
  output$text <- renderText({ input$nsteps })
  output$text1 <- renderText({ input$nsteps })
  output$text2 <- renderText({ input$nsteps })
  output$text3 <- renderText({ input$nsteps })
  output$text4 <- renderText({ input$spread })
  output$text5 <- renderText({ mean(d()[['df']]$NrBets) })
  output$text6 <- renderText({ min(d()[['df']]$StartingPoint) })
  
  output$dto <- renderDataTable({d()[['df']]})

  
}

# Create Shiny app ----
shinyApp(ui, server)
