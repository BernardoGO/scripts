#Python3 PIP
sudo apt-get --assume-yes install python3-pip

#Automake and Make
sudo apt-get --assume-yes install automake make

#Git
sudo apt-get --assume-yes install git
git config --global user.email "bernardo.godinho.oliveira@gmail.com"
git config --global user.name "BernardoGO"

#Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get --assume-yes install ./google-chrome*.deb

#Terminator
sudo apt-get --assume-yes install terminator

#VSCode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get --assume-yes install code

#Spotify
sudo snap install spotify

#Discord
sudo snap install discord

#Docker
sudo apt-get --assume-yes install docker.io

#Python packages
yes | sudo pip3 install argparse
yes | sudo pip3 install matplotlib
yes | sudo pip3 install keras
yes | sudo pip3 install numpy
yes | sudo pip3 install selenium
yes | sudo pip3 install pandas
yes | sudo pip3 install adjusttext
yes | sudo pip3 install gym
yes | sudo pip3 install gym[atari]
yes | sudo pip3 install jupyter
yes | sudo pip3 install tensorflow-gpu
yes | sudo pip3 install sklearn
yes | sudo pip3 install opencv-python
yes | pip install jupyterlab --user

#GNOME Exts/Apps
sudo apt-get --assume-yes install gnome-tweak-tool

#Bluetooth audio indicator
sudo apt-add-repository ppa:yktooo/ppa -y
sudo apt-get --assume-yes install indicator-sound-switcher

#VLC
sudo apt-get --assume-yes install vlc

#Graphics and Video editing
sudo apt-get --assume-yes install gimp
sudo apt-get --assume-yes install inkscape
#sudo apt-get --assume-yes install davinci-resolve


#####CONFIGS

#Dash to Dock cicle windows
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'cycle-windows'
#Hide mounts in DashToDock
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false


#gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'google-chrome.desktop']"

gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'terminator.desktop', 'org.gnome.Nautilus.desktop', 'spotify_spotify.desktop']"

#####SCRIPTS
sudo echo 'ntfsfix /dev/sda1' > /bin/hdfix
sudo chmod +x /bin/hdfix






