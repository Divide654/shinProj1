library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(


    titlePanel("Tooth Growth in Guinea Pigs Based on Supplement"),
    
    sidebarLayout(
        sidebarPanel(
            checkboxInput("OJbox","Orange Juice",FALSE),
            checkboxInput("VCbox","Vitamin C",FALSE),
            selectInput("selectBox", "Color Variable",
                        choices=list("Supplement"=2,"Dose"=3),selected=1)
        ),
        
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
