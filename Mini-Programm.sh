#!/bin/bash 
#comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > nachinstallierte_pakete.txt
echo "Du hesch d Liste mit de selber instalisierte Programm aktualisiert. Sie heisst nachinstallierte_pakete.txt "
echo "Packete aus dem normalen repo" > nachinstallierte_pakete.txt
pacman -Qe > nachinstallierte_pakete.txt &&echo "Jetzt folgen die Packete aus dem Aur" > nachinstallierte_AUR_pakete.txt &&pacman -Qm > nachinstallierte_AUR_pakete.txt


