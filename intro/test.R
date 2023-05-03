# Generate random data
set.seed(123)
x <- rnorm(100)
y <- 2*x + rnorm(100)

# Plot scatterplot with trend line
library(ggplot2)
data <- data.frame(x, y)
plot <- ggplot(data, aes(x, y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

print(plot)