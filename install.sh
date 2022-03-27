#!/bin/bash

# Installing required packages

#pacman -S picom
#pacman -S rofi
pacman -S imlib2
pacman -S xorg-xsetroot
pacman -S dash
pacman -S nerd-fonts-jetbrains-mono

#yay -S polybar
#yay -S eww-git
#yay -S dwm

# Installation

cd ~/.config && git clone https://github.com/sentinm/Chadwm-Arch.git chadwm
ech "done! - Fetching chadwm repository.

cp ~/.config/chadwm/fonts/* ~/.local/share/fonts/
echo "done! - Copying font files.

mv ~/.config/chadwm/chadwm.desktop /usr/share/xsessions/
echo "done! - Creating desktop entry for chadwm.

echo "done! - Installation" 
