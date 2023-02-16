#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"



# set key left top

# "Psalm 23:4"

set ter eps
set out "refs_psalm_23_4.eps"
set monochrome

plot \
'selected_poetry_ref_1.text' using 1:2 w lp pt 7 t  "Verse", \
'selected_prose_ref_1.text' using 1:2 w lp pt 8 t  "Prose"

set color
set ter png
set out "refs_psalm_23_4.png"
replot

# Ordsp 4,23 AKA Proverbs 4:23

set ter eps
set out "refs_proverbs_4_23.eps"
set monochrome

plot \
'selected_poetry_ref_2.text' using 1:2 w lp pt 7 t  "Verse", \
'selected_prose_ref_2.text' using 1:2 w lp pt 8 t   "Prose"
set color
set ter png
set out "refs_proverbs_4_23.png"
replot

# "John 6,63"

set ter eps
set out "refs_john_6_23.eps"
set monochrome

plot \
'selected_poetry_ref_3.text' using 1:2 w lp pt 7 t  "Verse", \
'selected_prose_ref_3.text' using 1:2 w lp pt 8 t  "Prose"

set color
set ter png
set out "refs_john_6_23.png"
replot

# "Matt 16,18"

set ter eps
set out "refs_matt_16_18.eps"
set monochrome

plot \
'selected_poetry_ref_4.text' using 1:2 w lp pt 7 t "Verse", \
'selected_prose_ref_4.text' using 1:2 w lp pt 8 t "Prose"

set color
set ter png
set out "refs_matt_16_18.png"
replot

# "1 Mos 2,7"

set ter eps
set out "refs_genesis_2_7.eps"
set monochrome

plot \
'selected_poetry_ref_5.text' using 1:2 w lp pt 7 t "Verse", \
'selected_prose_ref_5.text' using 1:2 w lp pt 8 t "Prose"

set color
set ter png
set out "refs_genesis_2_7.png"
replot

# "1 Mos 1,27"

set ter eps
set out "refs_genesis_1_27.eps"
set monochrome

plot \
'selected_poetry_ref_6.text' using 1:2 w lp pt 7 t "Verse", \
'selected_prose_ref_6.text'  using 1:2 w lp pt 8 t "Prose"

set color
set ter png
set out "refs_genesis_1_27.png"
replot

# "1 Kor 13,12"

set ter eps
set out "refs_1corinthians_13_12.eps"
set monochrome

plot \
'selected_poetry_ref_8.text' using 1:2 w lp pt 7 t "Verse", \
'selected_prose_ref_8.text'  using 1:2 w lp pt 8 t "Prose"

set color
set ter png
set out "refs_1corinthians_13_12.png"
replot


# "1 Kor 13,13"

set ter eps
set out "refs_1corinthians_13_13.eps"
set monochrome

plot \
'selected_poetry_ref_7.text' using 1:2 w lp pt 7 t "Verse", \
'selected_prose_ref_7.text'  using 1:2 w lp pt 8 t "Prose"

set color
set ter png
set out "refs_1corinthians_13_13.png"
replot
