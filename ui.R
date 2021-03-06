library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
#library(datasets)
a <- read.table("test.txt", header = T,sep="\t")
# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Telephones by region"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("date", "Region:", 
                    choices= c("tph","n2a","sg")),
        hr(),
        helpText("Data from AT&T (1961) The World's Telephones.")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("phonePlot")  
      )
      
    )
  )
)
