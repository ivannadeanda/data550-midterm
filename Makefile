nba_midterm_report_${WHICH_CONFIG}.html: code/render_report.R load_data \
  make_table make_figure
	Rscript code/render_report.R
	
.PHONY: load_data
load_data: code/load_data.R raw_data/*
	Rscript code/load_data.R

.PHONY: make_table
make_table: code/make_table.R load_data
	Rscript code/make_table.R
	
.PHONY: make_figure
make_figure: code/make_graph.R load_data
	Rscript code/make_graph.R

# Clean output folder and delete report 
.PHONY: clean
clean:
	rm output/*.rds && rm -f output/*.png && rm -f *html
	
# Restore package library
.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"