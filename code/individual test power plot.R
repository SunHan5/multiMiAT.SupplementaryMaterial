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
setwd("E:/sun/multiMiRKAT/plot/data")

mydata1.bcl.LK.100 <- readRDS("individualtest.bcl.LK.scenario1.n=100.rds")
mydata2.bcl.LK.100 <- readRDS("individualtest.bcl.LK.scenario2.n=100.rds")
mydata3.bcl.LK.100 <- readRDS("individualtest.bcl.LK.scenario3.n=100.rds")
mydata4.bcl.LK.100 <- readRDS("individualtest.bcl.LK.scenario4.n=100.rds")

mydata1.bcl.GK.100 <- readRDS("individualtest.bcl.GK.scenario1.n=100.rds")
mydata2.bcl.GK.100 <- readRDS("individualtest.bcl.GK.scenario2.n=100.rds")
mydata3.bcl.GK.100 <- readRDS("individualtest.bcl.GK.scenario3.n=100.rds")
mydata4.bcl.GK.100 <- readRDS("individualtest.bcl.GK.scenario4.n=100.rds")

mydata1.bcl.LaK.100 <- readRDS("individualtest.bcl.LaK.scenario1.n=100.rds")
mydata2.bcl.LaK.100 <- readRDS("individualtest.bcl.LaK.scenario2.n=100.rds")
mydata3.bcl.LaK.100 <- readRDS("individualtest.bcl.LaK.scenario3.n=100.rds")
mydata4.bcl.LaK.100 <- readRDS("individualtest.bcl.LaK.scenario4.n=100.rds")

mydata1.clm.LK.100 <- readRDS("individualtest.clm.LK.scenario1.n=100.rds")
mydata2.clm.LK.100 <- readRDS("individualtest.clm.LK.scenario2.n=100.rds")
mydata3.clm.LK.100 <- readRDS("individualtest.clm.LK.scenario3.n=100.rds")
mydata4.clm.LK.100 <- readRDS("individualtest.clm.LK.scenario4.n=100.rds")

mydata1.clm.GK.100 <- readRDS("individualtest.clm.GK.scenario1.n=100.rds")
mydata2.clm.GK.100 <- readRDS("individualtest.clm.GK.scenario2.n=100.rds")
mydata3.clm.GK.100 <- readRDS("individualtest.clm.GK.scenario3.n=100.rds")
mydata4.clm.GK.100 <- readRDS("individualtest.clm.GK.scenario4.n=100.rds")

mydata1.clm.LaK.100 <- readRDS("individualtest.clm.LaK.scenario1.n=100.rds")
mydata2.clm.LaK.100 <- readRDS("individualtest.clm.LaK.scenario2.n=100.rds")
mydata3.clm.LaK.100 <- readRDS("individualtest.clm.LaK.scenario3.n=100.rds")
mydata4.clm.LaK.100 <- readRDS("individualtest.clm.LaK.scenario4.n=100.rds")

mydata1.bcl.LK.200 <- readRDS("individualtest.bcl.LK.scenario1.n=200.rds")
mydata2.bcl.LK.200 <- readRDS("individualtest.bcl.LK.scenario2.n=200.rds")
mydata3.bcl.LK.200 <- readRDS("individualtest.bcl.LK.scenario3.n=200.rds")
mydata4.bcl.LK.200 <- readRDS("individualtest.bcl.LK.scenario4.n=200.rds")

mydata1.bcl.GK.200 <- readRDS("individualtest.bcl.GK.scenario1.n=200.rds")
mydata2.bcl.GK.200 <- readRDS("individualtest.bcl.GK.scenario2.n=200.rds")
mydata3.bcl.GK.200 <- readRDS("individualtest.bcl.GK.scenario3.n=200.rds")
mydata4.bcl.GK.200 <- readRDS("individualtest.bcl.GK.scenario4.n=200.rds")

