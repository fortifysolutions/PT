#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi

sudo apt-get -y update
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs

#making tools directory
mkdir ~/tools
cd ~/tools



#Installing python-pip
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py
echo "python-pip installed"

#installing go
echo "Installing Golang"
apt install golang-go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> /root/.bash_profile
echo 'export GOPATH=$HOME/go'	>> /root/.bash_profile		
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> /root/.bash_profile	
source /root/.

#Installing AWSCLI!
echo "Installing AWSCLI"
apt install -y awscli
echo "AWSCLI installed successfully!"
echo "Don't forget to set up AWS credentials!"

#installing LinkFinder
echo "Installing LinkFinder"
git clone https://github.com/GerbenJavado/LinkFinder
cd LinkFinder*
echo "Setting up LinkFinder by installing its requirements"
pip3 install -r requirements.txt
cd ~/tools/
echo "LinkFinder installed successfully"

#installing Sublist3r
echo "Installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
echo "Setting up Sublist3r by installing its requirements"
pip3 install -r requirements.txt
python3 setup.py install
cd ~/tools/
echo "Sublist3er installed successfully"

#installing The_S3_Bucketeers
echo "Installing Teh_S3_Bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo "Teh_S3_Bucketeers installed successfully"

#installing WPScan
echo "Installing WPScan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/tools/
echo "WPScan installed successfully"

#installing DirSearch
echo "Installing DirSearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "DirSearch installed successfully"

#installing LazyS3
echo "Installing LazyS3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "LazyS3 installed successfully"

#installing SQLMap
echo "Installing SQLMap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "SQLMap installed successfully"

#installing Knock
echo "Installing Knock"
git clone https://github.com/guelfoweb/knock.git
cd knock
python3 setup.py install
cd ~/tools/
echo "Installed Knock.py"
echo "Make sure you setup VirusTotal API key"

#installing NMap
echo "Installing NMap"
sudo apt-get install -y nmap
echo "NMap installed successfully"

#installing HTTProve
echo "Installing HTTProbe"
go get -u github.com/tomnomnom/httprobe 
echo "HTTProbe installed successfully"



#Installing Assetfinder
echo "Installing assetfinder"
go get -u github.com/tomnomnom/assetfinder
echo "AssetFinder installed successfully"

#installing SubFinder
echo "Installing SubFinder"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
echo "Subfinder installed successfully"

#Installing GAU
echo "Installing Get All URLs"
GO111MODULE=on go get -u -v github.com/lc/gau
echo "GAU installed successfully"

#installing QSReplace
echo "Installing QSReplace"
go get -u github.com/tomnomnom/qsreplace
echo "QSReplace installed successfully"

#installing SudoMy
echo "Installing SudoMy"
git clone https://github.com/Screetsec/Sudomy
echo "SudoMy installed successfully"

#Installing JexBoss
echo "Installing JexBoss"
cd ~/tools
git clone https://github.com/joaomatosf/jexboss
cd jexboss
echo "Setting up JexBoss by installing its requirements"
pip install -r requires.txt
echo "JexBoss installed successfully"

echo "Your "Setup" is now ready. All the best!"
echo "Have a happy and safe hacking journey ahead!"
