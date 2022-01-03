#!/usr/bin/env bash
mkdir ~/git
cd ~/git
git clone https://aur.archlinux.org/paru-bin
git clone https://github.com/rayquaza-69/configboi
git clone https://github.com/oh-my-fish/oh-my-fish

cd ~/git/paru-bin
makepkg -sri

sudo pacman -S xorg-server xorg-xinit alacritty i3 htop ranger neofetch picom light pulseaudio pavucontrol alsa alsa-utils

paru -S polybar

cp ~/git/configboi/config-i3 ~/.config/i3/config
cp ~/git/configboi/config-polybar ~/.config/polybar/config
cp ~/git/configboi/alacritty.yml ~/.config/alacritty.yml
cp ~/git/configboi/picom.conf ~/.config/picom/picom.conf
cp ~/git/configboi/launch.sh ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/launch.sh
cp ~/git/configboi/config.conf ~/.config/neofetch/config.conf
cp ~/git/configboi/fish_variables ~/.config/fish/
cp ~/git/configboi/config.fish ~/.config/fish/

cd ~/git/oh-my-fish
bin/install --offline
omf install zish
cp ~/git/configboi/fish_prompt.fish ~/.local/share/omf/themes/zish/functions/fish_prompt.fish