mydata1.bcl.LaK.200 <- readRDS("individualtest.bcl.LaK.scenario1.n=200.rds")
mydata2.bcl.LaK.200 <- readRDS("individualtest.bcl.LaK.scenario2.n=200.rds")
mydata3.bcl.LaK.200 <- readRDS("individualtest.bcl.LaK.scenario3.n=200.rds")
mydata4.bcl.LaK.200 <- readRDS("individualtest.bcl.LaK.scenario4.n=200.rds")

mydata1.clm.LK.200 <- readRDS("individualtest.clm.LK.scenario1.n=200.rds")
mydata2.clm.LK.200 <- readRDS("individualtest.clm.LK.scenario2.n=200.rds")
mydata3.clm.LK.200 <- readRDS("individualtest.clm.LK.scenario3.n=200.rds")
mydata4.clm.LK.200 <- readRDS("individualtest.clm.LK.scenario4.n=200.rds")

mydata1.clm.GK.200 <- readRDS("individualtest.clm.GK.scenario1.n=200.rds")
mydata2.clm.GK.200 <- readRDS("individualtest.clm.GK.scenario2.n=200.rds")
mydata3.clm.GK.200 <- readRDS("individualtest.clm.GK.scenario3.n=200.rds")
mydata4.clm.GK.200 <- readRDS("individualtest.clm.GK.scenario4.n=200.rds")

mydata1.clm.LaK.200 <- readRDS("individualtest.clm.LaK.scenario1.n=200.rds")
mydata2.clm.LaK.200 <- readRDS("individualtest.clm.LaK.scenario2.n=200.rds")
mydata3.clm.LaK.200 <- readRDS("individualtest.clm.LaK.scenario3.n=200.rds")
mydata4.clm.LaK.200 <- readRDS("individualtest.clm.LaK.scenario4.n=200.rds")



############################ Adding white space ############################

zero.number <- rep(0, 9)
mydata1.bcl.LK.100.new <- rbind(mydata1.bcl.LK.100[1:9,], zero.number, mydata1.bcl.LK.100[10:18,], zero.number, mydata1.bcl.LK.100[19:27,])
mydata2.bcl.LK.100.new <- rbind(mydata2.bcl.LK.100[1:9,], zero.number, mydata2.bcl.LK.100[10:18,], zero.number, mydata2.bcl.LK.100[19:27,])
mydata3.bcl.LK.100.new <- rbind(mydata3.bcl.LK.100[1:9,], zero.number, mydata3.bcl.LK.100[10:18,], zero.number, mydata3.bcl.LK.100[19:27,])
mydata4.bcl.LK.100.new <- rbind(mydata4.bcl.LK.100[1:9,], zero.number, mydata4.bcl.LK.100[10:18,], zero.number, mydata4.bcl.LK.100[19:27,])

mydata1.bcl.GK.100.new <- rbind(mydata1.bcl.GK.100[1:9,], zero.number, mydata1.bcl.GK.100[10:18,], zero.number, mydata1.bcl.GK.100[19:27,])
mydata2.bcl.GK.100.new <- rbind(mydata2.bcl.GK.100[1:9,], zero.number, mydata2.bcl.GK.100[10:18,], zero.number, mydata2.bcl.GK.100[19:27,])
mydata3.bcl.GK.100.new <- rbind(mydata3.bcl.GK.100[1:9,], zero.number, mydata3.bcl.GK.100[10:18,], zero.number, mydata3.bcl.GK.100[19:27,])
mydata4.bcl.GK.100.new <- rbind(mydata4.bcl.GK.100[1:9,], zero.number, mydata4.bcl.GK.100[10:18,], zero.number, mydata4.bcl.GK.100[19:27,])

