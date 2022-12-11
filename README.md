# Statistics on Grundtvig's use of bible references

[Nikolaj Frederik Severin
Grundtvig](https://en.wikipedia.org/wiki/N._F._S._Grundtvig) is one of
the most influential persons in Danish history. He was a polymath and
a very prolific man, a pastor, author, poet, philosopher, historian,
teacher and politician, as wikipedia describes him.

This project includes a statical analysis of his use of bible
references, as found in
[https://tekster.kb.dk/](https://tekster.kb.dk/).

The data comes from the [Center for
Grundtvigforskning](https://grundtvigcenteret.au.dk/) which is the
publisher of [Grundtvigs Værker](http://www.grundtvigsværker.dk/) referred to as GV.

I use the counts of individual bible references to compare all the
years of Grundtvig's professional life. The philologists at the
Grundtig centre has identified 11499 references to the bible in the
GV. They refer to 4637 different locations in the bible, i.e., he uses
each location 2.5 times on the average. In reality there are large
number of bible locations that just appear once in a reference,
whereas there are a number of favourates which is cited 50-60 in the
corpus.

What you find below is an outline of an analysis of bible references in his works.

## Prerequisites

Most scripts require saxon be available. Do this by

```
SAXON_JAR="/usr/share/maven-repo/net/sf/saxon/Saxon-HE/9.9.1.5/Saxon-HE-9.9.1.5.jar"
SAXON="java -jar $SAXON_JAR "
```

or source [parameters.sh](parameters.sh)

Find references from texts using `find` and `xslt` which requires that
you have access to the TEI source files. I cannot provide you with
that, since they are not ownded by me or my employer.

Any way, my data extraction is done with a shell one-liner and the
[xslt script](explore-references.xsl)

```
find build/text-retriever/gv/  \
	-name 'txt.xml' -exec xsltproc \
	--stringparam file {}  ../bible-references/explore-references.xsl {} \;  > \
	../bible-references/big-table.xml

```

The result is stored in [big-table.xml](big-table.xml), which is really a huge html table.

## Aggregating references by year

I then wrote a shell script, [aggregate.sh](aggregate.sh) which runs
an xsl transform counting the number of references per year given that
`big-table.xml`. It also makes that for given bible references, which
can be given as a parameter.


```

#!/bin/bash

source "parameters.sh"

$SAXON big-table.xml aggregate-per-year.xsl > aggregated-references-per-year.text

$SAXON big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_1.text
$SAXON ref='1 Kor 13,12'   big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_2.text
$SAXON ref='1 Kor 13,13'   big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_3.text
$SAXON ref='Matt 28,18-20' big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_4.text

gnuplot < plot_references.gp
gnuplot < plot_selected_references.gp


```

This yields two graphs

* [refs_per_year.pdf](refs_per_year.pdf)
* [selected_refs_per_year.pdf](selected_refs_per_year.pdf)

## Aggregating references by year for verse only

I then repeat that using bible references in verse (songs, psalms and
poems) using [aggregate-poetry.sh](aggregate-poetry.sh).

```

#!/bin/bash

source "parameters.sh"

$SAXON poetry-table.xml aggregate-per-year.xsl > aggregated-references-per-year.text

$SAXON poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_1.text
$SAXON ref='1 Mos 2,7'   poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_2.text
$SAXON ref='Joh 6,63'   poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_3.text
$SAXON ref='Ordsp 4,23' poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_4.text

gnuplot < plot_selected_poetry_references.gp 


```

The resulting time series is presented in a plot

* [selected_poetry_refs_per_year.pdf](selected_poetry_refs_per_year.pdf)


## Making cluster analysis and a cladogram

Here I use the counts of individual bible references to calculate a
similarity between years and through a similarity matrix and from that plot a cladogram.

```
$SAXON big-table.xml clustering_data.xsl  > clustering-data.text
```

The [clustering-data.text](clustering-data.text) contains one line per
year and 4637 columns, one for each bible location Grundtvig ever
referred to. The values in the table refer to the number of times he
referenced that locations. Most entries are zero, obviously. The
[do-cluster-analysis.r](do-cluster-analysis.r) does the calculations.
See Altuna Akalin (2020) [Computational Genomics with R](https://compgenomr.github.io/book/clustering-grouping-samples-based-on-their-similarity.html)

```

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
d=dist(yearly_quotes,method="euclidean")
hc=hclust(d,method="complete")
plot(hc)

```

The final result is in the [cladogram.pdf](cladogram.pdf)
