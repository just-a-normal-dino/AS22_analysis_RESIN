library(psych)
library(ltm)

# Make sure to be in the right working directory
# in case go to to Session -> Set working directory -> Choose
U = read.csv("df_experiment.csv", header = TRUE)
U<-U[,2:9]
U

# Model data 1
fit_u <- grm(U, constrained = FALSE)


# Plot the graphs
plot(fit_u, lwd = 2, cex = 0.8,
     legend = TRUE, cx = "topright",
     xlab = "Agreeableness", cex.main = 1,
     cex.lab = 1, cex.axis = 1)


print(fit_u$coefficients) #  print the coefficients

coeff <- fit_u$coefficients

# Save them in the respective file
write.table(coeff, file = "coefficients.txt", sep = "\t", row.names = FALSE, col.names = FALSE)

