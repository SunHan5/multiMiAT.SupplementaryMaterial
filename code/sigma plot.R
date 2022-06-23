rm(list = ls())
library(showtext)

mydata1 <- readRDS("data/result.bcl.GK.rds")
mydata2 <- readRDS("data/result.bcl.EK.rds")
mydata3 <- readRDS("data/result.bcl.LaK.rds")
mydata4 <- readRDS("data/result.clm.GK.rds")
mydata5 <- readRDS("data/result.clm.EK.rds")
mydata6 <- readRDS("data/result.clm.LaK.rds")
mydata7 <- readRDS("data/result.crm.GK.rds")
mydata8 <- readRDS("data/result.crm.EK.rds")
mydata9 <- readRDS("data/result.crm.LaK.rds")

setEPS()
postscript("sigma.eps", width = 9, height = 8)
showtext_begin()

layout(matrix(c(1:9), nrow = 3, ncol = 3, byrow = TRUE))
par(mai = c(0.3, 0.3, 0.3, 0.3))
par(oma = c(0, 0, 0, 0))

################################################################################
##################################### bcl ######################################
################################################################################

############################################################
############################ GK ############################
############################################################

x <- as.factor(rownames(mydata1))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "GK (bcl)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata1)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata1), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")



############################################################
############################ EK ############################
############################################################

x <- as.factor(rownames(mydata2))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "EK (bcl)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata2)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata2), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")



############################################################
########################### LaK ############################
############################################################

x <- as.factor(rownames(mydata3))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "LaK (bcl)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata3)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata3), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")





################################################################################
##################################### clm ######################################
################################################################################

############################################################
############################ GK ############################
############################################################

x <- as.factor(rownames(mydata4))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "GK (clm)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata4)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata4), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")



############################################################
############################ EK ############################
############################################################

x <- as.factor(rownames(mydata5))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "EK (clm)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata5)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata5$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata5$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata5$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata5$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata5$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata5$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata5$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata5), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")



############################################################
########################### LaK ############################
############################################################

x <- as.factor(rownames(mydata6))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "LaK (clm)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata6)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata6$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata6$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata6$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata6$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata6$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata6$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata6$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata6), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")





################################################################################
##################################### crm ######################################
################################################################################

############################################################
############################ GK ############################
############################################################

x <- as.factor(rownames(mydata7))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "GK (crm)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata7)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata7$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata7$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata7$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata7$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata7$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata7$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata7$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata7), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")



############################################################
############################ EK ############################
############################################################

x <- as.factor(rownames(mydata8))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "EK (crm)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata8)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata8$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata8$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata8$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata8$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata8$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata8$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata8$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata8), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")



############################################################
########################### LaK ############################
############################################################

x <- as.factor(rownames(mydata9))
plot(x, rep(999, 9), type = "b", ylim = c(0, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n", main = "LaK (crm)", cex.main = 1.6, cex.lab = 1.4, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2), cex.axis = 1.2, font.axis = 2)
axis(2, c(0, 20, 40, 60, 80), c(0, 20, 40, 60, 80), cex.axis = 1.2, font.axis = 2)
abline(h = c(0, 20, 40, 60, 80), v = as.factor(rownames(mydata9)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata9$`0.25`, type = "b", col = "grey10", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata9$`0.5`, type = "b", col = "grey20", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata9$`0.75`, type = "b", col = "grey35", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata9$`1.25`, type = "b", col = "grey65", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata9$`1.5`, type = "b", col = "grey80", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata9$`M`, type = "b", col = "skyblue2", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata9$`1`, type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(7, 43, legend = colnames(mydata9), col = c("grey10", "grey20", "grey35", "red", "grey65", "grey80", "skyblue2"), cex = 1, lty = 1, lwd = 2, pch = 20, bty = "n")

showtext_end()
dev.off()

