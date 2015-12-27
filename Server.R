library(shiny)
library(ggplot2)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$boxplots <- renderPlot({
    
    # Render a ggplot2 boxplot
    p <- ggplot(midwest, aes_string(x="state", y=input$demographic))
    
    print(p + geom_boxplot())
    
  }, height=500)
})
