

# This is the user-interface definition of mtcars_explore_plot shiny web application.

library(shiny)
library(shinyjs)
library(markdown)



shinyUI(fluidPage(
    shinyjs::useShinyjs(),
    # Application title
    titlePanel("mtcars exploratory plot"),
    sidebarLayout(
        # Sidebar with a slider input for number of bins
        sidebarPanel(
            selectInput(
                inputId = "varY_id", label = "Select Y variable",
                choices = setdiff(names(mc), fvar), selected = "MPG"
            ),
            selectInput(
                inputId = "varX_id", label = "Select X variable",
                choices = setdiff(names(mc), fvar), selected = "Weight"
            ),
            selectInput(
                inputId = 'fact_id', label = "Factor split", choices = fvar
            ),
            radioButtons(
                inputId = "smooth_id", label = "Smoothing method", choices = c("lm","loess","rlm"), selected =
                    "lm", inline = TRUE
            ),
            checkboxInput(
                inputId = "se_id", label = "Draw conf. interval", value = TRUE
            ),
            checkboxInput(
                inputId = "fsplit_id", label = "Use factor split", value = TRUE
            )
        ),
        # Show a plot of the generated distribution
        mainPanel(tabsetPanel(
            # Show a plot of the generated distribution
            tabPanel("Plot", plotOutput("newPlot")),
            #Show readme file
            tabPanel("Help", includeMarkdown("Readme.md"))
        ))
    )
))
