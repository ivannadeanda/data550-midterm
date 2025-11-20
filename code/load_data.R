here::i_am("code/load_data.R")

# Making list of files in raw_data folder
files <- list.files("raw_data", full.names = TRUE)

# Identifying which file has been most recently updated
latest <- files[which.max(file.info(files)$mtime)]

# Reading in most recently updated file
nba <- read.delim(latest, header = TRUE, sep = ",")

saveRDS(nba, file = "output/nba.rds")
