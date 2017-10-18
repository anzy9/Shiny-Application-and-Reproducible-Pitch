library(shiny)

shinyUI(fluidPage(
  titlePanel("Central Limit Theorem Test"),
  sidebarLayout(
    sidebarPanel(
      helpText("In this appliation we will try and simulate the exponential distribution and investigate whether it follows the central limit theorem"),
      helpText("The exponential distribution can be simulated in R with rexp(n, lambda) where lambda is the rate
parameter"),
      helpText("The distribution seems to folow the normal distribution and this is due to the central limit theorem normal distribution, due to the Central Limit Theorem(i.e as we increase the sample size, te distribution follows a notmal distribution)"),
      sliderInput(inputId = "sam",
                  label = "Sample Size:",
                  value = 40,
                  min = 10,
                  max = 200,
                  step = 1),
      sliderInput(inputId = "sim",
                  label = "Simulation Count:",
                  value = 1000,
                  min = 2,
                  max = 2000,
                  step = 1)
    ),
    
    mainPanel(
      htmlOutput("samplesize"),
      #htmlOutput("prediction"),
      plotOutput("Plot", width = "50%")
    )
  )
))