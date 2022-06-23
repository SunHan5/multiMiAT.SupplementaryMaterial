rm(list = ls())
library(showtext)

mydata1.balance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario1.balance.100.rds")
mydata2.balance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario2.balance.100.rds")
mydata3.balance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario3.balance.100.rds")
mydata4.balance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario4.balance.100.rds")

mydata1.unbalance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario1.unbalance.100.rds")
mydata2.unbalance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario2.unbalance.100.rds")
mydata3.unbalance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario3.unbalance.100.rds")
mydata4.unbalance.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario4.unbalance.100.rds")

mydata1.nominal.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario1.nominal.100.rds")
mydata2.nominal.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario2.nominal.100.rds")
mydata3.nominal.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario3.nominal.100.rds")
mydata4.nominal.100 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario4.nominal.100.rds")

mydata1.balance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario1.balance.200.rds")
mydata2.balance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario2.balance.200.rds")
mydata3.balance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario3.balance.200.rds")
mydata4.balance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario4.balance.200.rds")

mydata1.unbalance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario1.unbalance.200.rds")
mydata2.unbalance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario2.unbalance.200.rds")
mydata3.unbalance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario3.unbalance.200.rds")
mydata4.unbalance.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario4.unbalance.200.rds")

mydata1.nominal.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario1.nominal.200.rds")
mydata2.nominal.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario2.nominal.200.rds")
mydata3.nominal.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario3.nominal.200.rds")
mydata4.nominal.200 <- readRDS("OMiRKAT.multiMiRKAT.comparison.scenario4.nominal.200.rds")

#################################################################
#############################  bcl  #############################
#################################################################

mydata1.balance.100.bcl <- mydata1.balance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata2.balance.100.bcl <- mydata2.balance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata3.balance.100.bcl <- mydata3.balance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata4.balance.100.bcl <- mydata4.balance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]

mydata1.unbalance.100.bcl <- mydata1.unbalance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata2.unbalance.100.bcl <- mydata2.unbalance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata3.unbalance.100.bcl <- mydata3.unbalance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata4.unbalance.100.bcl <- mydata4.unbalance.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]

mydata1.nominal.100.bcl <- mydata1.nominal.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata2.nominal.100.bcl <- mydata2.nominal.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata3.nominal.100.bcl <- mydata3.nominal.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata4.nominal.100.bcl <- mydata4.nominal.100[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]

mydata1.balance.200.bcl <- mydata1.balance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata2.balance.200.bcl <- mydata2.balance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata3.balance.200.bcl <- mydata3.balance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata4.balance.200.bcl <- mydata4.balance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]

mydata1.unbalance.200.bcl <- mydata1.unbalance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata2.unbalance.200.bcl <- mydata2.unbalance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata3.unbalance.200.bcl <- mydata3.unbalance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata4.unbalance.200.bcl <- mydata4.unbalance.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]

mydata1.nominal.200.bcl <- mydata1.nominal.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata2.nominal.200.bcl <- mydata2.nominal.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata3.nominal.200.bcl <- mydata3.nominal.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]
mydata4.nominal.200.bcl <- mydata4.nominal.200[, c("LK.bcl.HMP", "GK.bcl.HMP", "LaK.bcl.HMP", "LK.bcl.MinP", "GK.bcl.MinP", "LaK.bcl.MinP", "multiMiRKA-N(HMP)", "multiMiRKA-N(MinP)")]



#################################################################
#############################  clm  #############################
#################################################################

mydata1.balance.100.clm <- mydata1.balance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata2.balance.100.clm <- mydata2.balance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata3.balance.100.clm <- mydata3.balance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata4.balance.100.clm <- mydata4.balance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]

mydata1.unbalance.100.clm <- mydata1.unbalance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata2.unbalance.100.clm <- mydata2.unbalance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata3.unbalance.100.clm <- mydata3.unbalance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata4.unbalance.100.clm <- mydata4.unbalance.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]

mydata1.nominal.100.clm <- mydata1.nominal.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata2.nominal.100.clm <- mydata2.nominal.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata3.nominal.100.clm <- mydata3.nominal.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata4.nominal.100.clm <- mydata4.nominal.100[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]

