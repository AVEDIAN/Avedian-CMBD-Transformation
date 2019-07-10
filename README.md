# CMBD-Transformation
Script sh for AVEDIAN data platform.
Takes old CMBD format as input and leaves new files for AVEDIAN data platform.

## Dependencies
- awk
- gsub
- dos2unix
- pv
- git

## Mac OS
```bash
#Install Brew from https://brew.sh
brew install dos2unix
brew install pv
git clone https://github.com/n0v4c4n3/CMBD-Transformation
cd CMBD-Transformation
sh Conversion.sh
```

## Ubuntu 
```bash
sudo apt-get install dos2unix pv
git clone https://github.com/n0v4c4n3/CMBD-Transformation
cd CMBD-Transformation
sh Conversion.sh
```

## Windows 
```bash
#Enable WSL on Windows 10 
#Install Ubuntu from Microsoft Store
#Log in to Ubuntu terminal
sudo apt-get install dos2unix pv
git clone https://github.com/n0v4c4n3/CMBD-Transformation
cd CMBD-Transformation
sh Conversion.sh
```

## Usage
![Demo](https://github.com/n0v4c4n3/CMBD-Transformation/blob/master/Demo%20conversion.gif?raw=true)

## Links
- [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
- [Brew.io](https://brew.sh)
- [Git](https://git-scm.com/downloads)
