#!/bin/bash

# ----- Set up directories -----

if [[ -d "/usr/bin/pip" ]]
then
    echo "Pip directory already exists! Skipping..."
else
mkdir /usr/bin/pip;
fi

# ----- Install packages and update/upgrade-----
apt-get update && apt-get upgrade -y
apt-get install mingw-w64 -y
apt-get install pure-ftpd -y
apt-get install shellter -y
apt-get install rinetd -y
apt-get install gcc-9-base libgcc-9-dev libc6-dev -y
apt-get install terminator -y
apt-get install seclists -y
apt-get install steghide -y
apt-get install stegcracker -y
apt-get install rlwrap -y
apt-get install bloodhound neo4j -y
apt-get update && apt-get upgrade -y

# ----- Tidy up -----
apt autoremove -y

# ----- Clone git repositories -----
cd /usr/bin/;
git clone https://github.com/pentestmonkey/windows-privesc-check.git;
git clone https://github.com/21y4d/nmapAutomator;
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git;
git clone https://github.com/rapid7/ssh-badkeys.git;
git clone https://github.com/samratashok/nishang.git;
git clone https://github.com/huntergregal/mimipenguin.git;
git clone https://github.com/DominicBreuker/pspy.git;
git clone https://github.com/OWASP/joomscan.git;
git clone https://github.com/CoreSecurity/impacket.git;
git clone https://github.com/maurosoria/dirsearch.git;
git clone https://github.com/jondonas/linux-exploit-suggester-2.git;
git clone https://github.com/TsukiCTF/Lovely-Potato.git;
git clone https://github.com/worawit/MS17-010.git;
git clone https://github.com/Sysinternals/sysinternals.git;
git clone https://github.com/codingo/Reconnoitre.git;
git clone https://github.com/ropnop/kerbrute.git;
git clone https://github.com/ivan-sincek/php-reverse-shell.git;
git clone https://github.com/OJ/gobuster.git;
git clone https://github.com/trustedsec/unicorn;
git clone https://github.com/EnableSecurity/wafw00f;
git clone https://github.com/the-useless-one/pywerview;
git clone https://github.com/r4wd3r/RID-Hijacking;
git clone https://github.com/NytroRST/NetRipper;
git clone https://github.com/orlyjamie/mimikittenz;
git clone https://github.com/klsecservices/Invoke-Vnc;
git clone https://github.com/danielbohannon/Invoke-Obfuscation;

# ----- Setup bad Reconnoitre ----
cd /usr/bin/Reconnoitre/;
python3 setup.py install;

# ----- Set executable permissions on git repos -----
chmod +x /usr/bin/nmapAutomator/nmapAutomator.sh

# ----- Set up Pip Installer -----
cd /usr/bin/pip;
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py;
python3 get-pip.py;

# ----- Pip Install Respositories -----
pip install pycryptodome;

# ---- Install Impacket ----
cd /usr/bin/impacket;
pip3 install .;
python3 setup.py install;

# ---- Install Dirsearch Requirements ----
cd /usr/bin/dirsearcher;
pip3 install -r requirements.txt;

# ----- Set up Lolcat -----
if [[ -d "/usr/bin/lolcat" ]]
then
    echo "Lolcat directory already exists! Skipping..."
else
mkdir /usr/bin/lolcat;
fi

cd /usr/bin/lolcat;
wget https://github.com/busyloop/lolcat/archive/master.zip;
unzip master.zip;
cd lolcat-master/bin;
gem install lolcat;
