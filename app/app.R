#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Path to "importaciones.csv"
filename = "/home/jose/Documents/UVG/Data Science/Lab9/data/importaciones.csv"

# Loading Data
data = read.csv(filename, header = TRUE)
sub_data = data[data$Tipo.de.Vehiculo == "MOTO",]



# Define UI for application that draws a histogram
ui <- fluidPage(
    # Application title
    titlePanel("Importaciones de Motos"),
    
    sidebarPanel(
        textInput("marca", "Ingresar la Marca de la moto", "BMW")
    ),
    
    mainPanel(
        plotOutput("trend")
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$trend <- renderPlot({
        data_marca <- subset(
            sub_data, sub_data$Marca == input$marca
        )
        ggplot(data_marca, aes(Modelo.del.Vehiculo, Impuesto)) +
            geom_point()
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
