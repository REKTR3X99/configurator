cd ~/DE/bspwmdotfiles

cp -r .config/compton.conf ~/.config/

if [ !-d "~/.xinitrc"]; then
	mkdir ~/.xinitrc
fi

cp -r .xinitrc/.Xmodmap ~/.xinitrc/
cp -r .xinitrc/.xinitrc ~/.xinitrc/

cp -r polybar/config ~/.config/polybar/

if [~ -d "~/.config/sxhkd"]; then
	mkdir ~/.config/sxhkd
fi

cp -r sxhkd/sxhkdrc ~/.config/sxhkd/

cp -r .Xresources ~/.config/

if [! -d "~/.config/bspwm"]; then
	mkdir ~/.config/bspwm
fi


cp -r bspwmrc ~/.config/bspwm/

cp -r wallpaper/Galaxy.jpg ~/Pictures/
cp -r wallpaper/Trees.jpg ~/Pictures/
cp -r wallpaper/snow_mountain.jpg ~/Pictures/


cd ~/.config/bspwm/

chmod +x ~/.config/bspwm/bspwmrc 
./bspwmrc

#sudo service lightdm restart
