# Load the ggplot2 library
library(ggplot2)

# Data for the Average Guy's following gender distribution
data_average_guy <- data.frame(
  Gender = c("Male", "Female"),
  Count = c(53, 47)
)

# Create the pie chart
ggplot(data_average_guy, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) + # Colors blue and orange
  labs(title = "REPRESENTATIVE/AVERAGE GUY FOLLOWING GENDER (20.02.2024)")

# Save the pie chart to a file
ggsave("average_guy_pie_chart.png", plot = last_plot(), width = 10, height = 8, units = "in")
