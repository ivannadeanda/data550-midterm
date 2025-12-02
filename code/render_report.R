here::i_am("code/render_report.R")

library(rmarkdown)

WHICH_CONFIG <- Sys.getenv("WHICH_CONFIG")

report_file_name <- paste0(
  "nba_midterm_report_",
  WHICH_CONFIG, ".html"
)

render("midterm_report.Rmd", 
       output_file = report_file_name)
