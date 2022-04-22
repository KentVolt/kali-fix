#!/bin/bash

git clone https://github.com/KentVolt/kali-fix.git
cd kali-fix
cp vpn* /opt/.
chsh -s /usr/bin/zsh
cp ~/.zshrc ~/.zshrc.bak
mv zshrc ~/.zshrc
cp ~/.bashrc ~/.bashrc.bak
mv bashrc-update-new ~/.bashrc
source ~/.bashrc
sudo apt install -y powershell
mkdir ~/.config/powershell/
cp Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1
cp vpn* /opt/.
sudo ./hydrate-2021.sh
sudo ./pimpmykali.sh --all
