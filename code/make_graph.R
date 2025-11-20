## Bar Graph showing the Free Throw by Team


ggplot(nba, aes(x = Team, y = FT)) +
  geom_col() +
  labs(
    x = "Team",
    y = "Free Throw",
    title = "Free Throw by Team"
  ) +
  theme_minimal()

