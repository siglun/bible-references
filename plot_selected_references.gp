#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"


set ter eps
set out "selected_refs_per_year.eps"
set monochrome 
set key left top

plot \
'selected_ref_1.text' using 1:2 w l t "Sl 23,4" 
'selected_ref_2.text' using 1:2 w l t "Ordsp 4,23", \
'selected_ref_3.text' using 1:2 w l t "Joh 6,63", \
'selected_ref_4.text' using 1:2 w l t "Matt 16,18", \
'selected_ref_5.text' using 1:2 w l t "1 Mos 2,7"




# set ter pdfcairo
# set out "selected_refs_per_year.pdf"
# set monochrome 

# replot


set ter png
set out "selected_refs_per_year.png"
set monochrome 

replot

