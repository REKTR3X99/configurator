cd ~

mkdir DE

cd DE

echo "Downloading bspwm"
git clone https://github.com/baskerville/bspwm.git

echo "Downloading sxhkd"
git clone https://github.com/baskerville/sxhkd.git

echo "Downloading custom dotfiles"
git clone https://github.com/REKTR3X99/bspwmdotfiles.git

echo "Installing vim"
apt-get -y install vim

echo "Installing polybar"
apt-get -y install polybar

echo "Installing feh"
apt-get -y install feh

echo "Making polybar config director"
mkdir ~/.config/polybar

echo "installing libraries"
apt-get -y install xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev

echo "Installing gcc and make"
apt-get -y install gcc make

echo "Installing compton"
apt-get -y install compton


#compiling bspwm
cd bspwm

make

make install

#copying bspwm desktop to xsessions
sudo cp -f contrib/freedesktop/bspwm.desktop /usr/share/xsessions/


#compiling sxhkd
cd ..

cd sxhkd 

make 

make install


#executing configuration 
sudo sh ./bspwm_config.sh

