here::i_am(
  "code/make_table.R"
)

library(dplyr)

#load data
NBA_Data <- read.table("./raw_data/nba_2025-10-30.txt", header = TRUE, sep = ",")

#get 5 youngest and oldest players
youngest_players <- NBA_Data[order(NBA_Data$Age)[1:5],]

saveRDS(
  youngest_players,
  file = here::here("output", "youngest_players.rds")
)

oldest_players <- NBA_Data[order(NBA_Data$Age, decreasing = TRUE)[1:5],]

saveRDS(
  oldest_players,
  file = here::here("output", "oldest_players.rds")
)

#merge 5 youngest and oldest players
young_and_old <- bind_rows(youngest_players, oldest_players)

saveRDS(
  young_and_old,
  file = here::here("output", "young_and_old.rds")
)

#clean the data set 
five_young_and_old <- young_and_old %>% 
  select("Rk", "Player", "Age", "Team", "X3P", "X3PA", "X2P", "X2PA", "PTS")

saveRDS(
  five_young_and_old,
  file = here::here("output", "five_young_and_old.rds")
)

#who is youngest and oldest 
grouped_ages <- five_young_and_old %>%
  mutate(
    rank_asc  = min_rank(Age),
    rank_desc = min_rank(desc(Age)),
    age_group = case_when(
      rank_asc  <= 5 ~ "youngest5",   
      rank_desc <= 5 ~ "oldest5"
    )
  )

saveRDS(
  grouped_ages,
  file = here::here("output", "grouped_ages.rds")
)
