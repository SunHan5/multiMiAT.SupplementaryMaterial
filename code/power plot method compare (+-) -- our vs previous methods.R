rm(list = ls())
library(showtext)

mydata.balance.100 <- readRDS("E:/sun/multiMiRKAT/plot/data/previous.methods.comparison.balance.100.rds")
mydata.ubbalance.100 <- readRDS("E:/sun/multiMiRKAT/plot/data/previous.methods.comparison.unbalance.100.rds")
mydata.nominal.100 <- readRDS("E:/sun/multiMiRKAT/plot/data/previous.methods.comparison.nominal.100.rds")

mydata.balance.100.new <- readRDS("E:/sun/multiMiRKAT(+-)/plot/data/previous.methods.comparison.balance.+-.100.rds")
mydata.ubbalance.100.new <- readRDS("E:/sun/multiMiRKAT(+-)/plot/data/previous.methods.comparison.unbalance.+-.100.rds")
mydata.nominal.100.new <- readRDS("E:/sun/multiMiRKAT(+-)/plot/data/previous.methods.comparison.nominal.+-.100.rds")

mydata4.balance.100 <- mydata.balance.100$Scenario4
mydata4.unbalance.100 <- mydata.ubbalance.100$Scenario4
mydata4.nominal.100 <- mydata.nominal.100$Scenario4

mydata4.balance.100.new <- mydata.balance.100.new$Scenario4
mydata4.unbalance.100.new <- mydata.ubbalance.100.new$Scenario4
mydata4.nominal.100.new <- mydata.nominal.100.new$Scenario4



#################################################################################
###################################  n = 100  ###################################
#################################################################################

setEPS()
postscript("E:/sun/multiMiRKAT(+-)/plot/figs/multiMiAT.previous.methods.comparison.+-.100.eps", width = 10, height = 6)
showtext_begin()

layout(matrix(c(1:6), nrow = 2, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

########################################################
#########################  +++  ########################
########################################################

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

########################################################
#########################  ++-  ########################
########################################################

######################
########  4a  ########
######################

x <- as.factor(rownames(mydata4.balance.100.new))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4a", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.balance.100.new)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.balance.100.new[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.balance.100.new[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata4.balance.100.new), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4b  ########
######################

x <- as.factor(rownames(mydata4.unbalance.100.new))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4b", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.unbalance.100.new)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.unbalance.100.new[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.unbalance.100.new[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata4.unbalance.100.new), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4c  ########
######################

x <- as.factor(rownames(mydata4.nominal.100.new))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4c", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.nominal.100.new)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.nominal.100.new[, "Adonis"], type = "b", col = "yellow", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "ANOSIM"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "aMiSPU"], type = "b", col = "green", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "MiHC"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "OMiAT"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "OMiRKAT"], type = "b", col = "#B385FF", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "SASOM-F"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "SASOM-T"], type = "b", col = "khaki", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "SASOM-D"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "MiRKAT-MCN"], type = "b", col = "skyblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "MiRKAT-MCO"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.nominal.100.new[, "multiMiAT"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 58, legend = colnames(mydata4.nominal.100.new), col = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()



