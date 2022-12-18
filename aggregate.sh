#!/bin/bash

source "parameters.sh"

$SAXON big-table.xml aggregate-per-year.xsl > aggregated-references-per-year.text

$SAXON big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_1.text
$SAXON ref='1 Kor 13,12'   big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_2.text
$SAXON ref='1 Kor 13,13'   big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_3.text
$SAXON ref='Matt 28,18-20' big-table.xml aggregate-per-year-for-given-reference.xsl > selected_ref_4.text

gnuplot < plot_distributions.gp

gnuplot < plot_references.gp
gnuplot < plot_selected_references.gp

ps2pdf  -dEPSCrop  distribution.eps
ps2pdf  -dEPSCrop  refs_per_year.eps
ps2pdf  -dEPSCrop  selected_refs_per_year.eps

