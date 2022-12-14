#!/usr/bin/Rscript


yearly_quotes <- read.table(file = "clustering-data.text",
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

pdf( "cladogram.pdf", width = 12.0, height = 8.0  )
plot(hcd,xlab="Years")

png( "cladogram.png",width = 1200, height = 800, units = "px", pointsize = 12)
plot(hcd,xlab="Years")
