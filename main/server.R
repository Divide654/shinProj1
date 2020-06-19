library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
    output$distPlot <- renderPlot({
        
        VC=input$VCbox
        OJ=input$OJbox
            x=FALSE                       
            if(OJ){x="OJ"}
            else if(VC){x="VC"}
            if(OJ&VC){x=c("OJ","VC")}
                data=subset(ToothGrowth,supp %in% x)
                
        colVar=factor(data[,as.numeric(input$selectBox)])
        
        qplot(data$len,fill=colVar,xlim=c(0,35),ylim=c(0,5),xlab="Tooth Length")        
    })
})
