# Load necessary libraries
library(ggplot2)
library(dplyr)

# Create a data frame
data <- data.frame(
  Gender = c("Male", "Female"),
  Percentage = c(88, 12)
)

# Add labels with percentages
data <- data %>%
  mutate(label = paste0(Percentage, "%"))

# Create the pie chart
ggplot(data, aes(x = "", y = Percentage, fill = Gender)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +
  geom_text(aes(label = label), position = position_stack(vjust = 0.5)) +
  labs(title = "CLARENCE SEEDORF FOLLOWING GENDER\n(17.02.2024)") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold", size = 16)
  ) +
  scale_fill_manual(values = c("Male" = "#0073C2FF", "Female" = "#EFC000FF"))
