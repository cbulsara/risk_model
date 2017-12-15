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
library(mc2d)

set.seed(1981)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("ALE Phishing Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30),
       sliderInput("poiPhish_mean",
                   "Expected # Phishing Incidents",
                   min = 1,
                   max = 500,
                   value = 250),
       sliderInput("poiPhish_iter",
                   "Years to Simulate",
                   min = 1,
                   max = 10000,
                   value = 1000),
       sliderInput("prtLabor_min",
                   "Minimum Expected Labor Hours",
                   min = 1,
                   max = 100,
                   value = 2),
       sliderInput("prtLabor_mean",
                   "Mean Expected Labor Hours",
                   min = 2,
                   max = 100,
                   value = 6),
       sliderInput("prtLabor_max",
                   "Maximum Expected Labor Hours",
                   min = 3,
                   max = 100,
                   value = 40),
       sliderInput("prtLabor_con",
                   "Labor Hour Estimate Confidence",
                   min = 1,
                   max = 10,
                   value = 4)
       
    ),
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("poiPhishPlot"),
       plotOutput("prtLaborPlot")
    )
  )
))
