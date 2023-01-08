#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"


set ter eps
set monochrome 
# set key left top

# "Psalm 23:4"

set out "refs_psalm_23_4.eps"
plot \
'selected_poetry_ref_1.text' using 1:2 w l t "Poetry", \
'selected_prose_ref_1.text' using 1:2 w l t "Prose"

# Ordsp 4,23 AKA Proverbs 4:23

set out "refs_proverbs_4_23.eps"
plot \
'selected_poetry_ref_2.text' using 1:2 w l t "Poetry", \
'selected_prose_ref_2.text' using 1:2 w l t "Prose"

# "John 6,63"

set out "refs_john_6_23.eps"
plot \
'selected_poetry_ref_3.text' using 1:2 w l t "Poetry", \
'selected_prose_ref_3.text' using 1:2 w l t "Prose"

# "Matt 16,18"

set out "refs_matt_16_18.eps"
plot \
'selected_poetry_ref_4.text' using 1:2 w l t "Poetry", \
'selected_prose_ref_4.text' using 1:2 w l t "Prose"

# "1 Mos 2,7"
set out "refs_1_Genesis_2_7.eps"
plot \
'selected_poetry_ref_5.text' using 1:2 w l t "Poetry", \
'selected_prose_ref_5.text' using 1:2 w l t "Prose"



