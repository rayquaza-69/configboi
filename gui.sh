#!/usr/bin/env bash
mkdir ~/git
cd ~/git
sudo pacman -S base-devel python --needed --noconfirm

git clone https://aur.archlinux.org/paru-bin
git clone https://github.com/rayquaza-69/configboi
git clone https://github.com/oh-my-fish/oh-my-fish

cd ~/git/paru-bin
makepkg -sri --noconfirm

sudo pacman -S xorg-server xorg-xinit alacritty i3 htop ranger neofetch picom light pulseaudio pavucontrol alsa alsa-utils --needed --noconfirm


#paru -S polybar

mkdir ~/.config/polybar
mkdir ~/.config/alacritty
mkdir ~/.config/i3
mkdir ~/.config/neofetch
mkdir ~/.config/picom

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





