#!/bin/bash

# ログをローテート
sudo rm /var/log/nginx/access.log

# nginx にログ再オープンを通知
sudo nginx -s reopen