# acm.R

# Install if needed
# install.packages("FactoMineR")
# install.packages("factoextra")

library(FactoMineR)
library(factoextra)

# Example dataset
data <- data.frame(
  Gender = factor(c("Male", "Female", "Female", "Male", "Male")),
  Education = factor(c("High", "Low", "Medium", "Medium", "High")),
  Preference = factor(c("A", "B", "A", "C", "B"))
)

# Run MCA
res.mca <- MCA(data, graph = FALSE)

# Eigenvalues
print(res.mca$eig)

# Plot individuals
fviz_mca_ind(res.mca)

# Plot variables
fviz_mca_var(res.mca)
