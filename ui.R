#################################################
#ui.R
# The Data Scientist's Gaming Table
#
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Data Scientist's Gaming Table"),
  sidebarPanel(
    h3('Inputs'),
    radioButtons("dieType", "Select a die type:",
      c("d4 (4 sided dice)" = "d4",
        "d6 (6 sided dice)" = "d6",
        "d8 (8 sided dice)" = "d8",
        "d10 (10 sided dice)" = "d10",
        "d12 (12 sided dice)" = "d12",
        "d20 (20 sided dice)" = "d20")             
    ),
    #numericInput('numDice', 'Select the number of dice', 1, min = 1, max = 10, step = 1),
    sliderInput('numDice', 'Select the number of dice', min = 1, max = 10, value = 2, step = 1)
    #actionButton("rollButton", "Roll!")
  ),
  mainPanel(
    h3('Results'),
    h4('Your selection: '),
    verbatimTextOutput('selectedDie'),
    h4('The value of the die roll:'),
    verbatimTextOutput('dieRollValue'),
    h3('Introduction'),
    p("Data Scientists need rest and relaxation too! Rather than simulate a prediction algorithm, this project uses Shiny
    and the R programming language to simulate a gaming tool: the Data Scientist's Gaming Table.
    "),
    p('Using the controls on the left hand side of the page, you can simulate multiple die rolls of the sort commonly used
    in tabletop gaming.
    '),
    h3('Instructions'),
    p('This interactive Shiny application simulates different die rolls. From the "Inputs" panel, select a type of die you wish to
    roll. Options include 4 sided dice, 6 sided dice, through a 20 sided dice.
    '),
    p('Next select the number of dice you wish to 
    simulate rolling. The results of your selections will be calculated with reactive Shiny code and displayed above.
    '),
    h3('Notes'),
    p('This application meets the following requirements as defined in the course instruction page
    '),
    tags$ol(
      tags$li('Some form of input: the radio buttons and the slider to the left'),
      tags$li('Some operation on the ui input in server.R: the die type and number of dice to roll are used in reactive code that 
        calls the R sample() function to simulate the dice roll'),
      tags$li('Some reactive output displayed as a result of the server calculations: both the dice type and results are displayed
        in the main panel'),
      tags$li('You must include enough documentation so that a novice user could use your application: I hope the instructions
        provided above are sufficient. :-)'),
      tags$li('The documentation should be at the Shiny website itself: the documentation for this app is self contained.')
    )
    
  )
  
        
))
