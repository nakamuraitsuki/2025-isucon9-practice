#!/bin/sh

# alp -m 用パス絞り込み配列
PATHS=(
  "/new_items/*"
  "/users/transactions.json"
  "/users/[0-9]+.json"
  "/items/*"
  "/transactions/[0-9]+.png"
  "/upload/[a-z0-9]+.jpg"
)

# 出力先ディレクトリを作成
mkdir -p /home/isucon/report

# alp コマンド実行
sudo alp ltsv \
  --file /var/log/nginx/access-isucari.log \
  --sort=sum -r \
  $( [ ${#PATHS[@]} -gt 0 ] && echo "-m $(IFS=,; echo "${PATHS[*]}")" ) \
  > /home/isucon/report/alp-report-$(date +%Y%m%d-%H%M%S).txt