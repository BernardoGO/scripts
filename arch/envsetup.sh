sudo pacman -S --noconfirm yaourt
sudo pacman -S --noconfirm tk
sudo pacman -S --noconfirm code
sudo pacman -S --noconfirm terminator
yes | sudo pip install matplotlib
yes | sudo pip install keras
yes | sudo pip install numpy
yes | sudo pip install selenium
yes | sudo pip install adjusttext

#Discord
gpg --recv-keys --keyserver hkp://pgp.mit.edu 0FC3042E345AD05D
yaourt -S --noconfirm discord

#Spotify
yaourt -S --noconfirm spotify 


yaourt -S --noconfirm automake
yaourt -S --noconfirm make

sudo pacman -S --noconfirm alsa-tools
yaourt -S --noconfirm init-headphone
#acpi_enforce_resources=lax
yaourt -S --noconfirm grub-customizer


yaourt -S --noconfirm vlc
yaourt -S --noconfirm gimp

yaourt -S --noconfirm inkscape
yaourt -S --noconfirm davinci-resolve


yaourt -S --noconfirm ttf-ms-fonts

yaourt -S --noconfirm git
git config --global user.email "bernardo.godinho.oliveira@gmail.com"
git config --global user.name "BernardoGO"


sudo echo 'tee /proc/acpi/bbswitch <<<ON' > /bin/nvidia-on
sudo chmod +x /bin/nvidia-on
sudo echo 'tee /proc/acpi/bbswitch <<<ON' > /bin/cudaon
sudo chmod +x /bin/cudaon

yaourt -S --noconfirm audacity

yes | sudo pip3 install gym
yes | sudo pip3 install gym[atari]
yes | sudo pip3 install argparse
