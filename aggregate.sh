#!/bin/bash

source "parameters.sh"

$SAXON big-table.xml aggregate-per-year.xsl
