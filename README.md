# CCA Tools
Digital archives processing tools intended for use in [BitCurator](https://wiki.bitcurator.net/index.php?title=BitCurator_Environment), an open source Ubuntu-derived digital forensics environment for digital forensics and digital archiving.

## Tools

* **[Disk Image Processor](https://github.com/CCA-Public/diskimageprocessor):** Creates ready-to-ingest SIPs from a directory of disk images and related files and a pre-populated archival description spreadsheet.   
* **[Folder Processor](https://github.com/CCA-Public/folderprocessor):** Creates ready-to-ingest SIPs from one or more directories on a local file system and a pre-populated archival description spreadsheet.  
* **[SIP Creator](https://github.com/CCA-Public/sipcreator):** Creates ready-to-ingest SIP from user-selected directories and files and a pre-populated archival description spreadsheet.  

## Installation  
In BitCurator v1.8.0+:  
`git clone https://github.com/CCA-Public/cca-tools && cd cca-tools`  
`chmod u+x install.sh`  
`sudo ./install.sh`  

## PyQt4/5 issues
Please note that the v1.0.0 release of the CCA Tools use PyQt5 and Python 3 exclsuively. Installation of PyQt5 may cause issues with existing PyQt4 programs in BitCurator. For links PyQt4 versions of the programs that will not interfere with the functionality of the built-in BitCurator reporting tool GUIs, see the Installation section of the README for each individual repository.
