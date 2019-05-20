#!/bin/bash

# simple uninstaller script
echo "+---- ---- ---- ---- ----+"
echo "| Removing globalprotect |"
echo "|     This may need      |"
echo "|     your password      |"
echo "+---- ---- ---- ---- ----+\n"
sudo apt remove globalprotect -y
sudo apt autoremove -y
sudo apt autoclean -y