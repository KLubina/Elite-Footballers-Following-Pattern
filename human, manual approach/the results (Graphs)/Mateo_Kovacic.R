# Load the ggplot2 library for plotting
library(ggplot2)

# Data for Mateo Kovacic's following gender distribution
data_kovacic <- data.frame(
  Gender = c("Male", "Female"),
  Count = c(88, 12)
)

# Create the pie chart
ggplot(data_kovacic, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) + # Colors blue and orange
  labs(title = "MATEO KOVACIC FOLLOWING GENDER (17.02.2024)")

# Save the pie chart to a file
ggsave("kovacic_pie_chart.png", plot = last_plot(), width = 10, height = 8, units = "in")
