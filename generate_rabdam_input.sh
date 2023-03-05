#!/bin/bash
#

ls -1 ????.cif > list
sed -e s":^:/home/murphy/doc/hewl/data/:" list | sed -e 's/cif/cif, /' | tr '\n' ' ' > line
echo "outputdir=/home/murphy/doc/hewl/data/,
batchContinue=False,
overwrite=True,
PDT=7,
windowSize=0.02,
HETATM=Remove,
proteinOrNucleicAcid=Protein,
addAtoms=,
removeAtoms=,
highlightAtoms=,
createOrigpdb=False,
createAUpdb=True,
createUCpdb=True,
createAUCpdb=True,
createTApdb=True" > inp
echo " " > space
cat line space inp > input00
rm list line inp space
