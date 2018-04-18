#!/bin/bash

# bitcurator setup script for testing pyqt5 cca tools
# run as sudo

# general requirements
pip3 install pyqt5
roy build -multi 0

# Download and install CCA Disk Image Processor
cd /home/bcadmin
echo "Installing Disk Image Processor..."
git clone https://github.com/timothyryanwalsh/cca-diskimageprocessor
cd /home/bcadmin/cca-diskimageprocessor
git checkout dev/pyqt5
chmod u+x install.sh
./install.sh

# Download and install CCA Folder Processor
cd /home/bcadmin
echo "Installing Folder Processor..."
git clone https://github.com/timothyryanwalsh/cca-folderprocessor
cd /home/bcadmin/cca-folderprocessor
git checkout dev/pyqt5
chmod u+x install.sh
./install.sh

# Download and install CCA SIP Creator
cd /home/bcadmin
echo "Installing SIP Creator..."
git clone https://github.com/timothyryanwalsh/cca-sipcreator
cd /home/bcadmin/cca-sipcreator
git checkout dev/pyqt5
chmod u+x install.sh
./install.sh

# Create /mnt/diskid/ directory for processing UDF and HFS disks with Disk Image Processor
mkdir /mnt/diskid

# Cleanup folders
echo "Cleaning up folders..."
rm -rf /home/bcadmin/cca-diskimageprocessor
rm -rf /home/bcadmin/cca-folderprocessor
rm -rf /home/bcadmin/dfxml-reader
rm -rf /home/bcadmin/cca-sipcreator

# Fix permissions for launchers
chmod a+x -R "/home/bcadmin/Desktop/CCA Tools"

# Echo done
echo "Finished! CCA Tools installed in /home/bcadmin/Desktop/CCA Tools."