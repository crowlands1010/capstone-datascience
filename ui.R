#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
library(datasets)
library(png)

## User Interface
ui <- fluidPage(
    
    # App title ----
    titlePanel("Natural Language Processor: Word Prediction"),
    h4("Courtney Rowlands"),
    h4("1-Nov-2019"),br(),
    
    # Sidebar layout with input and output definitions ----
    sidebarLayout( 
        
        # Sidebar panel for inputs ----
        sidebarPanel(
            
            # Input: Selector for variable to plot against Infant Mortality ----
            textInput("input_str",label = "Input Word(s): ",
                      value = " "), 
            
            br(),
            # Output: Plot of the requested variable against mpg ----
            HTML("<b>","Predicted Next Word: ","</b>"),
            textOutput("text2"),
            br()
        ),
        
        
        # Main panel for displaying outputs ----
        mainPanel(
            # This is a description
            helpText("This app is designed to predict your next word based on the",
                     "data supplied in the Milestone Report Project. It is in the",
                     "very crude stages because of the limited spectrum of words",
                     "provided in our dataset after cleaning, but it does provide an",
                     "excellent case for the power of predictive and data analytics.",
                     br(),
                     br(),
                     "If you happen happen to enter a large string of words, please ",
                     "be patient while the data loads your prediction. Thank you very",
                     "much.")
        )
    )
)
