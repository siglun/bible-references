#!/bin/bash

source "parameters.sh"

$SAXON poetry-table.xml aggregate-per-year.xsl > aggregated-poetry-references-per-year.text

$SAXON poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_1.text
$SAXON ref='1 Mos 2,7'   poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_2.text
$SAXON ref='Joh 6,63'   poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_3.text
$SAXON ref='Ordsp 4,23' poetry-table.xml aggregate-per-year-for-given-reference.xsl > selected_poetry_ref_4.text

gnuplot < plot_poetry_references.gp
gnuplot < plot_selected_poetry_references.gp 

ps2pdf  -dEPSCrop  refs_in_poetry_per_year.eps
ps2pdf  -dEPSCrop  selected_poetry_refs_per_year.eps

