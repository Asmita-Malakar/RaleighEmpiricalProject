parameters <- c("czname", "kfr_pooled_p25")
subset1 <- empiricialDataset[parameters]
subsets <- subset1
subsets <- subset(subsets, czname == "Raleigh")
mean(subsets$kfr_pooled_p25, na.rm = TRUE)
mean(empiricialDataset$kfr_pooled_p25, na.rm = TRUE)


parameters <- c("state", "kfr_pooled_p25")
NC_subsets <- empiricialDataset[parameters]
NC_subsetsFinal <- subset(NC_subsets, state == 37)
mean(NC_subsetsFinal$kfr_pooled_p25, na.rm = TRUE)

parameters <- c("state", "kfr_pooled_p25", "czname", "count_pooled")
totatSet <- empiricialDataset[parameters]
totalSet <- subset(totatSet, czname == "Raleigh")
NC_subset <- subset(totalSet, state == 37)
sqrt(wtd.var(totalSet$kfr_pooled_p25, totalSet$count_pooled, na.rm = TRUE))
sqrt(wtd.var(NC_subset$kfr_pooled_p25, NC_subset$count_pooled, na.rm = TRUE))
sqrt(wtd.var(subsets$kfr_pooled_p25, NC_subset$count_pooled, na.rm = TRUE))

x <- empiricialDataset$kfr_pooled_p25
y <- empiricialDataset$emp2000
plot(x,y)

  
a <- empiricialDataset$kfr_pooled_p75
b <- empiricialDataset$emp2000
plot(a,b)

parameters <- c("state", "kfr_pooled_p25", "czname", "count_pooled", "kfr_asian_p25","kfr_hisp_p25")
asianSet <- empiricialDataset[parameters]
asianSet <- subset(asianSet, czname == "Raleigh")
mean(asianSet$kfr_asian_p25, na.rm = TRUE)
mean(asianSet$kfr_hisp_p25, na.rm = TRUE)

cor.test(empiricialDataset$kfr_pooled_p75, empiricialDataset$frac_coll_plus2010)
cor.test(empiricialDataset$kfr_pooled_p25, empiricialDataset$frac_coll_plus2010)



