#!/usr/bin/Rscript
library("optparse")
 
option_list = list(
    make_option(c("-f", "--file"), type="character", default="clustering-data.text", 
                help="dataset file name", metavar="character"),
    make_option(c("-o", "--out"),  type="character", default="cladogram.pdf", 
                help="output file name [default= %default]", metavar="character")
); 
 
opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);


yearly_quotes <- read.table(file = opt$file,
	      	     row.names=1,
                     sep = "",
                     quote = "\"",
                     dec = ".",
                     fill = TRUE,
                     comment.char = "#")

# d=dist(yearly_quotes,method="euclidean")
d=dist(yearly_quotes,method="minkowski")

hc <- hclust(d,method="complete")
hcd <- as.dendrogram(hc)

# postscript( "cladogram_eps.eps", width = 12.0, height = 8.0 , onefile = FALSE ,   horizontal = FALSE )
# plot(hcd,xlab="Years")
# system("ps2pdf  -dEPSCrop cladogram_eps.eps")

pdf( opt$out, width = 12.0, height = 8.0  )
plot(hcd,xlab="Years")

png( "cladogram.png",width = 1200, height = 800, units = "px", pointsize = 12)
plot(hcd,xlab="Years")
