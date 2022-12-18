#
# plot grand totals
#
set ylabel "Count"
set xlabel "Number of references"

set ter eps

set out "distribution.eps"

set monochrome 

set log y

plot 'distribution.text' using 2:1 w l t "total", \
     'distribution_poetry.text'  using 2:1 w l t "verse only" 


set ter pdfcairo
set out "refs_per_year.pdf"
set monochrome 
replot

set ter png
set out "distribution.png"
set monochrome 

replot
