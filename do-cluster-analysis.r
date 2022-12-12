#!/usr/bin/Rscript


yearly_quotes <- read.table(file = "clustering-data.text",
	      	     row.names=1,
                     sep = "",
                     quote = "\"",
                     dec = ".",
                     fill = TRUE,
                     comment.char = "#")

# yearly_quotes



pdf( "cladogram.pdf", width = 15, height = 10 )

# d=dist(yearly_quotes,method="euclidean")
d=dist(yearly_quotes,method="minkowski")
hc <- hclust(d,method="complete")

hcd <- as.dendrogram(hc)

plot(hcd,xlab="Years")
