#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"


set ter eps
set out "selected_poetry_refs_per_year.eps"
set monochrome 
# set key left top

plot 'selected_poetry_ref_1.text' using 1:2 w l t "Matt 16,18", \
     'selected_poetry_ref_2.text' using 1:2 w l t "1 Mos 2,7", \
     'selected_poetry_ref_3.text' using 1:2 w l t "Joh 6,63", \
     'selected_poetry_ref_4.text' using 1:2 w l t "Ordsp 4,23"

# , 'weekly_counts.txt' using 1:6 w l t "farsot"
