#!/bin/bash
echo -e "please provide filename you want to create: \c"
read -r file
echo -e "provide path for the script: \c"
read  path
touch $path/$file.sh
echo '#/bin/bash' >  $path/$file.sh
echo '#purpose: ' >> $path/$file.sh
echo '#version: ' >> $path/$file.sh
echo '#created date:' `date` >> $path/$file.sh
echo -e "provide author name: \c"
read author
#author="{author}"
echo "#author is ${author}"  >> $path/$file.sh
echo '#start writing your script' >> $path/$file.sh
