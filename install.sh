#!/bin/bash

# Installing required packages

#pacman -S picom
#pacman -S rofi
#pacman -S xorg-xbacklight
#pacman -S xorg-xrdb
#pacman -S feh
pacman -S imlib2
#pacman -S xorg-xsetroot
pacman -S dash
pacman -S nerd-fonts-jetbrains-mono

#yay -S polybar
#yay -S eww-git
#yay -S dwm

# Installation

cd ~/.config && git clone https://github.com/sentinm/Chadwm-Arch.git chadwm
ech "done! - Fetching chadwm repository." 

cp ~/.config/chadwm/fonts/* ~/.local/share/fonts/
echo "done! - Copying font files." 

curl -o ~/Pictures/pink_cat.png https://github.com/catppuccin/wallpapers/raw/main/minimalistic/pink-cat.png 
echo "done! - Loading wallpaper." 

mv ~/.config/chadwm/chadwm.desktop /usr/share/xsessions/
echo "done! - Creating desktop entry for chadwm."

chmod -R +x ~/.config/chadwm && chmod +x ~/Pictures/pink_cat.png && chmod +x /usr/share/xsessions/chadwm.desktop
echo "done! - Setting up permissions for all files and folders."

# Building and compiling dwm.
cd ~/.config/chadwm/chadwm

make_run () {
         CONF=~/.config/chadwm/chadwm/config.h
         if [[ -d $CONF ]]; then
		 rm -rf $CONF
		 echo "Configuration file already exists. Deleting..."
                 make install
                 echo "done! - Building dwm."
	 fi
                 make install
                 echo "done! - Building dwm."
} 

make_run

echo "done! - Installation" 
sleep 2 && exit 0
