library(shiny)
library(ggplot2)

# We'll use the 'midwest' dataset that comes
# with the ggplot2 package to demonstrate a simple
# Shiny ap using using ggplot2.

# Define the UI
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Midwest Demographics Explorer"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("demographic", "Demographic Variable:", 
                  choices=names(midwest)[c(12:16,19:26)]),
      helpText("Choose a demographic category from midwest county-level 
               demographic data to compare by state."),
      helpText("percwhite = Percent white"),
      helpText("percblack = Percent black"),
      helpText("percamerindan = Percent American Indian"),
      helpText("percasian = Percent Asian"),
      helpText("percother = Percent other races"),
      helpText("percollege = Percent college educated"),
      helpText("percprof = Percent profession"),
      helpText("percpovertyknown = percent poverty known"),
      helpText("percbelowpoverty = percent below poverty level"),
      helpText("percchildbelowpovert = percent children below poverty level"),
      helpText("percadultpoverty = percent adults in poverty"),
      helpText("percelderlypoverty = percent elderly in poverty")
    ),
    
    # Create a spot for the ggplot boxplots
    mainPanel(
      plotOutput("boxplots")  
    )
  )))
