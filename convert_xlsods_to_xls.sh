#!/bin/sh

# Author:  Andre Wang
# Updated: 2 Sep 2017
# Converts all files with extension *.xls.ods
# to an .xls file
# requires soffice to be installed.

for f in *.xls.ods
do
	echo "Processing $f ..."
	name=$(echo $f | cut -f 1 -d '.').ods
	mv $f $name
	soffice --headless --convert-to xls $name --outdir converted/
done
