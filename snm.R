snm <- read.csv("datasnmptn.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
str(snm)
snm$ID <- NULL
snm$Nopend <- NULL
snm$KODEPS2[snm$KODEPS2 == "NULL"] <- "tidak memilih"
snm$KodePSTerima[snm$KodePSTerima == "NULL" ] <- "tidak diterima"
snm$KodePSTerima[snm$KodePSTerima == ""] <- "tidak diterima"
snm$PSKe[snm$PSKe == "NULL"] <- 0
snm$KodePTN <- NULL
summary(snm)
snm$RATAUMUM[is.na(snm$RATAUMUM)]
snm <- snm[-c(3901:4500), ]
write.csv(snm, "snm-siap.csv", sep = ",")
