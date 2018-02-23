library(haven)
Data <- read_sav("/media/empro/5C02C2EB02C2C8EA/Ubuntu/Fendler/ovaryAnalysis/spAn/data.sav")


Labels <- Data[c(1)]
Data <- Data[-c(1)]

corMatrix <- cor(Data, method = 'spearman')

#heatm <- heatmap(corMatrix)
heatm <- heatmap(corMatrix, Rowv = NA, Colv = NA)

