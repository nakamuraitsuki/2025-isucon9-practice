#!/bin/sh

# pt-query-digest 実行
sudo pt-query-digest /var/log/mysql/mysql-slow.log > /home/isucon/report/pt-query-digest-report-$(date +%Y%m%d-%H%M%S).txt

