setwd("./")

library("dndscv")

coadread_data = read.csv("./COADREAD_mutationdata.csv", row.names = "X")

coadread_data = coadread_data[!duplicated(coadread_data), ]

dndsout = dndscv(coadread_data)

sel_cv = dndsout$sel_cv

write.csv(sel_cv, file = "dnds_COADREAD.csv")
