# Load the ggplot2 library for data visualization
library(ggplot2)

# Data for Luka Modric's following gender distribution
data_modric <- data.frame(
  Gender = c("Male", "Female"),
  Count = c(91, 9)
)

# Create the pie chart
ggplot(data_modric, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) +  # Choosing colors similar to the images
  labs(title = "LUKA MODRIC FOLLOWING GENDER (17.02.2024)")

# Save the pie chart as an image file
ggsave("modric_pie_chart.png", plot = last_plot(), width = 10, height = 8, units = "in")
