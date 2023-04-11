#!/bin/bash

echo 'FiveM linux Installer'


apt update && apt upgrade


apt install xf tar


mkdir -p /home/FiveM/server
cd /home/FiveM/server


echo 'Geben Sie den Link zu den FiveM-Artifakten ein:'
read link
wget $link


echo 'Entpacken der FiveM-Dateien...'
tar xf fx.tar.xz
echo 'Artifacts Installiert'

rm -r fx.tar.xz

echo 'Installieren von Screen...'
apt install screen

echo 'Erfolgreich installiert! Jetzt müssen Sie in den Ordner cd /home/FiveM/server wechseln und die Datei run.sh ausführen --> ./run.sh'

cd /home/FiveM/server

screen ./run.sh

echo 'Fertig :)'
