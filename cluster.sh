#!/bin/bash

source "parameters.sh"

$SAXON table-prose.xml extract_clustering_data.xsl  > clustering-data-prose.text
$SAXON table-poetry.xml extract_clustering_data.xsl  > clustering-data-poetry.text

./do-cluster-analysis.r --f clustering-data-prose.text --out cladogram-prose.pdf
./do-cluster-analysis.r --f clustering-data-poetry.text --out cladogram-poetry.pdf

pdftoppm  cladogram-prose.pdf  | pnmtopng > cladogram-prose.png
pdftoppm  cladogram-poetry.pdf | pnmtopng > cladogram-poetry.png
