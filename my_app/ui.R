ui <- function(request){
  fluidPage(

    titlePanel("Unemployment in Luxembourg"),

    sidebarLayout(

      sidebarPanel(
        selectizeInput("place_name_selected", "Select place:",
                       choices=unique(unemp$place_name),
                       multiple = TRUE,
                       selected = c("Rumelange", "Dudelange"),
                       options = list(
                         plugins = list("remove_button"),
                         create = TRUE,
                         persist = FALSE # keep created choices in dropdown
                       )
        ),
        hr(),
        helpText("Original data from STATEC")
      ),

      mainPanel(
        plotOutput("unemp_plot")
      )
    )
  )

}
