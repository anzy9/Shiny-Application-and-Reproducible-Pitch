library(shiny)

library(ggplot2)


lambda <- 0.2;
samples <- 40;
simulationCount <- 1000;
simMeans = NULL


shinyServer(function(input, output) {
  output$samplesize <- renderText({
    paste("Sample size is",
          strong(input$sam),
          "Simulation count is",
          strong(input$sim))
  })
  # output$parentsText <- renderText({
  #   paste("When the father's height is",
  #         strong(round(input$inFh, 1)),
  #         "cm, and mother's is",
  #         strong(round(input$inMh, 1)),
  #         "cm, then:")
  # })
  output$Plot <- renderPlot({
    samples <- input$sam;
    simulationCount <- input$sim;
    simMeans = NULL
    for (i in 1 : simulationCount) {
      simMeans = c(simMeans, mean(rexp(samples,lambda)))
    }
    
    hist(simMeans, prob=TRUE, col="gray", main="Distribution", breaks=40, xlim=c(2,8), xlab = "Simulation Means of 40 samples")
    lines(density(simMeans), lwd=3, col="red")
  })
})