## Bar Graph showing the Number of Free Throws by Team

here::i_am("code/make_graph.R")

library(ggplot2)

nba <- readRDS(here::here("output/nba.rds"))

freethrows <- ggplot(nba, aes(x = Team, y = FT)) +
  geom_col() +
  labs(
    x = "Team Name",
    y = "Number of Successful Free Throws per 36 Minutes(#)",
    title = "Number of Successful Free Throws by Team"
  ) +
  theme_minimal()

ggsave(here::here("output/nba_freethrows.png"), plot = freethrows)

