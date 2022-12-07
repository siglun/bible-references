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


# , 'weekly_counts.txt' using 1:6 w l t "farsot"
