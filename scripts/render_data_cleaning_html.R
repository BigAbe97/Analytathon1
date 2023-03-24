# The code below renders the data_cleaning.Rmd file available in the notebooks folder to an HTML file in the reports folder.

library(rmarkdown)
code_dir <- "notebooks"
report_filename <- "data_cleaning.Rmd"
report_filename <- file.path(code_dir, report_filename)
output_dir <- "reports"
output <- file.path("..", output_dir)
out_path <- rmarkdown::render(report_filename, output_dir = output_dir, params = list(output_dir = output))
browseURL(out_path)