mydata1.balance.200.clm <- mydata1.balance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata2.balance.200.clm <- mydata2.balance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata3.balance.200.clm <- mydata3.balance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata4.balance.200.clm <- mydata4.balance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]

mydata1.unbalance.200.clm <- mydata1.unbalance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata2.unbalance.200.clm <- mydata2.unbalance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata3.unbalance.200.clm <- mydata3.unbalance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata4.unbalance.200.clm <- mydata4.unbalance.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]

mydata1.nominal.200.clm <- mydata1.nominal.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata2.nominal.200.clm <- mydata2.nominal.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata3.nominal.200.clm <- mydata3.nominal.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]
mydata4.nominal.200.clm <- mydata4.nominal.200[, c("LK.clm.HMP", "GK.clm.HMP", "LaK.clm.HMP", "LK.clm.MinP", "GK.clm.MinP", "LaK.clm.MinP", "multiMiRKA-O(HMP)", "multiMiRKA-O(MinP)")]





#################################################################################
###################################  n = 100  ###################################
#################################################################################

#################################################################
#############################  bcl  #############################
#################################################################

setEPS()
postscript("OMiRKAT.multiMiRKAT.comparison.bcl.100.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(28, 85), xlab = "", ylab = "", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(30, 40, 50, 60, 70, 80), v = as.factor(rownames(mydata1.balance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 47, legend = colnames(mydata1.balance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(20, 80), xlab = "", ylab = "", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 30, 40, 50, 60, 70, 80), v = as.factor(rownames(mydata1.unbalance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 40, legend = colnames(mydata1.unbalance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(10, 80), xlab = "", ylab = "", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60, 70, 80), v = as.factor(rownames(mydata1.nominal.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 32, legend = colnames(mydata1.nominal.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(5, 60), xlab = "", ylab = "", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60), v = as.factor(rownames(mydata2.balance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 23.4, legend = colnames(mydata2.balance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(5, 27), xlab = "", ylab = "", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 10, 15, 20, 25), v = as.factor(rownames(mydata2.unbalance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 12.3, legend = colnames(mydata2.unbalance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(5, 55), xlab = "", ylab = "", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50), v = as.factor(rownames(mydata2.nominal.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 21.6, legend = colnames(mydata2.nominal.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(5, 40), xlab = "", ylab = "", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 10, 15, 20, 25, 30, 35, 40), v = as.factor(rownames(mydata3.balance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 16.7, legend = colnames(mydata3.balance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(4, 25), xlab = "", ylab = "", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 10, 15, 20, 25), v = as.factor(rownames(mydata3.unbalance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 11, legend = colnames(mydata3.unbalance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(4, 20), xlab = "", ylab = "", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 7.5, 10, 12.5, 15, 17.5, 20), v = as.factor(rownames(mydata3.nominal.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 9.3, legend = colnames(mydata3.nominal.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(30, 100), xlab = "", ylab = "", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(30, 40, 50, 60, 70, 80, 90, 100), v = as.factor(rownames(mydata4.balance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 53, legend = colnames(mydata4.balance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(20, 100), xlab = "", ylab = "", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.unbalance.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 46, legend = colnames(mydata4.unbalance.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.100.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(10, 100), xlab = "", ylab = "", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.100.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.100.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 39.5, legend = colnames(mydata4.nominal.100.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()



#################################################################
#############################  clm  #############################
#################################################################

setEPS()
postscript("OMiRKAT.multiMiRKAT.comparison.clm.100.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(30, 85), xlab = "", ylab = "", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(30, 40, 50, 60, 70, 80), v = as.factor(rownames(mydata1.balance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 48, legend = colnames(mydata1.balance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(20, 80), xlab = "", ylab = "", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 30, 40, 50, 60, 70, 80), v = as.factor(rownames(mydata1.unbalance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 40, legend = colnames(mydata1.unbalance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(10, 80), xlab = "", ylab = "", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60, 70, 80), v = as.factor(rownames(mydata1.nominal.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 33, legend = colnames(mydata1.nominal.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(5, 60), xlab = "", ylab = "", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60), v = as.factor(rownames(mydata2.balance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 23, legend = colnames(mydata2.balance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(5, 27), xlab = "", ylab = "", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 10, 15, 20, 25), v = as.factor(rownames(mydata2.unbalance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 12.3, legend = colnames(mydata2.unbalance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(5, 55), xlab = "", ylab = "", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50), v = as.factor(rownames(mydata2.nominal.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 21.6, legend = colnames(mydata2.nominal.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(5, 40), xlab = "", ylab = "", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 10, 15, 20, 25, 30, 35, 40), v = as.factor(rownames(mydata3.balance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 16.5, legend = colnames(mydata3.balance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(4, 25), xlab = "", ylab = "", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 10, 15, 20, 25), v = as.factor(rownames(mydata3.unbalance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 10.9, legend = colnames(mydata3.unbalance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(4, 20), xlab = "", ylab = "", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(5, 7.5, 10, 12.5, 15, 17.5, 20), v = as.factor(rownames(mydata3.nominal.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 9.2, legend = colnames(mydata3.nominal.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(30, 100), xlab = "", ylab = "", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(30, 40, 50, 60, 70, 80, 90, 100), v = as.factor(rownames(mydata4.balance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 53, legend = colnames(mydata4.balance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(20, 100), xlab = "", ylab = "", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.unbalance.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 46, legend = colnames(mydata4.unbalance.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.100.clm))
plot(x, rep(999, 8), type = "b", ylim = c(8, 100), xlab = "", ylab = "", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.100.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.100.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 38, legend = colnames(mydata4.nominal.100.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()





#################################################################################
###################################  n = 200  ###################################
#################################################################################

#################################################################
#############################  bcl  #############################
#################################################################

setEPS()
postscript("OMiRKAT.multiMiRKAT.comparison.bcl.200.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(65, 100), xlab = "", ylab = "", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(65, 70, 75, 80, 85, 90, 95, 100), v = as.factor(rownames(mydata1.balance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 76.5, legend = colnames(mydata1.balance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(50, 100), xlab = "", ylab = "", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(50, 60, 70, 80, 90, 100), v = as.factor(rownames(mydata1.unbalance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 66.5, legend = colnames(mydata1.unbalance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(25, 100), xlab = "", ylab = "", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(40, 60, 80, 100), v = as.factor(rownames(mydata1.nominal.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 49.5, legend = colnames(mydata1.nominal.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(10, 100), xlab = "", ylab = "", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.balance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 39.5, legend = colnames(mydata2.balance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(8, 70), xlab = "", ylab = "", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60, 70), v = as.factor(rownames(mydata2.unbalance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 28.3, legend = colnames(mydata2.unbalance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.nominal.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 36, legend = colnames(mydata2.nominal.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(6, 80), xlab = "", ylab = "", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80), v = as.factor(rownames(mydata3.balance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 30.5, legend = colnames(mydata3.balance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(5, 60), xlab = "", ylab = "", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60), v = as.factor(rownames(mydata3.unbalance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 23, legend = colnames(mydata3.unbalance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(0, 40), xlab = "", ylab = "", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(0, 10, 20, 30, 40), v = as.factor(rownames(mydata3.nominal.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 13, legend = colnames(mydata3.nominal.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(80, 100), xlab = "", ylab = "", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(80, 85, 90, 95, 100), v = as.factor(rownames(mydata4.balance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 86.5, legend = colnames(mydata4.balance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(60, 100), xlab = "", ylab = "", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(60, 70, 80, 90, 100), v = as.factor(rownames(mydata4.unbalance.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 73, legend = colnames(mydata4.unbalance.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.200.bcl))
plot(x, rep(999, 8), type = "b", ylim = c(20, 100), xlab = "", ylab = "", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.200.bcl)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.200.bcl[, "LK.bcl.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.bcl[, "GK.bcl.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.bcl[, "LaK.bcl.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.bcl[, "LK.bcl.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.bcl[, "GK.bcl.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.bcl[, "LaK.bcl.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.bcl[, "multiMiRKA-N(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.bcl[, "multiMiRKA-N(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 46, legend = colnames(mydata4.nominal.200.bcl), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()



#################################################################
#############################  clm  #############################
#################################################################

setEPS()
postscript("OMiRKAT.multiMiRKAT.comparison.clm.200.eps", width = 10, height = 12)
showtext_begin()

layout(matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

######################
########  1a  ########
######################

x <- as.factor(rownames(mydata1.balance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(65, 100), xlab = "", ylab = "", main = "Scenario 1a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(65, 70, 75, 80, 85, 90, 95, 100), v = as.factor(rownames(mydata1.balance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.balance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.balance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 76.5, legend = colnames(mydata1.balance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1b  ########
######################

x <- as.factor(rownames(mydata1.unbalance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(50, 100), xlab = "", ylab = "", main = "Scenario 1b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(50, 60, 70, 80, 90, 100), v = as.factor(rownames(mydata1.unbalance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.unbalance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.unbalance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 66.5, legend = colnames(mydata1.unbalance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  1c  ########
######################

x <- as.factor(rownames(mydata1.nominal.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(25, 100), xlab = "", ylab = "", main = "Scenario 1c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(40, 60, 80, 100), v = as.factor(rownames(mydata1.nominal.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.nominal.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.nominal.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 49.5, legend = colnames(mydata1.nominal.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2a  ########
######################

x <- as.factor(rownames(mydata2.balance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(10, 100), xlab = "", ylab = "", main = "Scenario 2a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.balance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.balance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.balance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 39.5, legend = colnames(mydata2.balance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2b  ########
######################

x <- as.factor(rownames(mydata2.unbalance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(8, 72), xlab = "", ylab = "", main = "Scenario 2b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60, 70), v = as.factor(rownames(mydata2.unbalance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.unbalance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.unbalance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 29, legend = colnames(mydata2.unbalance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2c  ########
######################

x <- as.factor(rownames(mydata2.nominal.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(5, 100), xlab = "", ylab = "", main = "Scenario 2c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.nominal.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.nominal.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.nominal.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 36.1, legend = colnames(mydata2.nominal.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3a  ########
######################

x <- as.factor(rownames(mydata3.balance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(6, 85), xlab = "", ylab = "", main = "Scenario 3a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80), v = as.factor(rownames(mydata3.balance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.balance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.balance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 32, legend = colnames(mydata3.balance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3b  ########
######################

x <- as.factor(rownames(mydata3.unbalance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(5, 65), xlab = "", ylab = "", main = "Scenario 3b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(10, 20, 30, 40, 50, 60), v = as.factor(rownames(mydata3.unbalance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.unbalance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.unbalance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 24.5, legend = colnames(mydata3.unbalance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3c  ########
######################

x <- as.factor(rownames(mydata3.nominal.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(0, 40), xlab = "", ylab = "", main = "Scenario 3c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(0, 10, 20, 30, 40), v = as.factor(rownames(mydata3.nominal.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.nominal.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.nominal.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 13, legend = colnames(mydata3.nominal.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(80, 100), xlab = "", ylab = "", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(80, 85, 90, 95, 100), v = as.factor(rownames(mydata4.balance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 86.5, legend = colnames(mydata4.balance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(60, 100), xlab = "", ylab = "", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(60, 70, 80, 90, 100), v = as.factor(rownames(mydata4.unbalance.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 73, legend = colnames(mydata4.unbalance.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.200.clm))
plot(x, rep(999, 8), type = "b", ylim = c(20, 100), xlab = "", ylab = "", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.1, cex.lab = 1.4, font.axis = 2, font.lab = 2)
abline(h = c(20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.200.clm)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.200.clm[, "LK.clm.HMP"], type = "b", col = "grey50", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.clm[, "GK.clm.HMP"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.clm[, "LaK.clm.HMP"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.clm[, "LK.clm.MinP"], type = "b", col = "black", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.clm[, "GK.clm.MinP"], type = "b", col = "orange3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.clm[, "LaK.clm.MinP"], type = "b", col = "green3", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.clm[, "multiMiRKA-O(HMP)"], type = "b", col = "blue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.200.clm[, "multiMiRKA-O(MinP)"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(6, 46, legend = colnames(mydata4.nominal.200.clm), col = c("grey50", "orange", "green", "black", "orange3", "green3", "blue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()


