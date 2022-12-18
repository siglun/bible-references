#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"

set ter eps

set out "characters_per_year.eps"

set monochrome 

# set log y

plot 'gv_characters_by_year.text' using 2:1 w d t "Characters written"


# set ter pdfcairo
# set out "refs_per_year.pdf"
# set monochrome 
# replot

set ter png
set out "refs_per_year.png"
set monochrome 

replot
