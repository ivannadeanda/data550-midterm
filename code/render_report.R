here::i_am("code/render_report.R")

library(rmarkdown)

render("midterm_report.Rmd", 
       output_file = "nba_midterm_report.html")