mydata1.bcl.LaK.100.new <- rbind(mydata1.bcl.LaK.100[1:9,], zero.number, mydata1.bcl.LaK.100[10:18,], zero.number, mydata1.bcl.LaK.100[19:27,])
mydata2.bcl.LaK.100.new <- rbind(mydata2.bcl.LaK.100[1:9,], zero.number, mydata2.bcl.LaK.100[10:18,], zero.number, mydata2.bcl.LaK.100[19:27,])
mydata3.bcl.LaK.100.new <- rbind(mydata3.bcl.LaK.100[1:9,], zero.number, mydata3.bcl.LaK.100[10:18,], zero.number, mydata3.bcl.LaK.100[19:27,])
mydata4.bcl.LaK.100.new <- rbind(mydata4.bcl.LaK.100[1:9,], zero.number, mydata4.bcl.LaK.100[10:18,], zero.number, mydata4.bcl.LaK.100[19:27,])

mydata1.clm.LK.100.new <- rbind(mydata1.clm.LK.100[1:9,], zero.number, mydata1.clm.LK.100[10:18,], zero.number, mydata1.clm.LK.100[19:27,])
mydata2.clm.LK.100.new <- rbind(mydata2.clm.LK.100[1:9,], zero.number, mydata2.clm.LK.100[10:18,], zero.number, mydata2.clm.LK.100[19:27,])
mydata3.clm.LK.100.new <- rbind(mydata3.clm.LK.100[1:9,], zero.number, mydata3.clm.LK.100[10:18,], zero.number, mydata3.clm.LK.100[19:27,])
mydata4.clm.LK.100.new <- rbind(mydata4.clm.LK.100[1:9,], zero.number, mydata4.clm.LK.100[10:18,], zero.number, mydata4.clm.LK.100[19:27,])

mydata1.clm.GK.100.new <- rbind(mydata1.clm.GK.100[1:9,], zero.number, mydata1.clm.GK.100[10:18,], zero.number, mydata1.clm.GK.100[19:27,])
mydata2.clm.GK.100.new <- rbind(mydata2.clm.GK.100[1:9,], zero.number, mydata2.clm.GK.100[10:18,], zero.number, mydata2.clm.GK.100[19:27,])
mydata3.clm.GK.100.new <- rbind(mydata3.clm.GK.100[1:9,], zero.number, mydata3.clm.GK.100[10:18,], zero.number, mydata3.clm.GK.100[19:27,])
mydata4.clm.GK.100.new <- rbind(mydata4.clm.GK.100[1:9,], zero.number, mydata4.clm.GK.100[10:18,], zero.number, mydata4.clm.GK.100[19:27,])

mydata1.clm.LaK.100.new <- rbind(mydata1.clm.LaK.100[1:9,], zero.number, mydata1.clm.LaK.100[10:18,], zero.number, mydata1.clm.LaK.100[19:27,])
mydata2.clm.LaK.100.new <- rbind(mydata2.clm.LaK.100[1:9,], zero.number, mydata2.clm.LaK.100[10:18,], zero.number, mydata2.clm.LaK.100[19:27,])
mydata3.clm.LaK.100.new <- rbind(mydata3.clm.LaK.100[1:9,], zero.number, mydata3.clm.LaK.100[10:18,], zero.number, mydata3.clm.LaK.100[19:27,])
mydata4.clm.LaK.100.new <- rbind(mydata4.clm.LaK.100[1:9,], zero.number, mydata4.clm.LaK.100[10:18,], zero.number, mydata4.clm.LaK.100[19:27,])

mydata1.bcl.LK.200.new <- rbind(mydata1.bcl.LK.200[1:9,], zero.number, mydata1.bcl.LK.200[10:18,], zero.number, mydata1.bcl.LK.200[19:27,])
mydata2.bcl.LK.200.new <- rbind(mydata2.bcl.LK.200[1:9,], zero.number, mydata2.bcl.LK.200[10:18,], zero.number, mydata2.bcl.LK.200[19:27,])
mydata3.bcl.LK.200.new <- rbind(mydata3.bcl.LK.200[1:9,], zero.number, mydata3.bcl.LK.200[10:18,], zero.number, mydata3.bcl.LK.200[19:27,])
mydata4.bcl.LK.200.new <- rbind(mydata4.bcl.LK.200[1:9,], zero.number, mydata4.bcl.LK.200[10:18,], zero.number, mydata4.bcl.LK.200[19:27,])

