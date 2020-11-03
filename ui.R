#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(DT)
library(png)

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = shinytheme("cerulean"),
  titlePanel("Estadisticas de accidentes vs Importaciones de Motocicletas en Guatemala"),
  wellPanel(
    fluidRow(
      column(3, selectInput("primero", label = h4("Estadisticas por Acccidente"),
                            choices = list("Tipo de vehiculo" = "veh", "Tipo de evento" = "eve", "Por genero" = "gen"),
                            selected = "veh"),
             uiOutput("img1"))
    ),
    fluidRow(
      column(3, selectInput("segundo", label = h4("Estadisticas por Importacion"),
                            choices = list("Importaciones por anio" = "ani", "Importaciones por Marca" = "mar", "Importaciones por modelo" = "mod"),
                            selected = "veh"),
             uiOutput("img2"))
    )                  
  )
  
)) 
