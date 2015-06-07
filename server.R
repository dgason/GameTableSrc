##########################################
#server.R
# The Data Scientist's Gaming Table
library(shiny)
shinyServer(
  

  function(input, output) {
    output$selectedDie <- renderPrint({input$dieType})
    output$dieRollValue <- renderText({
      #if (input$rollButton == 1) {
      #}
        numDice <- input$numDice
        if (numDice > 10) {
          numDice <- 10
        }
        if (numDice < 1) {
          numDice <- 1
        }
        if (input$dieType == "d4") {
          sample(1:4, numDice, replace = TRUE)
        } else if (input$dieType == "d6") {
          sample(1:6, numDice, replace = TRUE)
        } else if (input$dieType == "d8") {
          sample(1:8, numDice, replace = TRUE)
        } else if (input$dieType == "d10") {
          sample(1:10, numDice, replace = TRUE)
        } else if (input$dieType == "d12") {
          sample(1:12, numDice, replace = TRUE)
        } else if (input$dieType == "d20") {
          sample(1:20, numDice, replace = TRUE)
        } else {
          "ack"
        }
      
    })
  }  
)