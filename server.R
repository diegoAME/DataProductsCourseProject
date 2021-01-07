# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        t=seq(0,.1,0.001)
        f <- input$freq
        y=sin(2*pi*f*t)
        plot(t,y,type="l",lwd=2, xlab="time", ylab="Amp",col="blue")


    })

})
