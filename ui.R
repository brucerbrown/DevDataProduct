
# This is the user-interface code for the Shiny web application.

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Annual Fuel Cost Calculater"),

  # Sidebar with sliders input for cost of fuel, total miles driven and mpg.
  sidebarLayout(
    sidebarPanel(
      sliderInput("fuelcost",
                  "Price per gallon ($):",
                  min = 0.01,
                  max = 7.50,
                  value = 3.50),
   
        sliderInput("miles",
                    "Annual miles driven (000):",
                    min = 0,
                    max = 50,000,
                    value = 10,000),
      
      sliderInput("mpg",
                  "Miles per gallon (mpg):",
                  min = 0,
                  max = 50,
                  value = 20)
      ),
    # Do the calculation.
    mainPanel(
      h2("Annual Fuel Cost ($):"),
      textOutput("text")
  )
  )
))

