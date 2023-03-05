#!/bin/bash
#
# Play with batchContinue parameter

ls -1 ????.cif > list
sed -e s":^:/home/murphy/doc/hewl/data/:" list | sed -e 's/cif/cif, /' | tr '\n' ' ' > line
echo "outputdir=/home/murphy/doc/hewl/data/new/,
batchContinue=False,
overwrite=True" > inp
echo " " > space
cat line space inp > input00
rm list line inp space
