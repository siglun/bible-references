#!/usr/bin/Rscript


yearly_quotes <- read.table(file = "clustering-data.text",
                     sep = "",
                     quote = "\"",
                     dec = ".",
                     fill = TRUE,
                     comment.char = "#")


yearly_quotes