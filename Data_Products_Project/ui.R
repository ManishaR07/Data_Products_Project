library(shiny)
library(ggplot2)
library(car)

shinyUI(fluidPage(
    titlePanel("Predict Horsepower from MPG"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderMPG","What is the MPG of the car?",10,35,value=20),
            chechboxInput("showModel1","Show/Hide Model 1", value=TRUE),
            checkboxInput("showModel2","show/Hide Model 2",value=TRUE)
        ),
        MainPanel(
            plotOutput("plot1"),
            h3("Predicted Horsepower from Model 1:"),
            textOutput("pred1"),
            h3("Predicted Horsepower from Model 2:"),
            textOutput("pred2")
        )
    )
)