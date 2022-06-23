rm(list = ls())
library(showtext)

result.aMiSPU <- readRDS("result.aMiSPU.rds")
result.MiHC <- readRDS("result.MiHC.rds")
result.OMiAT <- readRDS("result.OMiAT.rds")
result.OMiRKAT <- readRDS("result.OMiRKAT.rds")

allmethods.scenario1.balance.100 <- cbind(result.aMiSPU$balance$`n = 100; Scenario 1`, result.MiHC$balance$`n = 100; Scenario 1`, result.OMiAT$balance$`n = 100; Scenario 1`, result.OMiRKAT$balance$`n = 100; Scenario 1`)
allmethods.scenario1.unbalance.100 <- cbind(result.aMiSPU$unbalance$`n = 100; Scenario 1`, result.MiHC$unbalance$`n = 100; Scenario 1`, result.OMiAT$unbalance$`n = 100; Scenario 1`, result.OMiRKAT$unbalance$`n = 100; Scenario 1`)
allmethods.scenario1.nominal.100 <- cbind(result.aMiSPU$nominal$`n = 100; Scenario 1`, result.MiHC$nominal$`n = 100; Scenario 1`, result.OMiAT$nominal$`n = 100; Scenario 1`, result.OMiRKAT$nominal$`n = 100; Scenario 1`)

allmethods.scenario2.balance.100 <- cbind(result.aMiSPU$balance$`n = 100; Scenario 2`, result.MiHC$balance$`n = 100; Scenario 2`, result.OMiAT$balance$`n = 100; Scenario 2`, result.OMiRKAT$balance$`n = 100; Scenario 2`)
allmethods.scenario2.unbalance.100 <- cbind(result.aMiSPU$unbalance$`n = 100; Scenario 2`, result.MiHC$unbalance$`n = 100; Scenario 2`, result.OMiAT$unbalance$`n = 100; Scenario 2`, result.OMiRKAT$unbalance$`n = 100; Scenario 2`)
allmethods.scenario2.nominal.100 <- cbind(result.aMiSPU$nominal$`n = 100; Scenario 2`, result.MiHC$nominal$`n = 100; Scenario 2`, result.OMiAT$nominal$`n = 100; Scenario 2`, result.OMiRKAT$nominal$`n = 100; Scenario 2`)

allmethods.scenario3.balance.100 <- cbind(result.aMiSPU$balance$`n = 100; Scenario 3`, result.MiHC$balance$`n = 100; Scenario 3`, result.OMiAT$balance$`n = 100; Scenario 3`, result.OMiRKAT$balance$`n = 100; Scenario 3`)
allmethods.scenario3.unbalance.100 <- cbind(result.aMiSPU$unbalance$`n = 100; Scenario 3`, result.MiHC$unbalance$`n = 100; Scenario 3`, result.OMiAT$unbalance$`n = 100; Scenario 3`, result.OMiRKAT$unbalance$`n = 100; Scenario 3`)
allmethods.scenario3.nominal.100 <- cbind(result.aMiSPU$nominal$`n = 100; Scenario 3`, result.MiHC$nominal$`n = 100; Scenario 3`, result.OMiAT$nominal$`n = 100; Scenario 3`, result.OMiRKAT$nominal$`n = 100; Scenario 3`)

allmethods.scenario4.balance.100 <- cbind(result.aMiSPU$balance$`n = 100; Scenario 4`, result.MiHC$balance$`n = 100; Scenario 4`, result.OMiAT$balance$`n = 100; Scenario 4`, result.OMiRKAT$balance$`n = 100; Scenario 4`)
allmethods.scenario4.unbalance.100 <- cbind(result.aMiSPU$unbalance$`n = 100; Scenario 4`, result.MiHC$unbalance$`n = 100; Scenario 4`, result.OMiAT$unbalance$`n = 100; Scenario 4`, result.OMiRKAT$unbalance$`n = 100; Scenario 4`)
allmethods.scenario4.nominal.100 <- cbind(result.aMiSPU$nominal$`n = 100; Scenario 4`, result.MiHC$nominal$`n = 100; Scenario 4`, result.OMiAT$nominal$`n = 100; Scenario 4`, result.OMiRKAT$nominal$`n = 100; Scenario 4`)


