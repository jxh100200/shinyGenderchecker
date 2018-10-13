

library(shiny)

ui <- fluidPage(
  useShinyjs(),
  textInput("txt",
            label = h3("주민번호앞자리 입력"),
            value="(예시)900101-2"),
  actionButton("btn","확 인")
)