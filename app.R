setwd('C:\\Users\\Alexandre\\Documents\\github\\study-mega-sena')
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
                tabPanel("Descri��o",
                         h2("O que � a Mega-Sena? "),
                         p("A Mega-Sena � uma loteria muito popular no Brasil, criada em 1996 e administrada pela Caixa Econ�mica Federal, uma institui��o financeira controlada pelo governo brasileiro. Para jogar, os participantes devem escolher de seis a quinze n�meros entre um conjunto de 60 n�meros. O objetivo � acertar os seis n�meros sorteados para ganhar o pr�mio m�ximo."),
                         p("A Mega-Sena � conhecida por seus altos pr�mios, que muitas vezes chegam a dezenas de milh�es de reais. Em 2022, por exemplo, a Mega da Virada, que ocorre em 31/12, distribuiu o pr�mio total de R$ 541 milh�es."),
                         p("No entanto, vale destacar que a probabilidade de ganhar o pr�mio m�ximo jogando apenas 6 n�meros � extremamente baixa, cerca de uma em mais de cinquenta milh�es. "),
                         br(),
                         h2("Como funciona a Mega Sena?"),
                         p("Os sorteios da Mega Sena s�o realizados duas vezes por semana, geralmente �s quartas-feiras e aos s�bados. Os sorteios s�o transmitidos ao vivo pela televis�o, dando transpar�ncia � todo o processo."),
                         p("Al�m do pr�mio m�ximo, a Mega Sena oferece pr�mios menores para quem acerta quatro (quadra) ou cinco n�meros (quina). A probabilidade de acertar cinco n�meros � de uma em mais de 150 mil, enquanto a probabilidade de acertar quatro n�meros � de uma em quase 2 mil, considerando uma aposta simples de 6 n�meros."),
                         p("Caso nenhuma pessoa tenha marcado os 6 n�meros em um dado sorteio, o pr�mio acumula para o pr�ximo concurso. Por isso que existem premia��es que ultrapassam dezenas de milh�es de reais!"),
                         p("A exce��o a esta regra � a Mega da Virada, que ocorre no �ltimo dia do ano, e que n�o acumula. Nesse caso, se ningu�m marcar os 6 n�meros, o pr�mio � distribu�do para quem marcou 5, e assim por diante."),
                         br(),
                         h2('D� para jogar mais de 6 n�meros? Como funciona?'),
                         br(),
                         p("Claro que d�! Na verdade, quem joga pode marcar at� 20 n�meros na mesma aposta, mas isso encarece consideravelmente o valor a ser pago."),
                         p("A aposta simples de 6 n�meros custa R$4,50, e a aposta de 7 n�meros custa R$31,50, a de 8 n�meros custa R$126... e esse valor vai aumentando uma vez que a chance de ganhar tamb�m aumenta."),
                         p("S� para ter como refer�ncia, o custo de um jogo de 20 n�meros marcados na mesma aposta � de R$ 174 mil. Nesse caso, a chance de ganhar a mega (acertando os 6 n�meros) � de 1 em 1.292, portanto bem maior do que os 50 milh�es calculados na aposta simples, mas o valor a ser pago � quase 39 mil vezes maior (R$ 174 mil contra R$ 4,50)."),
                         h2('Quais s�o os outros formatos de jogo na Mega?'),
                         br(),
                         p("A Mega Sena tamb�m oferece a possibilidade de jogar em grupo, conhecido como bol�o."),
                         p("Nesse formato, v�rias pessoas compram bilhetes juntas e dividem o pr�mio em caso de vit�ria. Essa pode ser uma boa op��o para quem deseja aumentar suas chances de ganhar, j� que o valor do bilhete pode ser dividido entre v�rias pessoas. No entanto, � importante lembrar que, em caso de vit�ria, o pr�mio ser� dividido entre os membros do grupo, reduzindo o valor do pr�mio individual, ok?"),
                         p("H� tamb�m a surpresinha, que voc� apenas delimita a quantidade de n�meros e o sistema escolhe aleatoriamente para voc�."),
                         p("E por fim a teimosinha, que � a possibilidade de escolher os mesmos n�meros por 2, 4 ou at� 8 concursos."),
                ),
                tabPanel("Experimento",
                         h2("Quais s�o as chances de ganhar na Mega-Sena?"),
                         p("Como foi dito, a probabilidade de ganhar na Mega-Sena varia em rela��o a quantidade de acertos que voc� teve. � importante lembrar que a partir de 4 n�meros j� h� premia��o!"),
                         p("Ent�o, as chances de ganhar na Mega-Sena apostando em 6 n�meros s�o as seguintes:"),
                         p("- De acertar a quadra (quatro n�meros na cartela): 1 chance em 2332 ou 0,04%"),
                         p("- De ganhar na quinta (cinco n�meros): 1 chance em 154.518 ou 0,0006%"),
                         p("- De ganhar o pr�mio m�ximo (seis n�meros): 1 chance em 50.063.860 ou 0,000002%"),
                         p("Mas essas chances podem aumentar se voc� jogar mais de 6 n�meros. Caso voc� aumente o n�mero de jogos em mais de 6 n�meros, suas chances s�o as seguintes:"),
                         tableOutput("Table_odds")
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
  
  
  dd <- reactive({
    table_odds()
  })
  
  ddd <- reactive({
    price <- c(5,35,140,420,1050,2310,4620,8580,15015,25025,40040,61880,92820,135660,193800)
    number_of_games <- c(input$bet_6, input$bet_7, input$bet_8, input$bet_9, input$bet_10, input$bet_11, 
                         input$bet_12, input$bet_13, input$bet_14, input$bet_15, input$bet_16, input$bet_17, 
                         input$bet_18, input$bet_19, input$bet_20) 
    round(sum(price*number_of_games),2)
  })
  
  output$Table_odds <- renderTable({
    dd()
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
