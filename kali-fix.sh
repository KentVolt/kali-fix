#!/bin/bash

#i know 777 is bad, im just lazy
chmod 777 *

apt-get install openvpn
cp /home/kali/kali-fix/vpn* /opt/.
chmod 777 /opt/vpn*
chsh -s /usr/bin/zsh
cp /home/kali/.zshrc /home/kali/.zshrc.bak
cp /root/.zshrc /root/.zshrc.bak
mv /home/kali/kali-fix/zshrc /root/.zshrc
mv /home/kali/kali-fix/zshrc /home/kali/.zshrc
cp /root/.bashrc /root/.bashrc.bak
cp /home/kali/.bashrc /home/kali/.bashrc.bak
mv /home/kali/kali-fix/bashrc-update-new /root/.bashrc
mv /home/kali/kali-fix/bashrc-update-new /home/kali/.bashrc
source /home/kali/.bashrc
source /root/.bashrc

sudo apt install -y powershell
mkdir /home/kali/.config/powershell/
mkdir /root/.config/powershell/
cp /home/kali/kali-fix/Microsoft.PowerShell_profile.ps1 /home/kali/.config/powershell/Microsoft.PowerShell_profile.ps1
cp /home/kali/kali-fix/Microsoft.PowerShell_profile.ps1 /root/.config/powershell/Microsoft.PowerShell_profile.ps1

cp /home/kali/kali-fix/vpn* /opt/.

cp /root/Downloads/lab_*.ovpn /etc/openvpn/.
cp /home/kali/Downloads/lab_*.ovpn /etc/openvpn/.
mv /etc/openvpn/lab_*.ovpn /etc/openvpn/HTB.conf
systemctl start openvpn@HTB.service
systemctl enable openvpn@HTB.service

./home/kali/kali-fix/kalhydrate-2021.sh
./home/kali/kali-fix/pimpmykali.sh --all
