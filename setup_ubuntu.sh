read -p "Setup GitHub credentials? [Y/n]" -n 1 -r configgithub
echo  
if [[ $configgithub =~ ^[Nn]$ ]]
then
    echo "GitHub credentials not defined."
else
    read -p "Enter your GitHub Email [Default: bernardo.godinho.oliveira@gmail.com]: " github_email
    github_email=${name:-bernardo.godinho.oliveira@gmail.com}
    read -p "Enter your GitHub Username [Default: BernardoGO]: " github_user
    github_user=${name:-BernardoGO}

    echo "Setting GitHub Email to: ${github_email} and Username to: ${github_user}"     
fi


sudo apt-get --assume-yes install build-essential libgtk-3-dev
sudo apt-get --assume-yes install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
sudo apt-get --assume-yes install curl wget


#Downloads and installs latest version of Anaconda3
latestVer=$(curl 'https://repo.anaconda.com/archive/' | grep -oP 'href="Anaconda3-\K[0-9]+\.[0-9]+' | sort -t. -rn -k1,1 -k2,2 -k3,3 | head -1)
curl "https://repo.anaconda.com/archive/Anaconda3-${latestVer}-Linux-x86_64.sh" > /tmp/install_anaconda.sh
bash /tmp/install_anaconda.sh -b -p
echo 'export PATH="/home/${USER}/anaconda3/bin:$PATH"' >> ~/.bashrc 



#Python3 PIP
sudo apt-get --assume-yes install python3-pip

#Automake and Make
sudo apt-get --assume-yes install automake make

#Git
sudo apt-get --assume-yes install git
if [[ $configgithub =~ ^[Nn]$ ]]
then
    echo "Skipping GitHub Config"
else
    git config --global user.email ${github_email}
    git config --global user.name ${github_user}
fi

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
yes | pip3 install argparse --user
yes | pip3 install matplotlib --user
yes | pip3 install keras --user
yes | pip3 install numpy --user
yes | pip3 install selenium --user
yes | pip3 install pandas --user
yes | pip3 install adjusttext --user
yes | pip3 install gym --user
yes | pip3 install gym[atari] --user
yes | pip3 install jupyter --user
yes | pip3 install tensorflow-gpu --user
yes | pip3 install sklearn --user
yes | pip3 install opencv-python --user
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

sudo wget -O /usr/bin/set_keybindings.py https://raw.githubusercontent.com/BernardoGO/scripts/master/gnome/set_keybindings.py
sudo chmod +x /usr/bin/set_keybindings.py

set_keybindings.py 'Open Nautilus' 'nautilus' '<Super>e'  
set_keybindings.py 'Open Spotify' 'spotify' '<Super>w'  
set_keybindings.py 'Open Chrome' 'google-chrome' '<Super>c'  

#Script to run NTFSFIX on SDA1
sudo echo -e "ntfsfix /dev/sda1" | sudo tee "/usr/bin/hdfix"
sudo chmod +x /usr/bin/hdfix

sudo wget -O /usr/bin/clock_fix https://raw.githubusercontent.com/BernardoGO/scripts/master/clock/clock_fix
sudo chmod +x /usr/bin/clock_fix

sudo wget -O /usr/bin/clock_set https://raw.githubusercontent.com/BernardoGO/scripts/master/clock/clock_set
sudo chmod +x /usr/bin/clock_set

sudo wget -O /usr/bin/clock_set https://raw.githubusercontent.com/BernardoGO/scripts/master/nvidia/monTemp
sudo chmod +x /usr/bin/monTemp






