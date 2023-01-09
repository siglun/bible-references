#
# plot grand totals
#
set ylabel "Number of locations"
set xlabel "Number of references"

set ter eps

set out "distribution.eps"

set monochrome 

set log y

plot 'distribution.text' using 2:1 w linespoints  pt 6 t "all", \
     'distribution_poetry.text'  using 2:1 w linespoints pt 7  t "verse", \
     'distribution_prose.text'   using 2:1 w linespoints pt 8  t "prose" 


# set ter pdfcairo
# set out "distribution.pdf"
# set monochrome 
# replot

set ter png
set out "distribution.png"
set monochrome 

replot
