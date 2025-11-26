#!/bin/bash

# ログをローテート
sudo mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.$(date +%Y%m%d-%H%M%S)

# MySQL にログ再オープンを通知
sudo systemctl kill -s HUP mysql
