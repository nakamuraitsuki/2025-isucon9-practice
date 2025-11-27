#!/bin/bash

# ログをローテート
sudo rm /var/log/nginx/access-isucari.log

# nginx にログ再オープンを通知
sudo nginx -s reopen