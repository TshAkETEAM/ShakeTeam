#!/usr/bin/env bash
cd $HOME/ShakeTeam
install() {
rm -rf $HOME/.telegram-cli
sudo chmod +x tg
chmod +x ShakeTeam
chmod +x ts
./ts
}
get() {
rm -fr ShakeTeam.lua
rm -fr sudo.lua
wget "https://raw.githubusercontent.com/TshAkETEAM/ShakeTeam/master/ShakeTeam.lua"
lua start.lua
}
installall(){
apt update
}
if [ "$1" = "ins" ]; then
install
fi
if [ "$1" = "get" ]; then
get
fi
installall
cd ..
rm -rf luarocks*
cd ShakeTeam
rm -rf luarocks*
lua start.lua


