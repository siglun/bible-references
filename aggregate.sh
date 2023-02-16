#!/bin/bash

source "parameters.sh"

#
# All texts
#

$SAXON table-all.xml aggregate-per-year.xsl > aggregated-references-per-year.text
$SAXON ref='Sl 23,4'    table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_1.text
$SAXON ref='Ordsp 4,23' table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_2.text
$SAXON ref='Joh 6,63'   table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_3.text
$SAXON ref='Matt 16,18' table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_4.text
$SAXON ref='1 Mos 2,7'  table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_5.text
$SAXON ref='1 Kor 13,13'  table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_7.text

#
# The poetry and the verses
#

$SAXON table-poetry.xml aggregate-per-year.xsl > aggregated-poetry-references-per-year.text
$SAXON ref='Sl 23,4'    table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_1.text
$SAXON ref='Ordsp 4,23' table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_2.text
$SAXON ref='Joh 6,63'   table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_3.text
$SAXON ref='Matt 16,18' table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_4.text
$SAXON ref='1 Mos 2,7'  table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_5.text
$SAXON ref='1 Mos 1,27' table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_6.text
$SAXON ref='1 Kor 13,13'  table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_7.text
$SAXON ref='1 Kor 13,12'  table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_8.text

#
# and, finally, the prose
#

$SAXON table-prose.xml aggregate-per-year.xsl > aggregated-prose-references-per-year.text
$SAXON ref='Sl 23,4'    table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_1.text
$SAXON ref='Ordsp 4,23' table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_2.text
$SAXON ref='Joh 6,63'   table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_3.text
$SAXON ref='Matt 16,18' table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_4.text
$SAXON ref='1 Mos 2,7'  table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_5.text  
$SAXON ref='1 Mos 1,27' table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_6.text
$SAXON ref='1 Kor 13,13' table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_7.text
$SAXON ref='1 Kor 13,12' table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_8.text


#
# the distributions
#

xpath -q -e '//tr/td[2]/text()' table-all.xml     | sort |uniq -c | sort -n > sorted_uniq_keys.text
xpath -q -e '//tr/td[2]/text()' table-prose.xml   | sort |uniq -c | sort -n > sorted_uniq_keys_for_prose.text
xpath -q -e '//tr/td[2]/text()' table-prose.xml   | sort |uniq -c | sort -n > sorted_uniq_keys_for_prose.text

#
# then we count lines for the distributions
#

perl -ne 's/^\s*//;s/\s.*$//;print;' < sorted_uniq_keys.text             | uniq -c > distribution.text
perl -ne 's/^\s*//;s/\s.*$//;print;' < sorted_uniq_keys_for_poetry.text  | uniq -c > distribution_poetry.text
perl -ne 's/^\s*//;s/\s.*$//;print;' < sorted_uniq_keys_for_prose.text   | uniq -c > distribution_prose.text

./normalize-distro.pl < distribution_poetry.text > shit.text
mv  shit.text distribution_poetry.text 

./normalize-distro.pl < distribution_prose.text > shit.text
mv  shit.text distribution_prose.text 

#
# then we plot
#

gnuplot < plot_distributions.gp

gnuplot < plot_references.gp
gnuplot < plot_selected_prose_references.gp
gnuplot < plot_selected_poetry_references.gp
gnuplot < plot_comparison_poetry_prose.gp

ps2pdf  -dEPSCrop  words_per_year.eps

ps2pdf  -dEPSCrop  distribution.eps
ps2pdf  -dEPSCrop  refs_per_year.eps
ps2pdf  -dEPSCrop  selected_refs_per_year.eps
ps2pdf  -dEPSCrop  selected_prose_refs_per_year.eps
ps2pdf  -dEPSCrop  selected_poetry_refs_per_year.eps

ps2pdf  -dEPSCrop  refs_1corinthians_13_13.eps
ps2pdf  -dEPSCrop  refs_1corinthians_13_12.eps

ps2pdf  -dEPSCrop  refs_genesis_2_7.eps
ps2pdf  -dEPSCrop  refs_genesis_1_27.eps
ps2pdf  -dEPSCrop  refs_matt_16_18.eps
ps2pdf  -dEPSCrop  refs_psalm_23_4.eps
ps2pdf  -dEPSCrop  refs_john_6_23.eps
ps2pdf  -dEPSCrop  refs_proverbs_4_23.eps
