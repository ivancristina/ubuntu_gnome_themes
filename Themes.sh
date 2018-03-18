# FOLLOW THE INSTRUCTIONS

read -p "Do you want to install OCS-url (y/n)? " OCS
if [ "$OCS" = "y" ]; then
	echo
	echo "Opening up ocs-url download page. Dowload the .deb file and install it"
	x-www-browser https://www.linux-apps.com/p/1136805/
	
	# Continue
	echo
	echo "Click to continue when you have finished"
	read -n 1
else
	echo "Nevermind. Let's continue then"
fi
echo

read -p "Do you want to install Gnome-Tweak-Tools (y/n)? " GTT
if [ "$GTT" = "y" ]; then
	echo "Installing Gnome Tweak Tools"
	sudo apt update
	sudo apt install gnome-tweak-tool
else
	echo "Nevermind. Let's continue then"
fi
echo

read -p "Do you want to install Gnome User Themes extension (y/n)? " GUTE
if [ "$GUTE" = "y" ]; then
	echo "Installing Gnome User Themes extension"
	sudo apt install gnome-shell-extensions
	echo "Opening User Theme Extension page. Go install it"
	x-www-browser https://extensions.gnome.org/extension/19/user-themes/
	
	# Continue
	echo
	echo "Click to continue when you have finished"
	read -n 1
else
	echo "Nevermind. Let's continue then"
fi
echo

read -p "Do you want to download my preferred themes? (y/n)? " THEME
if [ "$THEME" = "y" ]; then
	echo
	echo "Ok sir. I'll start with the GTK3 Themes. Click when you're ready"
	x-www-browser https://www.gnome-look.org/p/1218868/
	x-www-browser https://www.gnome-look.org/p/1013714/
	x-www-browser https://www.gnome-look.org/p/1171688/
	read -n 1

	echo "Ok, now I'll open the Gnome Shells. Press any key when you have done"
	x-www-browser https://www.gnome-look.org/p/1215571/
	x-www-browser https://www.gnome-look.org/p/1213208/
	x-www-browser https://www.gnome-look.org/p/1222078/
	read -n 1

	echo "Almost there! I'll open the Icons now. As always, click any key to continue"
	x-www-browser https://www.gnome-look.org/p/1102582/
	
	# Continue
	echo
	echo "Click to continue when you have finished"
	read -n 1
else
	echo "Nevermind. Let's continue then"
fi
echo

read -p "What about a font cache refresh (y/n)? " CACHR
if [ "$CACHR" = "y" ]; then
	echo "Refreshing font cache..."
	sudo fc-cache -fv
	
	# Continue
	echo
	echo "Click to continue when you have finished"
	read -n 1
else
	echo "Nevermind. Let's continue then"
fi
echo

read -p "Do you want to open Gnome-Tweak-Tools now (y/n)? " OpenGTT
if [ "$OpenGTT" = "y" ]; then
	echo "Nice. Opening up Gnome Tweak Tools. Return here once you'll done"
	gnome-tweak-tool
else
	echo "Nevermind. You can open it up later"
fi
# Continue
echo
echo "Your installation in now finished. Go customize!"
