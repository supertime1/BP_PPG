#!/bin/bash

while [ 1 ]
do
rsync -CaLvz physionet.org::mimic3wdb-matched/p09 WFDB/matched
    if [ "$?" = "0" ] ; then
        echo "rsync completed normally"
        exit
    else
        echo "Rsync failure. Backing off and retrying..."
    fi
done
