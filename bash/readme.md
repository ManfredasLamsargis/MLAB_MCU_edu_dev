# Bash basics
## Environment setup
Build the workspace container from the image:
```bash
docker build -t ubuntu-bash .
```
Run the container to enter the workspace:
```bash
docker run -it --rm -h mlab ubuntu-bash:latest
```
## Commands covered in the lecture
```
&&
>
>>
|
$(...)
$ENV_VARS
apt
cat
cd
chmod
cp
curl
date
diff
echo
exit
find
gcc
grep
head
history
ln
logout
ls
man
mkdir
mv
nano
ping
pwd
rm
scp
sort
ssh
sudo
tail
tmux
touch
tree
vim
```