#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"


set ter eps
set out "selected_refs_per_year.eps"
set monochrome 
set key left top

plot 'selected_ref_1.text' using 1:2 w l t "Matt 16,18", \
     'selected_ref_2.text' using 1:2 w l t "1 Kor 13,12", \
     'selected_ref_3.text' using 1:2 w l t "1 Kor 13,13", \
     'selected_ref_4.text' using 1:2 w l t "Matt 28,18-20"


set ter pdfcairo
set out "selected_refs_per_year.pdf"
set monochrome 

replot

