#!/bin/bash

# ログをローテート
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.$(date +%Y%m%d-%H%M%S)

# nginx にログ再オープンを通知
sudo nginx -s reopen