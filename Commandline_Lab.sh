#!/bin/bash
cd ~
mkdir NTUST

cd NTUST

mkdir NTUST-me
mkdir NTUST-root

chmod 700 NTUST-me
chmod 700 NTUST-root

sudo chown root:root NTUST-root

cd NTUST-me

cp /etc/passwd .
cp passwd root-passwd

chmod 600 root-passwd
sudo chown root:root root-passwd
sudo mv root-passwd ../NTUST-root

sudo apt install python3
