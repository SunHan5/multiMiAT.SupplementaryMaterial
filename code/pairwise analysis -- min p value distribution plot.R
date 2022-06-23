rm(list = ls())
library(ggplot2)
library(patchwork)
library(showtext)

########################################################################
#############################  aMiSPU.100  #############################
########################################################################

result.aMiSPU.100 <- readRDS("result.aMiSPU.100.rds")
mydata1 <- result.aMiSPU.100[c(which(result.aMiSPU.100$scenario == "Scenario 1a"), which(result.aMiSPU.100$scenario == "Scenario 1b"), which(result.aMiSPU.100$scenario == "Scenario 1c"), which(result.aMiSPU.100$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.aMiSPU.100[c(which(result.aMiSPU.100$scenario == "Scenario 2a"), which(result.aMiSPU.100$scenario == "Scenario 2b"), which(result.aMiSPU.100$scenario == "Scenario 2c"), which(result.aMiSPU.100$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.aMiSPU.100[c(which(result.aMiSPU.100$scenario == "Scenario 3a"), which(result.aMiSPU.100$scenario == "Scenario 3b"), which(result.aMiSPU.100$scenario == "Scenario 3c"), which(result.aMiSPU.100$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.aMiSPU.100[c(which(result.aMiSPU.100$scenario == "Scenario 4a"), which(result.aMiSPU.100$scenario == "Scenario 4b"), which(result.aMiSPU.100$scenario == "Scenario 4c"), which(result.aMiSPU.100$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("aMiSPU.100.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()





########################################################################
#############################  aMiSPU.200  #############################
########################################################################

rm(list = ls())
result.aMiSPU.200 <- readRDS("result.aMiSPU.200.rds")
mydata1 <- result.aMiSPU.200[c(which(result.aMiSPU.200$scenario == "Scenario 1a"), which(result.aMiSPU.200$scenario == "Scenario 1b"), which(result.aMiSPU.200$scenario == "Scenario 1c"), which(result.aMiSPU.200$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.aMiSPU.200[c(which(result.aMiSPU.200$scenario == "Scenario 2a"), which(result.aMiSPU.200$scenario == "Scenario 2b"), which(result.aMiSPU.200$scenario == "Scenario 2c"), which(result.aMiSPU.200$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.aMiSPU.200[c(which(result.aMiSPU.200$scenario == "Scenario 3a"), which(result.aMiSPU.200$scenario == "Scenario 3b"), which(result.aMiSPU.200$scenario == "Scenario 3c"), which(result.aMiSPU.200$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.aMiSPU.200[c(which(result.aMiSPU.200$scenario == "Scenario 4a"), which(result.aMiSPU.200$scenario == "Scenario 4b"), which(result.aMiSPU.200$scenario == "Scenario 4c"), which(result.aMiSPU.200$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("aMiSPU.200.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()





########################################################################
##############################  MiHC.100  ##############################
########################################################################

rm(list = ls())
result.MiHC.100 <- readRDS("result.MiHC.100.rds")
mydata1 <- result.MiHC.100[c(which(result.MiHC.100$scenario == "Scenario 1a"), which(result.MiHC.100$scenario == "Scenario 1b"), which(result.MiHC.100$scenario == "Scenario 1c"), which(result.MiHC.100$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.MiHC.100[c(which(result.MiHC.100$scenario == "Scenario 2a"), which(result.MiHC.100$scenario == "Scenario 2b"), which(result.MiHC.100$scenario == "Scenario 2c"), which(result.MiHC.100$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.MiHC.100[c(which(result.MiHC.100$scenario == "Scenario 3a"), which(result.MiHC.100$scenario == "Scenario 3b"), which(result.MiHC.100$scenario == "Scenario 3c"), which(result.MiHC.100$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.MiHC.100[c(which(result.MiHC.100$scenario == "Scenario 4a"), which(result.MiHC.100$scenario == "Scenario 4b"), which(result.MiHC.100$scenario == "Scenario 4c"), which(result.MiHC.100$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("MiHC.100.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()





########################################################################
##############################  MiHC.200  ##############################
########################################################################

rm(list = ls())
result.MiHC.200 <- readRDS("result.MiHC.200.rds")
mydata1 <- result.MiHC.200[c(which(result.MiHC.200$scenario == "Scenario 1a"), which(result.MiHC.200$scenario == "Scenario 1b"), which(result.MiHC.200$scenario == "Scenario 1c"), which(result.MiHC.200$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.MiHC.200[c(which(result.MiHC.200$scenario == "Scenario 2a"), which(result.MiHC.200$scenario == "Scenario 2b"), which(result.MiHC.200$scenario == "Scenario 2c"), which(result.MiHC.200$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.MiHC.200[c(which(result.MiHC.200$scenario == "Scenario 3a"), which(result.MiHC.200$scenario == "Scenario 3b"), which(result.MiHC.200$scenario == "Scenario 3c"), which(result.MiHC.200$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.MiHC.200[c(which(result.MiHC.200$scenario == "Scenario 4a"), which(result.MiHC.200$scenario == "Scenario 4b"), which(result.MiHC.200$scenario == "Scenario 4c"), which(result.MiHC.200$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("MiHC.200.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()





########################################################################
#############################  OMiAT.100  ##############################
########################################################################

rm(list = ls())
result.OMiAT.100 <- readRDS("result.OMiAT.100.rds")
mydata1 <- result.OMiAT.100[c(which(result.OMiAT.100$scenario == "Scenario 1a"), which(result.OMiAT.100$scenario == "Scenario 1b"), which(result.OMiAT.100$scenario == "Scenario 1c"), which(result.OMiAT.100$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.OMiAT.100[c(which(result.OMiAT.100$scenario == "Scenario 2a"), which(result.OMiAT.100$scenario == "Scenario 2b"), which(result.OMiAT.100$scenario == "Scenario 2c"), which(result.OMiAT.100$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.OMiAT.100[c(which(result.OMiAT.100$scenario == "Scenario 3a"), which(result.OMiAT.100$scenario == "Scenario 3b"), which(result.OMiAT.100$scenario == "Scenario 3c"), which(result.OMiAT.100$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.OMiAT.100[c(which(result.OMiAT.100$scenario == "Scenario 4a"), which(result.OMiAT.100$scenario == "Scenario 4b"), which(result.OMiAT.100$scenario == "Scenario 4c"), which(result.OMiAT.100$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("OMiAT.100.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()





########################################################################
#############################  OMiAT.200  ##############################
########################################################################

rm(list = ls())
result.OMiAT.200 <- readRDS("result.OMiAT.200.rds")
mydata1 <- result.OMiAT.200[c(which(result.OMiAT.200$scenario == "Scenario 1a"), which(result.OMiAT.200$scenario == "Scenario 1b"), which(result.OMiAT.200$scenario == "Scenario 1c"), which(result.OMiAT.200$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.OMiAT.200[c(which(result.OMiAT.200$scenario == "Scenario 2a"), which(result.OMiAT.200$scenario == "Scenario 2b"), which(result.OMiAT.200$scenario == "Scenario 2c"), which(result.OMiAT.200$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.OMiAT.200[c(which(result.OMiAT.200$scenario == "Scenario 3a"), which(result.OMiAT.200$scenario == "Scenario 3b"), which(result.OMiAT.200$scenario == "Scenario 3c"), which(result.OMiAT.200$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.OMiAT.200[c(which(result.OMiAT.200$scenario == "Scenario 4a"), which(result.OMiAT.200$scenario == "Scenario 4b"), which(result.OMiAT.200$scenario == "Scenario 4c"), which(result.OMiAT.200$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("OMiAT.200.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()





########################################################################
#############################  OMiRKAT.100  ############################
########################################################################

rm(list = ls())
result.OMiRKAT.100 <- readRDS("result.OMiRKAT.100.rds")
mydata1 <- result.OMiRKAT.100[c(which(result.OMiRKAT.100$scenario == "Scenario 1a"), which(result.OMiRKAT.100$scenario == "Scenario 1b"), which(result.OMiRKAT.100$scenario == "Scenario 1c"), which(result.OMiRKAT.100$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.OMiRKAT.100[c(which(result.OMiRKAT.100$scenario == "Scenario 2a"), which(result.OMiRKAT.100$scenario == "Scenario 2b"), which(result.OMiRKAT.100$scenario == "Scenario 2c"), which(result.OMiRKAT.100$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.OMiRKAT.100[c(which(result.OMiRKAT.100$scenario == "Scenario 3a"), which(result.OMiRKAT.100$scenario == "Scenario 3b"), which(result.OMiRKAT.100$scenario == "Scenario 3c"), which(result.OMiRKAT.100$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.OMiRKAT.100[c(which(result.OMiRKAT.100$scenario == "Scenario 4a"), which(result.OMiRKAT.100$scenario == "Scenario 4b"), which(result.OMiRKAT.100$scenario == "Scenario 4c"), which(result.OMiRKAT.100$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("OMiRKAT.100.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()





########################################################################
#############################  OMiRKAT.200  ############################
########################################################################

rm(list = ls())
result.OMiRKAT.200 <- readRDS("result.OMiRKAT.200.rds")
mydata1 <- result.OMiRKAT.200[c(which(result.OMiRKAT.200$scenario == "Scenario 1a"), which(result.OMiRKAT.200$scenario == "Scenario 1b"), which(result.OMiRKAT.200$scenario == "Scenario 1c"), which(result.OMiRKAT.200$scenario == "scenario 4a")), ]
rownames(mydata1) <- 1:nrow(mydata1)
mydata2 <- result.OMiRKAT.200[c(which(result.OMiRKAT.200$scenario == "Scenario 2a"), which(result.OMiRKAT.200$scenario == "Scenario 2b"), which(result.OMiRKAT.200$scenario == "Scenario 2c"), which(result.OMiRKAT.200$scenario == "scenario 4a")), ]
rownames(mydata2) <- 1:nrow(mydata2)
mydata3 <- result.OMiRKAT.200[c(which(result.OMiRKAT.200$scenario == "Scenario 3a"), which(result.OMiRKAT.200$scenario == "Scenario 3b"), which(result.OMiRKAT.200$scenario == "Scenario 3c"), which(result.OMiRKAT.200$scenario == "scenario 4a")), ]
rownames(mydata3) <- 1:nrow(mydata3)
mydata4 <- result.OMiRKAT.200[c(which(result.OMiRKAT.200$scenario == "Scenario 4a"), which(result.OMiRKAT.200$scenario == "Scenario 4b"), which(result.OMiRKAT.200$scenario == "Scenario 4c"), which(result.OMiRKAT.200$scenario == "scenario 4a")), ]
rownames(mydata4) <- 1:nrow(mydata4)

setEPS()
postscript("OMiRKAT.200.eps", width = 9, height = 11)
showtext_begin()

p1 <- ggplot(mydata1, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") + 
  theme(legend.position = 'none')

p2 <- ggplot(mydata2, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p3 <- ggplot(mydata3, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'none')


p4 <- ggplot(mydata4, aes(x = beta, y = proportion, fill = Group)) +
  geom_bar(stat = "identity", position = "stack", colour="black")  + ylim(c(0, 100.1)) +
  scale_fill_manual(values = c("yellow", "chartreuse3", "red", "gold", "dodgerblue", "pink")) +
  theme_bw() +
  theme(axis.text.x = element_text(size = 8, face = 'bold')) +
  theme(axis.text.y = element_text(size = 9, face = 'bold')) +
  facet_wrap( ~ scenario) + 
  labs(x = "", y = "") +
  theme(legend.position = 'bottom') +
  theme(legend.title = element_text(size = 11)) +
  theme(legend.background = element_rect(fill = "transparent", colour = NA, size = 1, linetype = "dashed")) +
  theme(legend.key = element_rect(fill = "transparent", colour = "grey50")) +
  theme(legend.key.size = unit(0.5,'cm')) + theme(legend.key.width=unit(0.5,'cm')) +
  theme(legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(nrow = 1))


layout <- '
A
B
C
D
'

p1 + p2 + p3 + p4 + plot_layout(design = layout) 

showtext_end()
dev.off()




