library(shiny)
Sys.setenv(LANG="en")
Sys.setlocale(category = "LC_ALL", locale = "English_United States.1252")

shinyUI(fluidPage(
  titlePanel("PortfolioFrontier"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Input stock/fund Symbols in portfolio."),
    
      textInput("STOCKS", "STOCKS or FUNDS", value=paste("SPY","EFA","IWM","VWO","LQD","HYG", sep=" ")),
      
      submitButton(text = "Update")
    ),
    
    mainPanel(
      tableOutput("FrontierWeight"),
      plotOutput("plot"))
  )
))