mydata1.bcl.GK.200.new <- rbind(mydata1.bcl.GK.200[1:9,], zero.number, mydata1.bcl.GK.200[10:18,], zero.number, mydata1.bcl.GK.200[19:27,])
mydata2.bcl.GK.200.new <- rbind(mydata2.bcl.GK.200[1:9,], zero.number, mydata2.bcl.GK.200[10:18,], zero.number, mydata2.bcl.GK.200[19:27,])
mydata3.bcl.GK.200.new <- rbind(mydata3.bcl.GK.200[1:9,], zero.number, mydata3.bcl.GK.200[10:18,], zero.number, mydata3.bcl.GK.200[19:27,])
mydata4.bcl.GK.200.new <- rbind(mydata4.bcl.GK.200[1:9,], zero.number, mydata4.bcl.GK.200[10:18,], zero.number, mydata4.bcl.GK.200[19:27,])

mydata1.bcl.LaK.200.new <- rbind(mydata1.bcl.LaK.200[1:9,], zero.number, mydata1.bcl.LaK.200[10:18,], zero.number, mydata1.bcl.LaK.200[19:27,])
mydata2.bcl.LaK.200.new <- rbind(mydata2.bcl.LaK.200[1:9,], zero.number, mydata2.bcl.LaK.200[10:18,], zero.number, mydata2.bcl.LaK.200[19:27,])
mydata3.bcl.LaK.200.new <- rbind(mydata3.bcl.LaK.200[1:9,], zero.number, mydata3.bcl.LaK.200[10:18,], zero.number, mydata3.bcl.LaK.200[19:27,])
mydata4.bcl.LaK.200.new <- rbind(mydata4.bcl.LaK.200[1:9,], zero.number, mydata4.bcl.LaK.200[10:18,], zero.number, mydata4.bcl.LaK.200[19:27,])

mydata1.clm.LK.200.new <- rbind(mydata1.clm.LK.200[1:9,], zero.number, mydata1.clm.LK.200[10:18,], zero.number, mydata1.clm.LK.200[19:27,])
mydata2.clm.LK.200.new <- rbind(mydata2.clm.LK.200[1:9,], zero.number, mydata2.clm.LK.200[10:18,], zero.number, mydata2.clm.LK.200[19:27,])
mydata3.clm.LK.200.new <- rbind(mydata3.clm.LK.200[1:9,], zero.number, mydata3.clm.LK.200[10:18,], zero.number, mydata3.clm.LK.200[19:27,])
mydata4.clm.LK.200.new <- rbind(mydata4.clm.LK.200[1:9,], zero.number, mydata4.clm.LK.200[10:18,], zero.number, mydata4.clm.LK.200[19:27,])

mydata1.clm.GK.200.new <- rbind(mydata1.clm.GK.200[1:9,], zero.number, mydata1.clm.GK.200[10:18,], zero.number, mydata1.clm.GK.200[19:27,])
mydata2.clm.GK.200.new <- rbind(mydata2.clm.GK.200[1:9,], zero.number, mydata2.clm.GK.200[10:18,], zero.number, mydata2.clm.GK.200[19:27,])
mydata3.clm.GK.200.new <- rbind(mydata3.clm.GK.200[1:9,], zero.number, mydata3.clm.GK.200[10:18,], zero.number, mydata3.clm.GK.200[19:27,])
mydata4.clm.GK.200.new <- rbind(mydata4.clm.GK.200[1:9,], zero.number, mydata4.clm.GK.200[10:18,], zero.number, mydata4.clm.GK.200[19:27,])

