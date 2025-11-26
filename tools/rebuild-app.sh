#!/bin/bash

cd ~/isucari/webapp/go
make all
sudo systemctl restart isucari.golang.service