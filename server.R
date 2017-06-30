#Server side code to do the calculation and display the result.

library(shiny)

shinyServer(function(input, output) {

 output$text <- renderText(input$miles/input$mpg * input$fuelcost * 1000)

  })


