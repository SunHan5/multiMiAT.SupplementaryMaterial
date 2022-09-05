rm(list = ls())
library(showtext)
setwd("E:/sun/multiMiRKAT/plot/data")

mydata.balance.100 <- readRDS("previous.methods.comparison.balance.100.rds")
mydata.ubbalance.100 <- readRDS("previous.methods.comparison.unbalance.100.rds")
mydata.nominal.100 <- readRDS("previous.methods.comparison.nominal.100.rds")
mydata.balance.200 <- readRDS("previous.methods.comparison.balance.200.rds")
mydata.ubbalance.200 <- readRDS("previous.methods.comparison.unbalance.200.rds")
mydata.nominal.200 <- readRDS("previous.methods.comparison.nominal.200.rds")

mydata1.balance.100 <- mydata.balance.100$Scenario1
mydata2.balance.100 <- mydata.balance.100$Scenario2
mydata3.balance.100 <- mydata.balance.100$Scenario3
mydata4.balance.100 <- mydata.balance.100$Scenario4

mydata1.unbalance.100 <- mydata.ubbalance.100$Scenario1
mydata2.unbalance.100 <- mydata.ubbalance.100$Scenario2
mydata3.unbalance.100 <- mydata.ubbalance.100$Scenario3
mydata4.unbalance.100 <- mydata.ubbalance.100$Scenario4

mydata1.nominal.100 <- mydata.nominal.100$Scenario1
mydata2.nominal.100 <- mydata.nominal.100$Scenario2
mydata3.nominal.100 <- mydata.nominal.100$Scenario3
mydata4.nominal.100 <- mydata.nominal.100$Scenario4

mydata1.balance.200 <- mydata.balance.200$Scenario1
mydata2.balance.200 <- mydata.balance.200$Scenario2
mydata3.balance.200 <- mydata.balance.200$Scenario3
mydata4.balance.200 <- mydata.balance.200$Scenario4

mydata1.unbalance.200 <- mydata.ubbalance.200$Scenario1
mydata2.unbalance.200 <- mydata.ubbalance.200$Scenario2
mydata3.unbalance.200 <- mydata.ubbalance.200$Scenario3
mydata4.unbalance.200 <- mydata.ubbalance.200$Scenario4

mydata1.nominal.200 <- mydata.nominal.200$Scenario1
mydata2.nominal.200 <- mydata.nominal.200$Scenario2
mydata3.nominal.200 <- mydata.nominal.200$Scenario3
mydata4.nominal.200 <- mydata.nominal.200$Scenario4



#################################################################################
###################################  n = 100  ###################################
#################################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/multiMiAT.previous.methods.comparison.100.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata1.balance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata1.unbalance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 90), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata1.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 90, legend = colnames(mydata1.nominal.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.balance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.unbalance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 50), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 10, 20, 30, 40, 50), v = as.factor(rownames(mydata2.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 50, legend = colnames(mydata2.nominal.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata3.balance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 90), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata3.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 90, legend = colnames(mydata3.unbalance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 45), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 10, 20, 30, 40), v = as.factor(rownames(mydata3.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 45, legend = colnames(mydata3.nominal.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.balance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata4.balance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.unbalance.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata4.unbalance.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.100))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.100)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.100[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata4.nominal.100), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()





#################################################################################
###################################  n = 200  ###################################
#################################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/multiMiAT.previous.methods.comparison.200.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 55, legend = colnames(mydata1.balance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 55, legend = colnames(mydata1.unbalance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 55, legend = colnames(mydata1.nominal.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.balance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.unbalance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata2.nominal.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata3.balance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata3.unbalance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.8, 100, legend = colnames(mydata3.nominal.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.balance.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 55, legend = colnames(mydata4.balance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.unbalance.200)), lty = 2, lwd = 1, col = "grey90")
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
lines(x, mydata4.unbalance.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 55, legend = colnames(mydata4.unbalance.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.200))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.200)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.200[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 55, legend = colnames(mydata4.nominal.200), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()
 