#!/bin/bash
wget "http://www.juliasets.dk/Quaternion-filer/quat02.jpg" && gsettings set org.gnome.desktop.background picture-uri file:///home/amnesia/quat02.jpg
gsettings set org.gnome.desktop.background show-desktop-icons false
