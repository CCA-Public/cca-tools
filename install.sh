#!/bin/bash

### Script to install CCA Tools in BitCurator
# Tim Walsh - April 2018
# Run as sudo

# Install PyQt5
echo "Installing PyQt5..."
python3 -m pip install pyqt5

# Force Siegfried to make single identifications
roy build -multi 0

# Download and install CCA Disk Image Processor
cd /home/bcadmin
echo "Installing Disk Image Processor..."
git clone https://github.com/CCA-Public/diskimageprocessor
cd /home/bcadmin/diskimageprocessor
chmod u+x install.sh
./install.sh

# Download and install CCA Folder Processor
cd /home/bcadmin
echo "Installing Folder Processor..."
git clone https://github.com/CCA-Public/folderprocessor
cd /home/bcadmin/folderprocessor
chmod u+x install.sh
./install.sh

# Download and install CCA SIP Creator
cd /home/bcadmin
echo "Installing SIP Creator..."
git clone https://github.com/CCA-Public/sipcreator
cd /home/bcadmin/sipcreator
chmod u+x install.sh
./install.sh

# Create /mnt/diskid/ directory for processing UDF and HFS disks with Disk Image Processor
echo "Creating /mnt/diskid..."
if [ ! -d /mnt/diskid ]; then
  mkdir /mnt/diskid
fi

# Cleanup folders
echo "Cleaning up folders..."
rm -rf /home/bcadmin/diskimageprocessor
rm -rf /home/bcadmin/folderprocessor
rm -rf /home/bcadmin/sipcreator

# Fix permissions for launchers
chmod a+x -R "/home/bcadmin/Desktop/CCA Tools"

# Echo done
echo "Finished! CCA Tools installed in /home/bcadmin/Desktop/CCA Tools."
