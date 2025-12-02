# README.md

This file explains basic guidelines for putting together our report on NBA player stats.

## First steps:

### Restore package library

-   To restore package library according to the needs of the project, type 'make install' in terminal.

### Reading in data

-   All raw data files MUST be saved in raw_data folder.
-   Most recently updated file in raw_data folder will be read in load_data.R script and saved as a .rds file, which will be saved in the output folder.

## Generating output:

### Generating Report

-   The first make rule in the makefile will generate the .html report. Typing 'make' in the terminal will achieve this.

### Generating table

-   Table can be generated on its own by typing 'make make_table' in terminal.

### Generating Figure

-   Figure can be generated on its own by typing 'make make_figure' in terminal.

## Miscellaneous:

### Cleaning output folders

-   Typing 'make clean' in terminal will delete all output files, so report can be generated from scratch

### Config options

-   config option 'default' will produce a report with no code in it and only output (figures, tables).
-   config option 'test' will produce a report with all code in it as well as output (figures, tables).
