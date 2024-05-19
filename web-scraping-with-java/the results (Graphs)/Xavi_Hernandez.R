# Load the ggplot2 library for plotting
library(ggplot2)

# Data for Xavi Hernandez's following gender distribution
# Replace 85 and 15 with the actual counts or percentages you have
data_xavi <- data.frame(
  Gender = c("Male", "Female"),
  Count = c(85, 15)
)

# Create the pie chart
ggplot(data_xavi, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) + # Specify the colors for the chart
  labs(title = "XAVI HERNANDEZ FOLLOWING GENDER")

# Save the pie chart to a file
ggsave("xavi_hernandez_pie_chart.png", plot = last_plot(), width = 10, height = 8, units = "in")
