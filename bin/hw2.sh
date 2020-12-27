#!/bin/bash

#: Title          : hw2.sh
#: Date           : 2020 Dec 27
#: Author         : Denis Fortict
#: Version        : 1.0
#: Description    : creaion de repertoire et de fichier executale
#: Options        : none
#: Last modified  : 2020 Dec 27 21 48 22

# create a directory called bpl inside $HOME/code/wizz7533/Bash/ProBash/Exercices/CH1/bpl.
# populate this directory with two subdirectories, bin and scripts.
# write a script to create the "Hello, World§" script, hw in bpl/bin;
# make it executable
# then execute it

mkdir -p $HOME/code/wizz7533/Bash/ProBash/Exercices/CH1/bpl
cd $HOME/code/wizz7533/Bash/ProBash/Exercices/CH1/bpl && mkdir bin scripts
echo 'printf "%s\n" "Hello, World!"' > scripts/hw.sh
chmod u+x scripts/hw.sh
./scripts/hw.sh

