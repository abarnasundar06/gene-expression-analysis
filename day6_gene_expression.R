
# Day 6: Gene Expression Analysis

library(ggplot2)

# Create sample gene expression data
gene_data <- data.frame(
  Gene = c("BRCA1", "TP53", "EGFR", "MYC", "KRAS", "APC"),
  Expression = c(25, 60, 45, 80, 35, 55)
)

# 1. View the data
print(gene_data)

# 2. Calculate summary statistics
mean(gene_data$Expression)
max(gene_data$Expression)
min(gene_data$Expression)

# 3. Find highly expressed genes
high_expression <- subset(gene_data, Expression > 50)
print(high_expression)

# 4. Create a graph
p <- ggplot(gene_data, aes(x = Gene, y = Expression)) +
  geom_col() +
  labs(
    title = "Gene Expression Analysis",
    x = "Gene",
    y = "Expression Level"
  ) +
  theme_minimal()

print(p)

# 5. Save the results
write.csv(gene_data, "day6_gene_expression.csv", row.names = FALSE)
ggsave("day6_gene_expression.png", plot = p, width = 7, height = 5)
