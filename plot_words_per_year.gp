#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of words"

set ter eps
set out "words_per_year.eps"
set monochrome 

# set log y

plot 'words-per-year.text' using 1:2 w l t "Words written in verse", \
     'words-per-year.text' using 1:3 w l t "Words written in prose"

#     'words-per-year.text' using 1:3 w l t "Words written in prose", \
#     'crises.text'         using 1:2 w i t "Life crises"
#     'other_events.text'   using 1:2 w i t "Other events"

set ter png
set out "words_per_year.png"
set color

replot
