rm(list = ls())
library(ggplot2)
library(ggsignif)
library(ggpubr)
library(ggsci)
library(stringr)
library(patchwork)
library(showtext)


##################################################################################################
#####################################  power analysis  ###########################################
##################################################################################################

result.power <- readRDS("model_analysis_data.rds")
p1 <- ggplot(data = result.power, aes(x = beta, y = power, fill = Methods)) + 
  geom_bar(width = 0.5, stat = "identity", position = position_dodge(width = 0.56), colour="black") +
  theme_bw() +
  scale_shape_manual(values = c(0,1,2,3,4,5,6,7,8,9)) +
  scale_colour_manual(values = c("red", "blue", "green", "yellow", "pink", "black", "yellow", "pink", "black")) +
  labs(title = "Ordinal multinomial model analysis", x = "Effect size", y = "Empirical type I error and Power") +
  theme(axis.text.x = element_text(size = 10, face = 'bold')) +
  theme(axis.text.y = element_text(size = 10, face = 'bold')) +
  theme(axis.title.x = element_text(size = 12, face = 'bold')) +
  theme(axis.title.y = element_text(size = 12, face = 'bold')) +
  theme(legend.title = element_text(size = 12)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 10)) +
  theme(legend.position = c(0.12, 0.85)) +
  theme(plot.title = element_text(size = 14, face = 'bold')) +
  theme(plot.title = element_text(hjust = 0.5)) 
  


##################################################################################################
#######################################  p-value analysis  #######################################
##################################################################################################


result.MinP <- readRDS("model_analysis_box_data_MinP.rds")

p2 <- ggplot(result.MinP, aes(x = beta, y = pvalue, fill = Methods)) +
  geom_boxplot(width = 0.5, outlier.colour = NA) +
  theme_bw() +
  theme(plot.title = element_text(size = 10, face = 'bold')) +
  theme(axis.text.x = element_text(size = 10, face = 'bold')) +
  theme(axis.text.y = element_text(size = 10, face = 'bold')) +
  theme(axis.title.x = element_text(size = 12, face = 'bold')) +
  theme(axis.title.y = element_text(size = 12, face = 'bold')) +
  labs(title = "", x = "Effect size", y = "p value") + 
  theme(legend.title = element_text(size = 12)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 10)) +
  theme(legend.position = c(0.88, 0.84)) 
  
##################################################################################################
############################################## plot  #############################################
##################################################################################################

setEPS()
postscript("ordinal.model.analysis.eps", width = 8, height = 8)
showtext_begin()

layout <- '
A
B
'

p1 + p2 + plot_layout(design = layout) 

showtext_end()
dev.off()







