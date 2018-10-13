#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

gender <- function(x){
  t <- substr(x,8,8)
  cat("\n ssn에서 추출한 값:",t) #print함수와 동일하나 결과값을 더 자세하게 보여줌 
  y<- switch(t,   #ip else 함수와 동일 
             "1"="남성",
             "2"="여성",
             "3"="남성",
             "4"="여성",
             "5"="외국인",
             "6"="외국인",
             "잘못된 값")
  cat("\n 결과값:",y)
  return(y)
}

server <- function(input, output, session) {
  onclick("btn",
          info({gender(input$txt)})
  )

}


shinyApp(ui, server)