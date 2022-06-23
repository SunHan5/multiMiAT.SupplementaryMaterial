rm(list = ls())
library(reshape2)
library(ggplot2)
library(ggpubr)
library(dplyr)
library(patchwork)
library(showtext)

all.beta.100 <- readRDS("all.scenario.comparison.100.rds")
all.beta.200 <- readRDS("all.scenario.comparison.200.rds")

beta0.100 <- all.beta.100$beta0
beta1.100 <- all.beta.100$beta0.25
beta2.100 <- all.beta.100$beta0.5
beta3.100 <- all.beta.100$beta0.75
beta4.100 <- all.beta.100$beta1
beta5.100 <- all.beta.100$beta1.25
beta6.100 <- all.beta.100$beta1.5
beta7.100 <- all.beta.100$beta1.75
beta8.100 <- all.beta.100$beta2

beta0.200 <- all.beta.200$beta0
beta1.200 <- all.beta.200$beta0.25
beta2.200 <- all.beta.200$beta0.5
beta3.200 <- all.beta.200$beta0.75
beta4.200 <- all.beta.200$beta1
beta5.200 <- all.beta.200$beta1.25
beta6.200 <- all.beta.200$beta1.5
beta7.200 <- all.beta.200$beta1.75
beta8.200 <- all.beta.200$beta2

mydata1.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta0.100, 2, mean),
                         se = apply(beta0.100, 2, sd))

mydata2.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta1.100, 2, mean),
                         se = apply(beta1.100, 2, sd))

mydata3.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta2.100, 2, mean),
                         se = apply(beta2.100, 2, sd))

mydata4.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta3.100, 2, mean),
                         se = apply(beta3.100, 2, sd))

mydata5.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta4.100, 2, mean),
                         se = apply(beta4.100, 2, sd))

mydata6.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta5.100, 2, mean),
                         se = apply(beta5.100, 2, sd))

mydata7.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta6.100, 2, mean),
                         se = apply(beta6.100, 2, sd))

mydata8.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta7.100, 2, mean),
                         se = apply(beta7.100, 2, sd))

mydata9.100 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta8.100, 2, mean),
                         se = apply(beta8.100, 2, sd))

mydata1.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta0.200, 2, mean),
                         se = apply(beta0.200, 2, sd))

mydata2.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta1.200, 2, mean),
                         se = apply(beta1.200, 2, sd))

mydata3.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta2.200, 2, mean),
                         se = apply(beta2.200, 2, sd))

mydata4.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta3.200, 2, mean),
                         se = apply(beta3.200, 2, sd))

mydata5.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta4.200, 2, mean),
                         se = apply(beta4.200, 2, sd))

mydata6.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta5.200, 2, mean),
                         se = apply(beta5.200, 2, sd))

mydata7.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta6.200, 2, mean),
                         se = apply(beta6.200, 2, sd))

mydata8.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta7.200, 2, mean),
                         se = apply(beta7.200, 2, sd))

mydata9.200 = data.frame(Methods = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"),
                         mean = apply(beta8.200, 2, mean),
                         se = apply(beta8.200, 2, sd))

mydata1.100$Methods <- factor(mydata1.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata2.100$Methods <- factor(mydata2.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata3.100$Methods <- factor(mydata3.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata4.100$Methods <- factor(mydata4.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata5.100$Methods <- factor(mydata5.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata6.100$Methods <- factor(mydata6.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata7.100$Methods <- factor(mydata7.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata8.100$Methods <- factor(mydata8.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata9.100$Methods <- factor(mydata9.100$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)

mydata1.200$Methods <- factor(mydata1.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata2.200$Methods <- factor(mydata2.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata3.200$Methods <- factor(mydata3.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata4.200$Methods <- factor(mydata4.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata5.200$Methods <- factor(mydata5.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata6.200$Methods <- factor(mydata6.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata7.200$Methods <- factor(mydata7.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata8.200$Methods <- factor(mydata8.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)
mydata9.200$Methods <- factor(mydata9.200$Methods, levels = c("Adonis", "ANOSIM", "aMiSPU", "MiHC", "OMiAT", "OMiRKAT", "SASOM-F", "SASOM-T", "SASOM-D", "MiRKAT_MCN", "MiRKAT_MCO", "multiMiAT"), ordered = TRUE)


####################################################################################
###################################### n = 100 #####################################
####################################################################################

p1.100 <- ggplot(data = mydata1.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = 5, color = "red", linetype = "dashed") +
  geom_hline(yintercept = 6, color = "red") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 0.1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 2, 4, 5, 6)) + xlab("") + ylab("Type I error") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p2.100 <- ggplot(data = mydata2.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p3.100 <- ggplot(data = mydata3.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p4.100 <- ggplot(data = mydata4.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p5.100 <- ggplot(data = mydata5.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") + 
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p6.100 <- ggplot(data = mydata6.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p7.100 <- ggplot(data = mydata7.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p8.100 <- ggplot(data = mydata8.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p9.100 <- ggplot(data = mydata9.100, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 2"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))




####################################################################################
###################################### n = 200 #####################################
####################################################################################

p1.200 <- ggplot(data = mydata1.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = 5, color = "red", linetype = "dashed") +
  geom_hline(yintercept = 6, color = "red") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 0.1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 2, 4, 5, 6)) + xlab("") + ylab("Type I error") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p2.200 <- ggplot(data = mydata2.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p3.200 <- ggplot(data = mydata3.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p4.200 <- ggplot(data = mydata4.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black")  +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p5.200 <- ggplot(data = mydata5.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") + 
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p6.200 <- ggplot(data = mydata6.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black")  +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p7.200 <- ggplot(data = mydata7.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") + 
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p8.200 <- ggplot(data = mydata8.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p9.200 <- ggplot(data = mydata9.200, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  scale_colour_manual(values = c("yellow", "orange", "green", "pink", "#00BADE", "#B385FF", "thistle", "khaki", "tan", "skyblue", "slateblue", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 2"))) + theme(plot.title = element_text(hjust = 0.5)) + 
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))


layout <- '
ABC
DEF
GHI
'

setEPS()
postscript("all.scenario.compare.100.eps", width = 12, height = 14)
showtext_begin()

p1.100 + p2.100 + p3.100 + p4.100 + p5.100 + p6.100 + p7.100 + p8.100 + p9.100 + plot_layout(design = layout) 

showtext_end()
dev.off()


setEPS()
postscript("all.scenario.compare.200.eps", width = 12, height = 14)
showtext_begin()

p1.200 + p2.200 + p3.200 + p4.200 + p5.200 + p6.200 + p7.200 + p8.200 + p9.200 + plot_layout(design = layout) 

showtext_end()
dev.off()
