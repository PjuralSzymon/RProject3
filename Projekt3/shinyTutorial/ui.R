shinyServer(
  pageWithSidebar(
    headerPanel(" My first Shiny App"),

    sidebarPanel(
      selectInput("Distribution","Please Select Distribution Type",
                  choices=c("Normal","Exponential")),
      sliderInput("sampleSize", "Please Select Samlpe Size: ",
                  min=100, max=5000, value=1000,step=100),
      conditionalPanel(condition = "input.Distribution == 'Normal'",
                       textInput("Mean", "Please Select the mean", 10),
                       textInput("Sd", "Please Select Standard Deviation", 3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("Lambda","Please Select Exponential Lambda:", 1))

    ),

    mainPanel(
      {
        plotOutput("myPlot")
      }
    )
  )
)
