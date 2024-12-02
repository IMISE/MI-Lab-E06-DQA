library(shiny)
library(dataquieR)

ui <- fluidPage(

    # Application title
    titlePanel("DataquieR Shiny Tutorial"),

    sidebarLayout(
        sidebarPanel(
             selectInput("view","Choose a Table to View", c("Data", "Metadata")),
        ),

        mainPanel(
           tabsetPanel(
            tabPanel("Tables", tableOutput("data")),
            tabPanel("Report", uiOutput("report"))
            )
        )
    )
)

server <- function(input, output) {

    #Both are shipped with the dataquieR package
    sd1 <- prep_get_data_frame("ship")
    md1 <- prep_get_data_frame("ship_meta_v2")

    output$data <- renderTable({
        reactive <- ({
            if (input$view == "Data") {
                sd1
            } else if (input$view == "Metadata") {
                md1
            }
        })
    })

    #Need to load it separately for the dq_report
    prep_load_workbook_like_file("ship_meta_v2")

    check_report_exists <- function() {
        report_path <- "www/.report/report.html"
        return(file.exists(report_path))
    }

    generate_report <- function() {
        dq_report <- dq_report2(study_data = sd1)
        print(dq_report, dir = "www")
    }

    output$report <- renderUI({
        if (!check_report_exists()) {
            generate_report()
        } 
        tags$iframe(src = ".report/report.html", width = "100%", height = "600px")
    })
}

# Run the application
shinyApp(ui = ui, server = server)
