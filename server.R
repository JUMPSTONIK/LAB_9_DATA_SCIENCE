#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
library(tidyverse)
library(mgsub)
library(png)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$img1 <- renderUI({
        if(input$primero == "veh"){            
            img(height = 481, width = 801, src = "veh.jpg")
        }                                        
        else if(input$primero == "eve"){
            img(height = 539, width = 930, src = "eve.jpg")
        }
        else if(input$primero == "gen"){
            img(height = 515, width = 832, src = "gen.jpg")
        }
    })
    output$img2 <- renderUI({
        if(input$segundo == "ani"){            
            img(height = 481, width = 801, src = "ani.jpg")
        }                                        
        else if(input$segundo == "mar"){
            img(height = 539, width = 930, src = "mar.jpg")
        }
        else if(input$segundo == "mod"){
            img(height = 515, width = 832, src = "mod.jpg")
        }
    })

}
