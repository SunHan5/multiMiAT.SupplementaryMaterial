rm(list = ls())
library(showtext)

mydata1.balance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario1.balance.100.rds")
mydata2.balance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario2.balance.100.rds")
mydata3.balance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario3.balance.100.rds")
mydata4.balance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario4.balance.100.rds")

mydata1.unbalance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario1.unbalance.100.rds")
mydata2.unbalance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario2.unbalance.100.rds")
mydata3.unbalance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario3.unbalance.100.rds")
mydata4.unbalance.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario4.unbalance.100.rds")

mydata1.nominal.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario1.nominal.100.rds")
mydata2.nominal.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario2.nominal.100.rds")
mydata3.nominal.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario3.nominal.100.rds")
mydata4.nominal.100 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario4.nominal.100.rds")

mydata1.balance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario1.balance.200.rds")
mydata2.balance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario2.balance.200.rds")
mydata3.balance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario3.balance.200.rds")
mydata4.balance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario4.balance.200.rds")

mydata1.unbalance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario1.unbalance.200.rds")
mydata2.unbalance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario2.unbalance.200.rds")
mydata3.unbalance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario3.unbalance.200.rds")
mydata4.unbalance.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario4.unbalance.200.rds")

mydata1.nominal.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario1.nominal.200.rds")
mydata2.nominal.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario2.nominal.200.rds")
mydata3.nominal.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario3.nominal.200.rds")
mydata4.nominal.200 <- readRDS("multiMiRKAT.multiMiAT.comparison.scenario4.nominal.200.rds")





#################################################################################
###################################  n = 100  ###################################
#################################################################################

setEPS()
postscript("multiMiRKAT.multiMiAT.comparison.100.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.100))
plot(x, rep(999, 8), type = "b", ylim = c(33, 100), xlab = "", ylab = "", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(40, 50, 60, 70, 80, 90, 100), v = as.factor(rownames(mydata1.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 54, legend = colnames(mydata1.balance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.100))
plot(x, rep(999, 8), type = "b", ylim = c(20, 100), xlab = "", ylab = "", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 45, legend = colnames(mydata1.unbalance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.100))
plot(x, rep(999, 8), type = "b", ylim = c(5, 88), xlab = "", ylab = "", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60, 70, 80), v = as.factor(rownames(mydata1.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 88, legend = colnames(mydata1.nominal.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.100))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.balance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.100))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.unbalance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.100))
plot(x, rep(999, 8), type = "b", ylim = c(5, 55), xlab = "", ylab = "", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50), v = as.factor(rownames(mydata2.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 55, legend = colnames(mydata2.nominal.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.100))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata3.balance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.100))
plot(x, rep(999, 8), type = "b", ylim = c(0, 90), xlab = "", ylab = "", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata3.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 90, legend = colnames(mydata3.unbalance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.100))
plot(x, rep(999, 8), type = "b", ylim = c(5, 25), xlab = "", ylab = "", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 10, 15, 20, 25), v = as.factor(rownames(mydata3.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 25, legend = colnames(mydata3.nominal.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.100))
plot(x, rep(999, 8), type = "b", ylim = c(30, 100), xlab = "", ylab = "", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(30, 40, 50, 60, 70, 80, 90, 100), v = as.factor(rownames(mydata4.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 52, legend = colnames(mydata4.balance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.100))
plot(x, rep(999, 8), type = "b", ylim = c(13, 100), xlab = "", ylab = "", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 40.5, legend = colnames(mydata4.unbalance.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.100))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.100[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 35, legend = colnames(mydata4.nominal.100), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()



#################################################################################
###################################  n = 200  ###################################
#################################################################################


setEPS()
postscript("multiMiRKAT.multiMiAT.comparison.200.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.200))
plot(x, rep(999, 8), type = "b", ylim = c(70, 100), xlab = "", ylab = "", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(70, 75, 80, 85, 90, 95, 100), v = as.factor(rownames(mydata1.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 79.3, legend = colnames(mydata1.balance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.200))
plot(x, rep(999, 8), type = "b", ylim = c(55, 100), xlab = "", ylab = "", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(60, 70, 80, 90, 100), v = as.factor(rownames(mydata1.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 69, legend = colnames(mydata1.unbalance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.200))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 35, legend = colnames(mydata1.nominal.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.200))
plot(x, rep(999, 8), type = "b", ylim = c(10, 100), xlab = "", ylab = "", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 50, legend = colnames(mydata2.balance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.200))
plot(x, rep(999, 8), type = "b", ylim = c(10, 100), xlab = "", ylab = "", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 50, legend = colnames(mydata2.unbalance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.200))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.nominal.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.200))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 50, legend = colnames(mydata3.balance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.200))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 45, legend = colnames(mydata3.unbalance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.200))
plot(x, rep(999, 8), type = "b", ylim = c(5, 50), xlab = "", ylab = "", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50), v = as.factor(rownames(mydata3.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 50, legend = colnames(mydata3.nominal.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.200))
plot(x, rep(999, 8), type = "b", ylim = c(84, 100), xlab = "", ylab = "", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(85, 90, 95, 100), v = as.factor(rownames(mydata4.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 89.1, legend = colnames(mydata4.balance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.200))
plot(x, rep(999, 8), type = "b", ylim = c(50, 100), xlab = "", ylab = "", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(50, 60, 70, 80, 90, 100), v = as.factor(rownames(mydata4.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 66, legend = colnames(mydata4.unbalance.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.200))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.200[, "Score test"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "multiMiRKAT-N"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "multiMiRKAT-O"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "multiMiAT(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 35, legend = colnames(mydata4.nominal.200), col = c("black", "skyblue", "slateblue", "orange", "green", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()