allmethods.scenario1.balance.200 <- cbind(result.aMiSPU$balance$`n = 200; Scenario 1`, result.MiHC$balance$`n = 200; Scenario 1`, result.OMiAT$balance$`n = 200; Scenario 1`, result.OMiRKAT$balance$`n = 200; Scenario 1`)
allmethods.scenario1.unbalance.200 <- cbind(result.aMiSPU$unbalance$`n = 200; Scenario 1`, result.MiHC$unbalance$`n = 200; Scenario 1`, result.OMiAT$unbalance$`n = 200; Scenario 1`, result.OMiRKAT$unbalance$`n = 200; Scenario 1`)
allmethods.scenario1.nominal.200 <- cbind(result.aMiSPU$nominal$`n = 200; Scenario 1`, result.MiHC$nominal$`n = 200; Scenario 1`, result.OMiAT$nominal$`n = 200; Scenario 1`, result.OMiRKAT$nominal$`n = 200; Scenario 1`)

allmethods.scenario2.balance.200 <- cbind(result.aMiSPU$balance$`n = 200; Scenario 2`, result.MiHC$balance$`n = 200; Scenario 2`, result.OMiAT$balance$`n = 200; Scenario 2`, result.OMiRKAT$balance$`n = 200; Scenario 2`)
allmethods.scenario2.unbalance.200 <- cbind(result.aMiSPU$unbalance$`n = 200; Scenario 2`, result.MiHC$unbalance$`n = 200; Scenario 2`, result.OMiAT$unbalance$`n = 200; Scenario 2`, result.OMiRKAT$unbalance$`n = 200; Scenario 2`)
allmethods.scenario2.nominal.200 <- cbind(result.aMiSPU$nominal$`n = 200; Scenario 2`, result.MiHC$nominal$`n = 200; Scenario 2`, result.OMiAT$nominal$`n = 200; Scenario 2`, result.OMiRKAT$nominal$`n = 200; Scenario 2`)

allmethods.scenario3.balance.200 <- cbind(result.aMiSPU$balance$`n = 200; Scenario 3`, result.MiHC$balance$`n = 200; Scenario 3`, result.OMiAT$balance$`n = 200; Scenario 3`, result.OMiRKAT$balance$`n = 200; Scenario 3`)
allmethods.scenario3.unbalance.200 <- cbind(result.aMiSPU$unbalance$`n = 200; Scenario 3`, result.MiHC$unbalance$`n = 200; Scenario 3`, result.OMiAT$unbalance$`n = 200; Scenario 3`, result.OMiRKAT$unbalance$`n = 200; Scenario 3`)
allmethods.scenario3.nominal.200 <- cbind(result.aMiSPU$nominal$`n = 200; Scenario 3`, result.MiHC$nominal$`n = 200; Scenario 3`, result.OMiAT$nominal$`n = 200; Scenario 3`, result.OMiRKAT$nominal$`n = 200; Scenario 3`)

allmethods.scenario4.balance.200 <- cbind(result.aMiSPU$balance$`n = 200; Scenario 4`, result.MiHC$balance$`n = 200; Scenario 4`, result.OMiAT$balance$`n = 200; Scenario 4`, result.OMiRKAT$balance$`n = 200; Scenario 4`)
allmethods.scenario4.unbalance.200 <- cbind(result.aMiSPU$unbalance$`n = 200; Scenario 4`, result.MiHC$unbalance$`n = 200; Scenario 4`, result.OMiAT$unbalance$`n = 200; Scenario 4`, result.OMiRKAT$unbalance$`n = 200; Scenario 4`)
allmethods.scenario4.nominal.200 <- cbind(result.aMiSPU$nominal$`n = 200; Scenario 4`, result.MiHC$nominal$`n = 200; Scenario 4`, result.OMiAT$nominal$`n = 200; Scenario 4`, result.OMiRKAT$nominal$`n = 200; Scenario 4`)





