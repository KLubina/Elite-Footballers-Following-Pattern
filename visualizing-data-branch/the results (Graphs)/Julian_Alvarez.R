# Load ggplot2 for visualization
library(ggplot2)

# Data for Julian Alvarez's following gender distribution
data_alvarez <- data.frame(
  Gender = c("Male", "Female"),
  Count = c(87, 13)  # Adjust these numbers based on your data
)

# Create the pie chart
ggplot(data_alvarez, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +  # Use polar coordinates for the pie chart
  theme_void() +  # Remove axes and background
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) +  # Set custom colors
  labs(title = "JULIAN ALVAREZ FOLLOWING GENDER (17.02.2024)")

# Save the pie chart to a PNG file
ggsave("julian_alvarez_pie_chart.png", plot = last_plot(), width = 10, height = 8, units = "in")
