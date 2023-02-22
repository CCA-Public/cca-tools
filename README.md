# CCA Tools

Digital archives processing tools intended for use in [BitCurator](https://bitcurator.net/bitcurator/), an open source Ubuntu-derived digital forensics environment for digital forensics and digital archiving.

## Tools

* **[Disk Image Processor](https://github.com/CCA-Public/diskimageprocessor):** Creates ready-to-ingest SIPs from a directory of disk images and related files and a pre-populated archival description spreadsheet.   
* **[Folder Processor](https://github.com/CCA-Public/folderprocessor):** Creates ready-to-ingest SIPs from one or more directories on a local file system and a pre-populated archival description spreadsheet.  
* **[SIP Creator](https://github.com/CCA-Public/sipcreator):** Creates ready-to-ingest SIP from user-selected directories and files and a pre-populated archival description spreadsheet.  

## Installation  

### BitCurator 4.x.x

```
git clone https://github.com/CCA-Public/cca-tools && cd cca-tools
sudo ./install.sh
```

### Earlier versions of BitCurator

```
git clone https://github.com/CCA-Public/cca-tools && cd cca-tools
sudo ./install-bc2-ubuntu18.sh
```