mydata1.clm.LaK.200.new <- rbind(mydata1.clm.LaK.200[1:9,], zero.number, mydata1.clm.LaK.200[10:18,], zero.number, mydata1.clm.LaK.200[19:27,])
mydata2.clm.LaK.200.new <- rbind(mydata2.clm.LaK.200[1:9,], zero.number, mydata2.clm.LaK.200[10:18,], zero.number, mydata2.clm.LaK.200[19:27,])
mydata3.clm.LaK.200.new <- rbind(mydata3.clm.LaK.200[1:9,], zero.number, mydata3.clm.LaK.200[10:18,], zero.number, mydata3.clm.LaK.200[19:27,])
mydata4.clm.LaK.200.new <- rbind(mydata4.clm.LaK.200[1:9,], zero.number, mydata4.clm.LaK.200[10:18,], zero.number, mydata4.clm.LaK.200[19:27,])

rownames(mydata1.bcl.LK.100.new)[c(10,20)] <- rownames(mydata2.bcl.LK.100.new)[c(10,20)] <- rownames(mydata3.bcl.LK.100.new)[c(10,20)] <- rownames(mydata4.bcl.LK.100.new)[c(10,20)] <- ""
rownames(mydata1.bcl.GK.100.new)[c(10,20)] <- rownames(mydata2.bcl.GK.100.new)[c(10,20)] <- rownames(mydata3.bcl.GK.100.new)[c(10,20)] <- rownames(mydata4.bcl.GK.100.new)[c(10,20)] <- ""
rownames(mydata1.bcl.LaK.100.new)[c(10,20)] <- rownames(mydata2.bcl.LaK.100.new)[c(10,20)] <- rownames(mydata3.bcl.LaK.100.new)[c(10,20)] <- rownames(mydata4.bcl.LaK.100.new)[c(10,20)] <- ""
rownames(mydata1.clm.LK.100.new)[c(10,20)] <- rownames(mydata2.clm.LK.100.new)[c(10,20)] <- rownames(mydata3.clm.LK.100.new)[c(10,20)] <- rownames(mydata4.clm.LK.100.new)[c(10,20)] <- ""
rownames(mydata1.clm.GK.100.new)[c(10,20)] <- rownames(mydata2.clm.GK.100.new)[c(10,20)] <- rownames(mydata3.clm.GK.100.new)[c(10,20)] <- rownames(mydata4.clm.GK.100.new)[c(10,20)] <- ""
rownames(mydata1.clm.LaK.100.new)[c(10,20)] <- rownames(mydata2.clm.LaK.100.new)[c(10,20)] <- rownames(mydata3.clm.LaK.100.new)[c(10,20)] <- rownames(mydata4.clm.LaK.100.new)[c(10,20)] <- ""
rownames(mydata1.bcl.LK.200.new)[c(10,20)] <- rownames(mydata2.bcl.LK.200.new)[c(10,20)] <- rownames(mydata3.bcl.LK.200.new)[c(10,20)] <- rownames(mydata4.bcl.LK.200.new)[c(10,20)] <- ""
rownames(mydata1.bcl.GK.200.new)[c(10,20)] <- rownames(mydata2.bcl.GK.200.new)[c(10,20)] <- rownames(mydata3.bcl.GK.200.new)[c(10,20)] <- rownames(mydata4.bcl.GK.200.new)[c(10,20)] <- ""
rownames(mydata1.bcl.LaK.200.new)[c(10,20)] <- rownames(mydata2.bcl.LaK.200.new)[c(10,20)] <- rownames(mydata3.bcl.LaK.200.new)[c(10,20)] <- rownames(mydata4.bcl.LaK.200.new)[c(10,20)] <- ""
rownames(mydata1.clm.LK.200.new)[c(10,20)] <- rownames(mydata2.clm.LK.200.new)[c(10,20)] <- rownames(mydata3.clm.LK.200.new)[c(10,20)] <- rownames(mydata4.clm.LK.200.new)[c(10,20)] <- ""
rownames(mydata1.clm.GK.200.new)[c(10,20)] <- rownames(mydata2.clm.GK.200.new)[c(10,20)] <- rownames(mydata3.clm.GK.200.new)[c(10,20)] <- rownames(mydata4.clm.GK.200.new)[c(10,20)] <- ""
rownames(mydata1.clm.LaK.200.new)[c(10,20)] <- rownames(mydata2.clm.LaK.200.new)[c(10,20)] <- rownames(mydata3.clm.LaK.200.new)[c(10,20)] <- rownames(mydata4.clm.LaK.200.new)[c(10,20)] <- ""



