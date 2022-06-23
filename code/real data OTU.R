# install.packages("ComplexHeatmap")
# devtools::install_github("jokergoo/ComplexHeatmap")

rm(list = ls())
library(ComplexHeatmap)
library(circlize)
library(ggplot2)
library(ggsignif)
library(ggpubr)
library(ggsci)
library(patchwork)
library(showtext)

OTU.table1 <- read.csv("OTU.table1.csv", header = T, row.names = 1)
OTU.table2 <- read.csv("OTU.table2.csv", header = T, row.names = 1)

data1 <- t(OTU.table1)
data2 <- t(OTU.table2)

col_fun = colorRamp2(seq(0, 5, 1), c("white", "lemonchiffon","gold","red","red2","red4"))
cm = ColorMapping(col_fun = col_fun)

lgd = Legend(col_fun = cm, title = NULL, at = seq(0, 5, 1), legend_gp = gpar(fill = seq(0, 5, 1)), 
             legend_height = unit(4, "cm"), legend_width = unit(2, "mm"), direction = "vertical")


############################################################################
######################  Presence in only one status  #######################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/Presence.in.only.one.status.eps", width = 12, height = 8)
showtext_begin()

Heatmap(data1, col = cm, width = unit(ncol(data1)/1.5, "cm"), height = unit(nrow(data1)/1.5, "cm"),
        row_names_side = "left",
        row_order = c(1:nrow(data1)),
        row_labels = rownames(data1),
        column_order = c(1:ncol(data1)),
        column_labels = c("Health", "Adenoma", "Carcinoma"),
        column_title = "Presence of one status",
        rect_gp = gpar(col = "black", lwd = 2),
        show_heatmap_legend  = T,
        heatmap_legend_param = list(title = ""))

showtext_end()
dev.off()


############################################################################
#######################  Absence in only one status  #######################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/Absence.in.only.one.status.eps", width = 12, height = 8)
showtext_begin()

Heatmap(data2, col = cm, width = unit(ncol(data2)/1.5, "cm"), height = unit(nrow(data2)/1.5, "cm"),
        row_names_side = "left",
        row_order = c(1:nrow(data2)),
        row_labels = rownames(data2),
        column_order = c(1:ncol(data2)),
        column_labels = c("Health", "Adenoma", "Carcinoma"),
        column_title = "Absence of one status",
        rect_gp = gpar(col = "black", lwd = 2),
        show_heatmap_legend  = T,
        heatmap_legend_param = list(title = ""))

showtext_end()
dev.off()

