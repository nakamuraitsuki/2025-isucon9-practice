#!/bin/sh

wget https://github.com/tkuchiki/alp/releases/download/v1.0.21/alp_linux_amd64.tar.gz

tar zxvf alp_linux_amd64.tar.gz

sudo install alp /usr/local/bin
