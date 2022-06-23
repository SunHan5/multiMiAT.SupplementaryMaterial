rm(list = ls())
library(picante) 
library(entropart)
library(ecodist)
library(vegan)
library(phyloseq)
library(ggplot2)
library(ggsignif)
library(ggpubr)
library(ggsci)
library(stringr)
library(patchwork)

otu.tab <- read.csv("otu.tab1.csv", header = T, row.names = 1)
out.Adonis <- read.csv("Adonis1.csv", header = T, row.names = 1)
out.Anosim <- read.csv("Anosim1.csv", header = T, row.names = 1)
tree <- treeio::read.newick("tree1.nwk")
sample.data <- read.csv("sample.data1.csv", header = T, row.names = 1)
table(sample.data$sample_id == rownames(otu.tab))
y <- sample.data$DiseaseState
y[which(y == "H")] <- "Health"
y[which(y == "nonCRC")] <- "Adenoma"
y[which(y == "CRC")] <- "Cancer"
y <- as.factor(y)
x1 <- sample.data$age
x2 <- sample.data$host_race
x2[which(x2 == "white")] <- "White"
x2[which(x2 != "White")] <- "Other"
x2 <- as.factor(x2)



#######################################################################################
##################################### Bray-Curtis #####################################
#######################################################################################
bc <- as.matrix(bcdist(otu.tab))
pcoa <- pcoa(bc, correction = "none", rn = NULL)
PCA1 = pcoa$vectors[, 1]
PCA2 = pcoa$vectors[, 2]
index <- data.frame(rownames(pcoa$vectors), PCA1, PCA2, y, x2)
colnames(index) <-c("sample", "PCA1", "PCA2", "group", "race")
pca1 <- floor(pcoa$values$Relative_eig[1] * 100)
pca2 <- floor(pcoa$values$Relative_eig[2] * 100)

p_bc <- ggplot(index, aes(PCA1, PCA2, colour = factor(group, levels = c("Health", "Adenoma", "Cancer"))))+ 
  geom_vline(xintercept = 0, color = "grey93", linetype = "dashed") +
  geom_hline(yintercept = 0, color = "grey93", linetype = "dashed") +
  geom_point(aes(shape = factor(race, level = c("White", "Other"))), size = 2, alpha = 0.7) +
  scale_shape_manual(values = c(17, 19), guide = "none")+
  scale_fill_manual(values = c("#4AB293", "#FEAE55", "#C00000"), guide = "none") +
  scale_color_manual(values = c("#4AB293", "#FEAE55", "#C00000"), guide = "none") +
  xlab(paste("PCoA1 (", pca1, "%", ")", sep = "")) +
  ylab(paste("PCoA2 (", pca2, "%", ")", sep = "")) +
  stat_ellipse(aes(fill = group), geom = "polygon", level = 0.95, alpha = 0.1) + theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(axis.text = element_text(color = "black", size = 9)) +
  ggtitle("Bray-Curtis") + 
  annotate("text", x = 0.35, y = -0.35, label = paste("Adonis: ", out.Adonis["Bray-Curtis",], sep = ""), fontface = "bold", colour = "black", size = 2) + 
  annotate("text", x = 0.35, y = -0.38, label = "ANOSIM: 0.060", fontface = "bold", colour = "black", size = 2) + 
  theme(plot.title = element_text(hjust = 0.5))



#######################################################################################
###################################### U.Unifrac ######################################
#######################################################################################
unifs <- GUniFrac::GUniFrac(otu.tab, tree, alpha = c(0.5, 1))$unifracs
u.unif <- unifs[, , "d_UW"]
pcoa <- pcoa(u.unif, correction = "none", rn = NULL)
PCA1 = pcoa$vectors[, 1]
PCA2 = pcoa$vectors[, 2]
index <- data.frame(rownames(pcoa$vectors), PCA1, PCA2, y, x2)
colnames(index) <-c("sample", "PCA1", "PCA2", "group", "race")
pca1 <- floor(pcoa$values$Relative_eig[1] * 100)
pca2 <- floor(pcoa$values$Relative_eig[2] * 100)

p_u <- ggplot(index, aes(PCA1, PCA2, colour = factor(group, levels = c("Health", "Adenoma", "Cancer"))))+ 
  geom_vline(xintercept = 0, color = "grey93", linetype = "dashed") +
  geom_hline(yintercept = 0, color = "grey93", linetype = "dashed") +
  geom_point(aes(shape = factor(race, level = c("White", "Other"))), size = 2, alpha = 0.7) +
  scale_shape_manual(values = c(17, 19), guide = "none")+
  scale_fill_manual(values = c("#4AB293", "#FEAE55", "#C00000"), guide = "none") +
  scale_color_manual(values = c("#4AB293", "#FEAE55", "#C00000")) +
  xlab(paste("PCoA1 (", pca1, "%", ")", sep = "")) +
  ylab(paste("PCoA2 (", pca2, "%", ")", sep = "")) +
  stat_ellipse(aes(fill = group), geom = "polygon", level = 0.95, alpha = 0.1) + theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(axis.text = element_text(color = "black", size = 9)) +
  ggtitle("U.Unifrac") + labs(color = "Status") +
  annotate("text", x = 0.27, y = -0.188, label = "Adonis: 0.030", fontface = "bold", colour = "black", size = 2) + 
  annotate("text", x = 0.27, y = -0.205, label = paste("ANOSIM: ", out.Anosim["U.Unifrac",], sep = ""), fontface = "bold", colour = "black", size = 2) + 
  theme(plot.title = element_text(hjust = 0.5))



