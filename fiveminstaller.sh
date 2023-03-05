#!/bin/bash

echo 'FiveMinstaller'

# Update und Upgrade des Betriebssystems
apt update
apt upgrade

# Installation von xf und tar
apt install xf tar

# Erstellen des Serververzeichnisses
mkdir -p /home/FiveM/server
cd /home/FiveM/server

# Herunterladen und Entpacken der FiveM-Dateien
wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/6298-d2bf75ac686195d6ee08f3c1e906d3c6e36640f1/fx.tar.xz
tar xf fx.tar.xz
echo 'Artifacts Installiert'

# Entfernen der heruntergeladenen Datei
rm -r fx.tar.xz

# Herunterladen und AusfÃ¼hren der start.sh-Datei
cd /home/FiveM/server/
echo 'Runterladen der run.sh'

# Installation von Screen
echo 'Installieren vom Screen'
apt install screen


echo 'Erfolgreich installiert, Jetzt Must du in den Ordner cd /home/FiveM/server und die datei run.sh ausfÃ¼hren --> ./run.sh'

cd /home/FiveM/server

screen ./run.sh

echo 'Done:)'



