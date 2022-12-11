#!/usr/bin/Rscript


yearly_quotes <- read.table(file = "clustering-data.text",
	      	     row.names=1,
                     sep = "",
                     quote = "\"",
                     dec = ".",
                     fill = TRUE,
                     comment.char = "#")

# yearly_quotes



pdf( "cladogram.pdf", width = 20, height = 20 )

d=dist(yearly_quotes,method="euclidean")

hc=hclust(d,method="complete")

plot(hc)