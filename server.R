
# This is the server logic for mtcars_explore_plot shiny web application.

library(shiny)
library(shinyjs)
library(ggplot2)
library(MASS)



source("global.R")


shinyServer(function(input, output) {
    #disables or enables selection list of factor variables depending on the "Use factor split" checkbox 
    observe({
        toggleState("fact_id", condition = input$fsplit_id)
    })
    
    #render plot with selected X, Y variables and other parameters on UI page
    output$newPlot <- renderPlot({ggplot(data=mc, aes_string(y=input$varY_id, 
                                    x=input$varX_id, 
                                    col=ifelse(input$fsplit_id, 
                                               input$fact_id, input$varY_id))) + 
            geom_point(size=2) + 
            geom_smooth(method = input$smooth_id, se=input$se_id, size=1) +
            ggtitle(paste(input$varY_id, "by", input$varX_id, ifelse(input$fsplit_id, paste("and", input$fact_id),""))) +
            theme(plot.title=element_text(face="bold", size=20), 
                  axis.title=element_text(face="bold", size=14), 
                  legend.title=element_text(face="bold", size=12))
        
            })
    
})
