# Load the ggplot2 library for plotting
library(ggplot2)

# Data for Toni Kroos's following gender distribution
# Replace 90 and 10 with the actual counts or percentages you have
data_kroos <- data.frame(
  Gender = c("Male", "Female"),
  Count = c(90, 10)
)

# Create the pie chart
ggplot(data_kroos, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) + # Choose colors for the chart
  labs(title = "TONI KROOS FOLLOWING GENDER")

# Save the pie chart to a file
ggsave("kroos_pie_chart.png", plot = last_plot(), width = 10, height = 8, units = "in")
