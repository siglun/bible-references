#!/bin/bash

source "parameters.sh"

#
# All texts
#

$SAXON table-all.xml aggregate-per-year.xsl > aggregated-references-per-year.text

$SAXON table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_1.text
$SAXON ref='1 Kor 13,12'   table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_2.text
$SAXON ref='1 Kor 13,13'   table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_3.text
$SAXON ref='Matt 28,18-20' table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_4.text
$SAXON ref='Sl 23,4' table-all.xml aggregate-per-year-for-given-reference.xsl > selected_ref_5.text

#
# The poetry and the verses
#

$SAXON table-poetry.xml aggregate-per-year.xsl > aggregated-poetry-references-per-year.text

$SAXON table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_1.text
$SAXON ref='1 Mos 2,7'   table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_2.text
$SAXON ref='Joh 6,63'   table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_3.text
$SAXON ref='Ordsp 4,23' table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_4.text
$SAXON ref='Sl 23,4' table-poetry.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_5.text

#
# and, finally, the prose
#

$SAXON table-prose.xml aggregate-per-year.xsl > aggregated-prose-references-per-year.text

$SAXON table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_1.text
$SAXON ref='1 Mos 2,7'   table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_2.text
$SAXON ref='Joh 6,63'   table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_3.text
$SAXON ref='Ordsp 4,23' table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_4.text
$SAXON ref='Sl 23,4' table-prose.xml aggregate-per-year-for-given-reference.xsl > selected_prose_ref_5.text

#
# the distributions
#

xpath -q -e '//tr/td[2]/text()' table-all.xml     | sort |uniq -c | sort -n > sorted_uniq_keys.text
xpath -q -e '//tr/td[2]/text()' table-poetry.xml  | sort |uniq -c | sort -n > sorted_uniq_keys_for_poetry.text
xpath -q -e '//tr/td[2]/text()' table-prose.xml   | sort |uniq -c | sort -n > sorted_uniq_keys_for_prose.text

#
# then we count lines for the distributions
#

perl -ne 's/^\s*//;s/\s.*$//;print;' < sorted_uniq_keys.text             | uniq -c > distribution.text
perl -ne 's/^\s*//;s/\s.*$//;print;' < sorted_uniq_keys_for_poetry.text  | uniq -c > distribution_poetry.text
perl -ne 's/^\s*//;s/\s.*$//;print;' < sorted_uniq_keys_for_prose.text   | uniq -c > distribution_prose.text


#
# then we plot
#

gnuplot < plot_distributions.gp

gnuplot < plot_references.gp
gnuplot < plot_selected_references.gp

ps2pdf  -dEPSCrop  distribution.eps
ps2pdf  -dEPSCrop  refs_per_year.eps
ps2pdf  -dEPSCrop  selected_refs_per_year.eps