#######################################################################################
#################################### G.Unifrac 0.5 ####################################
#######################################################################################
g.unif.50 <- unifs[, , paste("d_", 0.5, sep = "")]
pcoa <- pcoa(g.unif.50, correction = "none", rn = NULL)
PCA1 = pcoa$vectors[, 1]
PCA2 = pcoa$vectors[, 2]
index <- data.frame(rownames(pcoa$vectors), PCA1, PCA2, y, x2)
colnames(index) <-c("sample", "PCA1", "PCA2", "group", "race")
pca1 <- floor(pcoa$values$Relative_eig[1] * 100)
pca2 <- floor(pcoa$values$Relative_eig[2] * 100)

p_0.5 <- ggplot(index, aes(PCA1, PCA2, colour = factor(group, levels = c("Health", "Adenoma", "Cancer"))))+ 
  geom_vline(xintercept = 0, color = "grey93", linetype = "dashed") +
  geom_hline(yintercept = 0, color = "grey93", linetype = "dashed") +
  geom_point(aes(shape = factor(race, level = c("White", "Other"))), size = 2, alpha = 0.7) +
  scale_shape_manual(values = c(17, 19), guide = "none")+
  scale_fill_manual(values = c("#4AB293", "#FEAE55", "#C00000"), guide = "none") +
  scale_color_manual(values = c("#4AB293", "#FEAE55", "#C00000"), guide = "none") +
  xlab(paste("PCoA1 (", pca1, "%", ")", sep = "")) +
  ylab(paste("PCoA2 (", pca2, "%", ")", sep = "")) +
  stat_ellipse(aes(fill = group), geom = "polygon", level = 0.95, alpha = 0.1) + theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(axis.text = element_text(color = "black", size = 9)) +
  ggtitle("G.Unifrac (0.5)") + 
  annotate("text", x = 0.278, y = -0.325, label = paste("Adonis: ", out.Adonis["G.Unifrac0.5",], sep = ""), fontface = "bold", colour = "black", size = 2) + 
  annotate("text", x = 0.278, y = -0.355, label = paste("ANOSIM: ", out.Anosim["G.Unifrac0.5",], sep = ""), fontface = "bold", colour = "black", size = 2) + 
  theme(plot.title = element_text(hjust = 0.5))



#######################################################################################
###################################### W.Unifrac ######################################
#######################################################################################
w.unif <- unifs[, , "d_1"]
pcoa <- pcoa(w.unif, correction = "none", rn = NULL)
PCA1 = pcoa$vectors[, 1]
PCA2 = pcoa$vectors[, 2]
index <- data.frame(rownames(pcoa$vectors), PCA1, PCA2, y, x2)
colnames(index) <-c("sample", "PCA1", "PCA2", "group", "race")
pca1 <- floor(pcoa$values$Relative_eig[1] * 100)
pca2 <- floor(pcoa$values$Relative_eig[2] * 100)

p_w <- ggplot(index, aes(PCA1, PCA2, colour = factor(group, levels = c("Health", "Adenoma", "Cancer"))))+ 
  geom_vline(xintercept = 0, color = "grey93", linetype = "dashed") +
  geom_hline(yintercept = 0, color = "grey93", linetype = "dashed") +
  geom_point(aes(shape = factor(race, level = c("White", "Other"))), size = 2, alpha = 0.7) +
  scale_shape_manual(values = c(17, 19))+
  scale_fill_manual(values = c("#4AB293", "#FEAE55", "#C00000"), guide = "none") +
  scale_color_manual(values = c("#4AB293", "#FEAE55", "#C00000"), guide = "none") +
  xlab(paste("PCoA1 (", pca1, "%", ")", sep = "")) +
  ylab(paste("PCoA2 (", pca2, "%", ")", sep = "")) +
  stat_ellipse(aes(fill = group), geom = "polygon", level = 0.95, alpha = 0.1) + theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(axis.text = element_text(color = "black", size = 9)) +
  ggtitle("W.Unifrac") + labs(shape = "Race") +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5, 'cm')) + theme(legend.key.width = unit(0.5, 'cm')) +
  annotate("text", x = 0.58, y = -0.21, label = paste("Adonis: ", out.Adonis["W.Unifrac",], sep = ""), fontface = "bold", colour = "black", size = 2) + 
  annotate("text", x = 0.58, y = -0.23, label = paste("ANOSIM: ", out.Anosim["W.Unifrac",], sep = ""), fontface = "bold", colour = "black", size = 2) + 
  theme(plot.title = element_text(hjust = 0.5))


layout <- '
AB
CD
'

p_bc + p_u + p_0.5 + p_w + plot_layout(design = layout) 

ggsave("real.data1.analysis.pdf", width = 24, height = 20, units = "cm")






