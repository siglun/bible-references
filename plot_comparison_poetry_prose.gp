#
# plot grand totals
#
set xlabel "Year"
set ylabel "Number of references"



# set key left top

# "Psalm 23:4"
set monochrome 
set ter eps
set out "refs_psalm_23_4.eps"

plot \
'selected_poetry_ref_1.text' using 1:2 w l t "Verse", \
'selected_prose_ref_1.text' using 1:2 w l t "Prose"

set color
set ter png
set out "refs_psalm_23_4.png"
replot

# Ordsp 4,23 AKA Proverbs 4:23
set monochrome 
set ter eps
set out "refs_proverbs_4_23.eps"
plot \
'selected_poetry_ref_2.text' using 1:2 w l t "Verse", \
'selected_prose_ref_2.text' using 1:2 w l t "Prose"
set color
set ter png
set out "refs_proverbs_4_23.png"
replot

# "John 6,63"
set monochrome 
set ter eps
set out "refs_john_6_23.eps"
plot \
'selected_poetry_ref_3.text' using 1:2 w l t "Verse", \
'selected_prose_ref_3.text' using 1:2 w l t "Prose"

set color
set ter png
set out "refs_john_6_23.png"
replot

# "Matt 16,18"
set monochrome 
set ter eps
set out "refs_matt_16_18.eps"
plot \
'selected_poetry_ref_4.text' using 1:2 w l t "Verse", \
'selected_prose_ref_4.text' using 1:2 w l t "Prose"

set color
set ter png
set out "refs_matt_16_18.png"
replot

# "1 Mos 2,7"
set monochrome 
set ter eps
set out "refs_1_Genesis_2_7.eps"
plot \
'selected_poetry_ref_5.text' using 1:2 w l t "Verse", \
'selected_prose_ref_5.text' using 1:2 w l t "Prose"

set color
set ter png
set out "refs_1_Genesis_2_7.png"
replot

# "1 Mos 1,27"
set monochrome 
set ter eps
set out "refs_1_Genesis_1_27.eps"
plot \
'selected_poetry_ref_6.text' using 1:2 w l t "Verse", \
'selected_prose_ref_6.text'  using 1:2 w l t "Prose"

set color
set ter png
set out "refs_1_Genesis_1_27.png"
replot
