#!/usr/bin/env bash
# this is the version without sudo of hbtsetupHS.sh
echo "======================="
echo "=========START========="
cd ~
echo "moving to:"
pwd
{
  apt install python-pip
} || {
  echo "***ERROR***"
  echo -e "error trying to install python-pip, try installing the package manually. Try checking that you have pip installed, for python 2.7. Or try the same command without sudo, i.e:\n apt install python-pip"
  exit 1
}
{
  python2.7 -m pip install mechanize==0.3.7
} || {
  echo "***ERROR***"
  echo -e "error trying to install mechanize v0.3.7, try installing the package manually. Try checking that you have pip installed, for python 2.7. Or try the same command without sudo, i.e:\n python2.7 -m pip install mechanize==0.3.7"
  exit 1
}
{
  python2.7 -m pip install beautifulsoup4==4.6.3
} || {
  echo "***ERROR***"
  echo -e "error trying to install beautifulsoup4 v4.6.3, try installing the package manually. Try checking that you have pip installed, for python 2.7. Or try the same command without sudo, i.e:\n python2.7 -m pip install beautifulsoup4==4.6.3"
  exit 1
}
git clone https://github.com/kaelwebdev/hipposcraper.git || echo -e "failed to download git clone repository https://github.com/kaelwebdev/hipposcraper.git, try replacing the link with https://github.com/kai-dg/hipposcraper.git, in the hbtsetupHS.sh file"
cd ./hipposcraper/
echo "moving to:"
pwd
/bin/bash ./setup.sh
cd ~
source ~/.bashrc
echo "********END**********"
echo "*********************"
echo -e "Use:\nsource ~/.bashrc\n to make sure changes have been applied"
