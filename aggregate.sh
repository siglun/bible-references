#!/bin/bash

source "parameters.sh"

$SAXON big-table.xml aggregate-per-year.xsl > aggregated-references-per-year.text

