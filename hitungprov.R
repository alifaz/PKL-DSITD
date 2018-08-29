data <- read.csv("snm-siap.csv", header = T, sep = ",")
data <- data[,-(1:7)]
data <- data[,-(2:4)]
data <- data[,-(3:4)]
target <- c("1", "2")
data1 <- filter(data, data$PSKe %in% target)
data2 <- count(data$NamaProvinsi)
data1
