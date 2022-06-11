
R version 3.6.3 (2020-02-29) -- "Holding the Windsock"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

setwd('/home/stat605')
data = read.csv('data/allMSN.csv')

data = data[!is.na(data[,2]),]
x = aggregate(data[,2], by = list(data[,1]), mean)
x[,2] = round(x[,2],1)

write.table(t(x[,2]),'ex.txt', sep= ' ', col.names=F, row.names=F)
