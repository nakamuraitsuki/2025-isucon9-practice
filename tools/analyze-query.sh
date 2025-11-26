#!/bin/sh

# 出力先ディレクトリを作成
mkdir -p /home/isucon/report

# pt-query-digest 実行
sudo pt-query-digest /var/log/mysql/mysql-slow.log > /home/isucon/report/pt-query-digest-report-$(date +%Y%m%d-%H%M%S).txt

