#!/bin/bash
echo "======================="
echo "=========START========="
cd ~
echo "moving to:"
pwd
sudo apt install python-pip
sudo python2.7 -m pip install mechanize
sudo python2.7 -m pip install beautifulsoup4
git clone https://github.com/kael1706/hipposcraper.git
cd ./hipposcraper/
echo "moving to:"
pwd
/bin/bash ./setup.sh
source .bashrc
echo "********END**********"
echo "*********************"
