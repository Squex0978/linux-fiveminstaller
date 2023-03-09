#!/bin/bash

echo 'FiveM LINUX AutoInstaller'

# Update und Upgrade des Betriebssystems
apt update && apt upgrade

# Installation von xf und tar
apt install xf tar

# Erstellen des Serververzeichnisses
mkdir -p /home/FiveM/server
cd /home/FiveM/server

# Herunterladen der FiveM-Artifakte
echo 'Geben Sie den Link zu den FiveM-Artifakten ein:'
read link
wget $link

# Entpacken der FiveM-Dateien
echo 'Entpacken der FiveM-Dateien...'
tar xf fx.tar.xz
echo 'Artifacts Installiert'

# Entfernen der heruntergeladenen Datei
rm -r fx.tar.xz

# Herunterladen und Ausführen der start.sh-Datei
cd /home/FiveM/server/
echo 'Runterladen der start.sh...'
wget https://raw.githubusercontent.com/citizenfx/cfx-server-data/master/run.sh
chmod +x run.sh

# Installation von Screen
echo 'Installieren von Screen...'
apt install screen

echo 'Erfolgreich installiert! Jetzt müssen Sie in den Ordner cd /home/FiveM/server wechseln und die Datei run.sh ausführen --> ./run.sh'

cd /home/FiveM/server

screen ./run.sh

echo 'Fertig :)'
