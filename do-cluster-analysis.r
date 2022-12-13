#!/usr/bin/Rscript


yearly_quotes <- read.table(file = "clustering-data.text",
	      	     row.names=1,
                     sep = "",
                     quote = "\"",
                     dec = ".",
                     fill = TRUE,
                     comment.char = "#")

# yearly_quotes





# d=dist(yearly_quotes,method="euclidean")
d=dist(yearly_quotes,method="minkowski")
hc <- hclust(d,method="complete")

hcd <- as.dendrogram(hc)

pdf( "cladogram.pdf", width = 15, height = 10 )
plot(hcd,xlab="Years")

png( "cladogram.png",width = 1200, height = 800, units = "px", pointsize = 12)
plot(hcd,xlab="Years")
