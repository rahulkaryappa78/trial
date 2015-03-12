library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
#library(datasets)
a <- read.table("test.txt", header = T,sep="\t")
b <- a$date
# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$phonePlot <- renderPlot({
    
    # Render a barplot
    plot(b,a[,input$date], type="p",
            ylab="Number of Telephones",
            xlab="Year")
  })
})