################################################################################################
########################################### n = 100 ############################################
################################################################################################

mydata.100.1 <- allmethods.scenario1.balance.100
mydata.100.2 <- allmethods.scenario1.unbalance.100
mydata.100.3 <- allmethods.scenario1.nominal.100
mydata.100.4 <- allmethods.scenario2.balance.100
mydata.100.5 <- allmethods.scenario2.unbalance.100
mydata.100.6 <- allmethods.scenario2.nominal.100
mydata.100.7 <- allmethods.scenario3.balance.100
mydata.100.8 <- allmethods.scenario3.unbalance.100
mydata.100.9 <- allmethods.scenario3.nominal.100
mydata.100.10 <- allmethods.scenario4.balance.100
mydata.100.11 <- allmethods.scenario4.unbalance.100
mydata.100.12 <- allmethods.scenario4.nominal.100

mydata.100.1 <- mydata.100.1[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.2 <- mydata.100.2[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.3 <- mydata.100.3[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

mydata.100.4 <- mydata.100.4[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.5 <- mydata.100.5[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.6 <- mydata.100.6[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

mydata.100.7 <- mydata.100.7[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.8 <- mydata.100.8[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.9 <- mydata.100.9[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

mydata.100.10 <- mydata.100.10[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.11 <- mydata.100.11[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.100.12 <- mydata.100.12[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

setEPS()
postscript("microbiome-based_method_analysis_100.eps", width = 9, height = 11)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

################################################################################
################################# Scenario 1 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.100.1))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.1)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.1$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.1$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.1$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.1$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.1$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.1$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.1$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.1$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.1), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.100.2))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.2)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.2$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.2$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.2$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.2$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.2$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.2$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.2$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.2$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.2), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.100.3))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.3)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.3$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.3$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.3$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.3$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.3$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.3$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.3$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.3$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.3), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")





################################################################################
################################# Scenario 2 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.100.4))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.4)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.4$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.4$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.4$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.4$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.4$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.4$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.4$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.4$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.4), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.100.5))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.5)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.5$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.5$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.5$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.5$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.5$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.5$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.5$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.5$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.5), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.100.6))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.6)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.6$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.6$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.6$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.6$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.6$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.6$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.6$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.6$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.6), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")



################################################################################
################################# Scenario 3 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.100.7))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.7)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.7$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.7$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.7$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.7$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.7$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.7$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.7$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.7$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.7), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.100.8))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.8)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.8$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.8$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.8$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.8$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.8$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.8$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.8$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.8$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.8), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.100.9))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.9)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.9$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.9$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.9$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.9$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.9$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.9$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.9$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.9$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.9), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")



################################################################################
################################# Scenario 4 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.100.10))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.10)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.10$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.10$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.10$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.10$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.10$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.10$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.10$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.10$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.10), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.100.11))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.11)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.11$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.11$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.11$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.11$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.11$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.11$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.11$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.11$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.11), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.100.12))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.100.12)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.100.12$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.12$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.12$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.12$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.12$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.12$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.12$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.100.12$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.100.12), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()





################################################################################################
########################################### n = 200 ############################################
################################################################################################

mydata.200.1 <- allmethods.scenario1.balance.200
mydata.200.2 <- allmethods.scenario1.unbalance.200
mydata.200.3 <- allmethods.scenario1.nominal.200
mydata.200.4 <- allmethods.scenario2.balance.200
mydata.200.5 <- allmethods.scenario2.unbalance.200
mydata.200.6 <- allmethods.scenario2.nominal.200
mydata.200.7 <- allmethods.scenario3.balance.200
mydata.200.8 <- allmethods.scenario3.unbalance.200
mydata.200.9 <- allmethods.scenario3.nominal.200
mydata.200.10 <- allmethods.scenario4.balance.200
mydata.200.11 <- allmethods.scenario4.unbalance.200
mydata.200.12 <- allmethods.scenario4.nominal.200

mydata.200.1 <- mydata.200.1[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.2 <- mydata.200.2[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.3 <- mydata.200.3[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

mydata.200.4 <- mydata.200.4[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.5 <- mydata.200.5[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.6 <- mydata.200.6[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

mydata.200.7 <- mydata.200.7[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.8 <- mydata.200.8[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.9 <- mydata.200.9[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

mydata.200.10 <- mydata.200.10[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.11 <- mydata.200.11[c("aMiSPU.P", "aMiSPU.AP", "MiHC.P", "MiHC.AP", "OMiAT.P", "OMiAT.AP", "OMiRKAT.P", "OMiRKAT.AP")]
mydata.200.12 <- mydata.200.12[c("aMiSPU.P", "aMiSPU.BP", "MiHC.P", "MiHC.BP", "OMiAT.P", "OMiAT.BP", "OMiRKAT.P", "OMiRKAT.BP")]

setEPS()
postscript("microbiome-based_method_analysis_200.eps", width = 9, height = 11)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

################################################################################
################################# Scenario 1 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.200.1))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.1)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.1$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.1$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.1$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.1$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.1$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.1$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.1$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.1$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.1), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.200.2))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.2)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.2$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.2$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.2$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.2$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.2$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.2$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.2$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.2$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.2), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.200.3))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.3)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.3$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.3$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.3$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.3$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.3$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.3$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.3$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.3$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.3), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")





################################################################################
################################# Scenario 2 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.200.4))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.4)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.4$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.4$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.4$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.4$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.4$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.4$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.4$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.4$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.4), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.200.5))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.5)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.5$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.5$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.5$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.5$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.5$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.5$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.5$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.5$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.5), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.200.6))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.6)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.6$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.6$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.6$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.6$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.6$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.6$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.6$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.6$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.6), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")



################################################################################
################################# Scenario 3 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.200.7))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.7)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.7$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.7$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.7$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.7$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.7$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.7$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.7$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.7$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.7), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.200.8))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.8)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.8$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.8$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.8$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.8$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.8$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.8$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.8$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.8$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.8), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.200.9))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.9)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.9$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.9$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.9$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.9$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.9$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.9$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.9$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.9$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.9), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")



################################################################################
################################# Scenario 4 ###################################
################################################################################

#################################################################
########################### balance #############################
#################################################################

x <- as.factor(rownames(mydata.200.10))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.10)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.10$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.10$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.10$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.10$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.10$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.10$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.10$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.10$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.10), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################## unbalance ############################
#################################################################

x <- as.factor(rownames(mydata.200.11))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.11)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.11$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.11$aMiSPU.AP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.11$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.11$MiHC.AP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.11$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.11$OMiAT.AP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.11$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.11$OMiRKAT.AP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.11), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")


#################################################################
########################### nominal #############################
#################################################################

x <- as.factor(rownames(mydata.200.12))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
axis(2, c(0, 20, 40, 60, 80, 100), c(0, 20, 40, 60, 80, 100))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata.200.12)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata.200.12$aMiSPU.P, type = "b", col = "orange1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.12$aMiSPU.BP, type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.12$MiHC.P, type = "b", col = "green1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.12$MiHC.BP, type = "b", col = "green4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.12$OMiAT.P, type = "b", col = "blue1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.12$OMiAT.BP, type = "b", col = "blue4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.12$OMiRKAT.P, type = "b", col = "red1", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata.200.12$OMiRKAT.BP, type = "b", col = "red4", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(0.5, 99, legend = colnames(mydata.200.12), col = c("orange1", "orange3", "green1", "green4", "blue1", "blue4", "red1", "red4"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()



