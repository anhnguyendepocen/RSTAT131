
shinyUI(fluidPage(
  titlePanel("Correlation coefficient"),
  withMathJax(),
  helpText("Model: first draw \\(\\alpha \\sim  \\mathcal{N}(0, 1) \\),"),
  helpText(" then for all t, \\(X_t = \\mathcal{N}(1, 2^2) \\), \\(Y_t = \\alpha X_t + \\Gamma(3,3)^2 + \\mathcal{N}(0, 1) \\)."),
  helpText(" line with slope equal to correlation in red, regression line in dashed black."),
  sidebarLayout(position = "right",
                sidebarPanel(
                  selectInput(inputId = "obs",
                              label = "Observations:",
                              choices = c(10, 50, 100, 250, 500, 1000),
                              selected = 100),
                  br(),
                  checkboxInput(inputId = "centered",
                                label = strong("Center"),
                                value = FALSE),
                  checkboxInput(inputId = "checkstdized",
                                label = strong("Standardize"),
                                value = FALSE),
                  br(),
                  actionButton("goButton", "Simulate")
                ),
                mainPanel(
                  plotOutput("plot")
                )
  )



))

