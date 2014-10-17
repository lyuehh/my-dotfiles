#!/bin/sh

mkdir ~/.pip/
cp ./pip.conf ~/.pip/

sudo easy_install pip
sudo pip install MySQL-python
sudo pip install "Django==1.2"
sudo pip install PIL
sudo pip install tornado

sudo easy_install readline
sudo pip install ipython
sudo pip install csvkit
sudo pip install cssselect lxml
sudo pip install flask
sudo pip install pygments

# Sphinx Twisted
# sudo pip install pyzmq matplotlib


## pip源
# pip install --index-url http://pypi.v2ex.com/ -U ibmm2gv

sudo pip install python-virtualenv
