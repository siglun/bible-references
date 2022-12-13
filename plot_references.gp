#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"

set ter eps

set out "refs_per_year.eps"

set monochrome 

# set log y

plot 'aggregated-references-per-year.text' using 1:2 w l t "total number"


set ter pdfcairo
set out "refs_per_year.pdf"
set monochrome 

replot

set ter png
set out "refs_per_year.png"
set monochrome 

replot
