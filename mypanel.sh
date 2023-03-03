# Custom The Panel
# Create New And Set Options

panel() {
figlet MyPanel
printf "\n"
printf "[01] My File"
printf "\n"
printf "[02] My File"
printf "\n"
printf "[03] My File"
printf "\n"
printf "[04] My File"
printf "\n"
printf "[05] My File"
printf "\n\n"
printf "[99] Settings"
printf "\n\n"


read -p $'Select File: ' option

if [[ $option == 1 || $option == 01 ]]; then
clear
bash .file1
clear
start
elif [[ $option == 2 || $option == 02 ]]; then
clear
bash .file2
clear
start
elif [[ $option == 3 || $option == 03 ]]; then
clear
bash .file3
clear
start
elif [[ $option == 4 || $option == 04 ]]; then
clear
bash .file4
clear
start
elif [[ $option == 5 || $option == 05 ]]; then
clear
bash .file5
clear
start
elif [[ $option == 99 ]]; then
settings
else
clear
start
fi 
}

settings() {
clear
figlet MyPanel
printf "\nSetting Files Data\n\n[01] Set File1\n[02] Set File2\n[03] Set File3\n[04] Set File4\n[05] Set File5\n\n[06] Set Tool Data\n[99] Back\n\n"

read -p $'Set Data = ' sett

if [[ $sett == 1 || $sett == 01 ]]; then
nano .file1
start
elif [[ $sett == 2 || $sett == 02 ]]; then
nano .file2
start
elif [[ $sett == 3 || $sett == 03 ]]; then
nano .file3
start
elif [[ $sett == 4 || $sett == 04 ]]; then
nano .file4
start
elif [[ $sett == 5 || $sett == 05 ]]; then
nano .file5
start
elif [[ $sett == 6 || $sett == 06 ]]; then
nano mypanel.sh
start
elif [[ $sett == 99 ]]; then
start

else
clear
start
fi
}

start() {
clear
touch .file1
touch .file2
touch .file3
touch .file4
touch .file5
chmod +x mypanel.sh
chmod +x .file1
chmod +x .file2
chmod +x .file3
chmod +x .file4
chmod +x .file5
clear
panel
}

apt install figlet
clear
start
