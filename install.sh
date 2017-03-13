#!/bin/bash

### Bitcurator setup script
# Tim Walsh - Dec 2017
# Run as sudo

# Install PyQt4
echo "Installing PyQt4..."
sudo apt-get install python-qt4

# Force Siegfried to make single identifications
roy build -multi 0

# Download and install CCA Disk Image Processor
cd /home/bcadmin
echo "Installing Disk Image Processor..."
git clone https://github.com/timothyryanwalsh/cca-diskimageprocessor
cd /home/bcadmin/cca-diskimageprocessor
sudo chmod u+x install.sh
sudo ./install.sh

# Download and install CCA Folder Processor
cd /home/bcadmin
echo "Installing Folder Processor..."
git clone https://github.com/timothyryanwalsh/cca-folderprocessor
cd /home/bcadmin/cca-folderprocessor
sudo chmod u+x install.sh
sudo ./install.sh

# Download and install CCA SIP Creator
cd /home/bcadmin
echo "Installing SIP Creator..."
git clone https://github.com/timothyryanwalsh/cca-sipcreator
cd /home/bcadmin/cca-sipcreator
sudo chmod u+x install.sh
sudo ./install.sh

# Download and install DFXML Reader
cd /home/bcadmin
echo "Installing DFXML Reader"
git clone https://github.com/timothyryanwalsh/dfxml-reader
cd /home/bcadmin/dfxml-reader
sudo chmod u+x install.sh
sudo ./install.sh

# Create /mnt/diskid/ directory for processing UDF and HFS disks with Disk Image Processor
sudo mkdir /mnt/diskid

# Cleanup folders
echo "Cleaning up folders..."
sudo rm -rf /home/bcadmin/brunnhilde-gui
sudo rm -rf /home/bcadmin/cca-diskimageprocessor
sudo rm -rf /home/bcadmin/cca-folderprocessor
sudo rm -rf /home/bcadmin/dfxml-reader
sudo rm -rf /home/bcadmin/cca-sipcreator

# Echo done
echo "Finished! CCA Tools installed in /home/bcadmin/Desktop/CCA Tools."
