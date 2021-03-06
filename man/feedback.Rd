% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feedback.R
\name{feedback}
\alias{feedback}
\title{feedback}
\usage{
feedback(inputId, condition, text = NULL, color = NULL, icon = NULL)
}
\arguments{
\item{inputId}{the Shiny input's \code{inputId} argument}

\item{condition}{condition under which feeback is displayed}

\item{text}{text string to display below input}

\item{color}{the color of the feeback}

\item{icon}{a \code{shiny::icon} object}
}
\description{
displays feedback next to Shiny input
}
\examples{

## Only run examples in interacive R sessions
if (interactive()) {
  ui <- fluidPage(
    useShinyFeedback(),
    
    numericInput(
      "exampleInput",
      "Show Feedback When < 0",
      value = -5
    )
  )
  
  server <- function(input, output) {
    observeEvent(input$exampleInput, {
      feedback(
        "exampleInput",
        condition = input$exampleInput < 0,
        text = "I am negative",
        color = "#d9534f",
        icon = shiny::icon("exclamation-sign", lib="glyphicon")
      )
    })
  }
  
  shinyApp(ui, server)
}

}
\seealso{
\code{\link{feedbackWarning}}, \code{\link{feedbackDanger}}, \code{\link{feedbackSuccess}}
}