############################################################################
##################################  plot  ##################################
############################################################################

col_fun = colorRamp2(seq(0, 100, 20), c("white", "lemonchiffon","gold","red","red2","red4"))
cm = ColorMapping(col_fun = col_fun)

lgd = Legend(col_fun = cm, title = NULL, at = seq(0, 100, 20), legend_gp = gpar(fill = seq(0, 100, 20)), 
             legend_height = unit(4, "cm"), legend_width = unit(2, "mm"), direction = "vertical")



############################################################################
###############################  bcl.LK.100  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.bcl.LK.100.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.bcl.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.bcl.LK.100.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.bcl.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.bcl.LK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.bcl.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.bcl.LK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.bcl.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.bcl.LK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  bcl.GK.100  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.bcl.GK.100.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.bcl.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.bcl.GK.100.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.bcl.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.bcl.GK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.bcl.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.bcl.GK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.bcl.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.bcl.GK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  bcl.LaK.100  ##############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.bcl.LaK.100.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.bcl.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.bcl.LaK.100.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.bcl.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.bcl.LaK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.bcl.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.bcl.LaK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.bcl.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.bcl.LaK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()




############################################################################
###############################  clm.LK.100  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.clm.LK.100.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.clm.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.clm.LK.100.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.clm.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.clm.LK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.clm.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.clm.LK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.clm.LK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.clm.LK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  clm.GK.100  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.clm.GK.100.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.clm.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.clm.GK.100.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.clm.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.clm.GK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.clm.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.clm.GK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.clm.GK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.clm.GK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  clm.LaK.100  ##############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.clm.LaK.100.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.clm.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.clm.LaK.100.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.clm.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.clm.LaK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.clm.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.clm.LaK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.clm.LaK.100.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.clm.LaK.100.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()





############################################################################
###############################  bcl.LK.200  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.bcl.LK.200.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.bcl.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.bcl.LK.200.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.bcl.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.bcl.LK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.bcl.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.bcl.LK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.bcl.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.bcl.LK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  bcl.GK.200  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.bcl.GK.200.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.bcl.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.bcl.GK.200.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.bcl.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.bcl.GK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.bcl.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.bcl.GK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.bcl.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.bcl.GK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  bcl.LaK.200  ##############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.bcl.LaK.200.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.bcl.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.bcl.LaK.200.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.bcl.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.bcl.LaK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.bcl.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.bcl.LaK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.bcl.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.bcl.LaK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()




############################################################################
###############################  clm.LK.200  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.clm.LK.200.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.clm.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.clm.LK.200.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.clm.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.clm.LK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.clm.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.clm.LK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.clm.LK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.clm.LK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  clm.GK.200  ###############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.clm.GK.200.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.clm.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.clm.GK.200.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.clm.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.clm.GK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.clm.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.clm.GK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.clm.GK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.clm.GK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()



############################################################################
###############################  clm.LaK.200  ##############################
############################################################################

setEPS()
postscript("E:/sun/multiMiRKAT/plot/figs/individual.tests.clm.LaK.200.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.clm.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.clm.LaK.200.new),
                   column_order = c(1:9),
                   column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
            Heatmap(mydata2.clm.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata2.clm.LaK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 2",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata3.clm.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata3.clm.LaK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 3",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F) +
            Heatmap(mydata4.clm.LaK.200.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                    row_names_side = "left",
                    row_order = c(1:29),
                    row_labels = rownames(mydata4.clm.LaK.200.new),
                    column_order = c(1:9),
                    column_labels = c("Ja", "BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                    column_title = "Scenario 4",
                    rect_gp = gpar(col = "white", lwd = 3),
                    show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()
