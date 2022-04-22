### Huge thanks to theGuildHall, Dewalt-arch, and Knightsbr1dge for their githubs, 99.9% of this is from their githubs and I would highly reccomend looking at the original content.

## Updating the 'Panels'
On the top panel, right click one of the three system monitors graphs (the ones showing your 'process', 'memory', and 'network'). Select "Remove from Panel".

Next, on the top panel, right click the "shell" icon (the one that looks like a bash prompt). Select "Properties".

NOTE:You will see the "Launcher Properties" pop up. This is where you can really customize your ParrotOS. You don't need to follow what Hack the Box did. You can add ANY script you want, any command, icon, etc, to your OS! This is how you can truly personalize it.
Click on the bash icon to the left, and a window should pop up asking you to select an icon. Navigate to /usr/share/icons/htb/ and choose bash.svg.

### To install sublime text...
sudo cp -R ~/gitclones/pwnbox/sublime_text /opt

Then on the top panel, right click on the "notepad" and select "properties". In the "name", change it to "Sublime", and then under "command", change it to "/opt/sublime_text/sublime_text %F". Then click on the icon to the left, and change it to "/opt/icons/sublime-text.png"

### To get the 'ping panel'
Right click on a blank space on the top panel and choose "Add to Panel". In the search bar, type "command", select "command" then click "add". The current time should populate on the top panel. Right click on it, and in the command section, paste in /opt/vpnpanel.sh, with an interval of "5" seconds. It should show "HTB VPN: Disconnected" unless you are on the vpn.

### To get the "processor" menu
Right click on a blank space on the top panel and search for "System monitor". Select it and add it. Right click on the little black box that appeared, select "preferences" and under "System monitor width", update it to "135" pixels, and updated the field below it to "100" milliseconds.

### 'Plank', the MacOS bar on the bottom
Start by deleting the bottom panel by right clicking and selecting delete this panel.

sudo apt install plank -y

Once Plank is installed, on the top bar, go to "System -> Preferences -> Personal -> Startup Application". Right hand side, select "Add" and fill in the values:

Name: Plank
Command: plank
Delay: 0
Plank will now startup whenever you reboot your machine.
