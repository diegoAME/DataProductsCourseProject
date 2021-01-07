library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Waves"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h3("This app shows a graphic representation of a sine wave. You can choose the value in Hz of the frecuency
               between 1 and 50. The amplitude es set to 1 and the time interval is set to 0-0.1 s."),
            sliderInput("freq",
                        "Frecuency:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
