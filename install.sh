#!/bin/bash

### Script to install CCA Tools in BitCurator 4/Ubuntu 22
# Tessa Walsh - 2023
# Run as sudo

# Install PyQt5
echo "Installing PyQt5..."
python3 -m pip install pyqt5

# Force Siegfried to make single identifications
roy build -multi 0

cd /home/bcadmin

# Download and install CCA Disk Image Processor
echo "Installing Disk Image Processor..."
git clone https://github.com/CCA-Public/diskimageprocessor && \
  cd diskimageprocessor && \
  sudo chmod +x install.sh && \
  sudo ./install.sh && \
  cd /home/bcadmin && \
  rm -rf diskimageprocessor

# Download and install CCA Folder Processor
echo "Installing Folder Processor..."
git clone https://github.com/CCA-Public/folderprocessor && \
  cd folderprocessor && \
  sudo chmod +x install.sh && \
  sudo ./install.sh && \
  cd /home/bcadmin && \
  rm -rf folderprocessor

# Download and install CCA SIP Creator
echo "Installing SIP Creator..."
git clone https://github.com/CCA-Public/sipcreator && \
  cd sipcreator && \
  sudo chmod +x install.sh && \
  sudo ./install.sh && \
  cd /home/bcadmin && \
  rm -rf sipcreator

# Create /mnt/diskid/ directory for processing UDF and HFS disks with Disk Image Processor
if [ ! -d /mnt/diskid ]; then
  echo "Creating /mnt/diskid..."
  mkdir /mnt/diskid
fi

# Echo done
echo "Finished! CCA Tools installed and ready to launch from Applications menu."
