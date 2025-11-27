#!/bin/bash

# ログをローテート
sudo rm /var/log/mysql/mysql-slow.log

# MySQL にログ再オープンを通知
sudo mysqladmin flush-logs
