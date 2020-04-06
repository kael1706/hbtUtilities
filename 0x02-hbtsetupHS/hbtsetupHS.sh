#!/bin/bash
echo "======================="
echo "=========START========="
cd ~
echo "moving to:"
pwd
sudo apt install python-pip
sudo python2.7 -m pip install mechanize==0.3.7
sudo python2.7 -m pip install beautifulsoup4==4.6.3
git clone https://github.com/kael1706/hipposcraper.git
cd ./hipposcraper/
echo "moving to:"
pwd
/bin/bash ./setup.sh
cd ~
source .bashrc
echo "********END**********"
echo "*********************"
