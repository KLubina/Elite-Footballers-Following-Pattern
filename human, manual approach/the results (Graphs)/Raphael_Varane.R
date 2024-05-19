library(ggplot2)

# For Raphael Varane Following Gender
data_varane <- data.frame(
  Gender = c("Male", "Female"),
  Count = c(99, 1)
)

ggplot(data_varane, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) +
  labs(title = "RAPHAEL VARANE FOLLOWING GENDER (18.02.2024)")

# The code can be repeated for each graph, changing the data frame and title accordingly.