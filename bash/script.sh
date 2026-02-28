# create new project directory
mkdir project

# confirm that the directory was created
ls

# go in the created directory (press 'Tab' to autocomplete)
cd project

# create empty file
touch main.c

# write a simple C program in nano text editor
nano main.c

# install the GCC compiler
sudo apt install gcc

# build an executable program
gcc main.c -o program

# see the differences between simple file and an executable
ls -l

# run C program
./program

# see what's wrong with the program
cat main.c

# install vim
sudo apt install vim -y

# add new line at the end in vim
vim main.c

# rebuild a program using 'Arrow Up' to access previously used command
gcc main.c -o program

# run corrected program
./program

# press Ctrl+L to clear contents

# create source and build directories
mkdir src build

# see the differences between directories and files
ls -l

# move 'main.c' file to the source directory
mv main.c src/

# move program executable to the build directory
mv program build/

# install tree
sudo apt install tree

# see the current project structure
tree

# go to the source directory
cd src

# lets create file for remote library
touch mlab.c

# see if the file is created
ls

# install curl (Client URL)
sudo apt install curl -y

# download using curl
curl -o mlab.c https://raw.githubusercontent.com/ManfredasLamsargis/MLAB_MCU_edu_dev/main/util/mlab.c

# see the contents of downloaded file
cat mlab.c

# rename main.c to main_v1.c for versioning
mv main.c main_v1.c

# confirm that the file was renamed
ls

# create new version of the program
cp main_v1.c main_v2.c

# see the source files
ls

# see what function to use in the second version
cat mlab.c

# copy function name using Ctrl+Shift+C command from the terminal

# edit the second version
nano main_v2.c

# check if the changes are saved
head main_v2.c

# compile the program
gcc mlab.c main_v2.c -o ../build/program

# execute program from the source directory
./../build/program

# see the differences between the program different version source code
diff main_v1.c main_v2.c

# go to project root
cd ..

# see the current working directory
pwd

# see previous working directory echoing System's Environment Variable
echo $OLDPWD

# check the full project structure
tree

# search for printf function call
cat src/main_v2.c | grep "printf"

# arrow up and change from 'v2' to 'v1'
cat src/main_v1.c | grep "printf"

# lets make project's readme to display project's file structure
tree > readme.md

# see project's structure in the readme Markdown file
cat readme.md

# we want to add a comment that says when was the last time readme was checked on
date

# see the manual
man date

# see pattern of the day format
man date | grep day

# see pattern of the month format
man date | grep month

# see pattern of the year format
man date | grep year

# output formatted date (like normal Europiens)
date +%d.%m.%y

# append comment
echo "Last checked on: $(date +%d.%m.%y)" >> readme.md

# confirm changes
cat readme.md

# go one directory up
cd ..

# lets create experimental project
mkdir experimental_project

# go into experimental project's folder
cd experimental_project

# we want same source files
ln -s ../project/src/

# symlink points to the real directory
ls -l

# going to source directory
cd src

# contains same files as the project/src
ls

# yet we are inside the Experimental Project's folder
pwd

# go out of the source directory
cd ..

# creating symlink to the Project's executable
ln -s ../project/build/program

# check if the symlink was created
ls -l

# execute program
./program

# lets go the original Project's source
cd ../project/src/

# edit the source code
nano main_v2.c

# check the history how to build program from multiple source files
history | grep gcc

# rebuild the program
gcc mlab.c main_v2.c -o ../build/program

# go to Experimental Project's root directory
cd ../../experimental_project/

# run the executable
./program

# go to home directory
cd ..

# remove project directory with its contents
rm -r project/ experimental_project/

# check if it is deleted
ls

# lets create bash script
touch script.sh

# add witch shell to use, use '' to avoid bash interpreting '!' sign
echo '#!/bin/bash' > script.sh

# edit script to automate the whole process
nano script.sh

# check if the end of script is the 'cd ..'
tail script.sh

# try running script
./script.sh

# check if the script is executable
ls -l

# make script executable
chmod +x script.sh

# check if now the script has execute permissions or not
ls -l

# execute script
./script.sh

# check current state
tree

# Should look like this:
# .
# |-- experimental_project
# |   |-- program -> ../project/build/program
# |   `-- src -> ../project/src/
# |-- project
# |   |-- build
# |   |   `-- program
# |   |-- readme.md
# |   `-- src
# |       |-- main_v1.c
# |       |-- main_v2.c
# |       `-- mlab.c
# `-- script.sh

# let's install tmux for better multitasking
sudo apt install tmux -y

# start tmux session
tmux

# make new tile bellow (Ctrl+B + ")

# go tile up (Ctrl+B + Arrow Up)

# make tile to the side (Ctrl+B + %)

# resize tiles (Hold Ctrl+B + Pressing Arrow Keys)

# make one project
mkdir root_project && mv project/ experimental_project/ script.sh root_project/ && cd root_project/

# search for readme.md file
find . -name "readme.md"

# find all files of both projects and sort them by name
find . -type f | sort

# go to other tmux tile and close it using (Ctrl+B + X)

# ping microprofessors.org site
ping microprofessors.org

# install ping
sudo apt install ping

# select iputils-ping
sudo apt install iputils-ping -y

# ping microprofessors.org site to get the ip address
ping microprofessors.org

# install ssh
sudo apt install ssh -y

# connect to microprofessors.org using ip address
ssh user@<ip.ad.dr.ess>

# out of the Root Project's folder on local mashine
cd ..

# copy Root Project to remote mashine via ssh
scp -r root_project/ manlam@microprofessors.org:~

# check if Root Project appeared on the remote mashine
ls

# verify with tree if Root Project matches on local and remote mashines
tree

# run program on remote
./experimental_project/program

# ARM based chip, recompile
gcc project/src/mlab.c project/src/main_v2.c -o program

# run again on remote
./program

# run on local to see if the output is the same
./project/build/program

# logout from the remote mashine
logout

# exit the environment on local mashine
exit
