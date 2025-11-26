#!/bin/sh

# alp -m 用パス絞り込み配列(, 区切り)
PATHS=()

# 出力先ディレクトリを作成
mkdir -p /home/isucon/report

# alp コマンド実行
sudo alp ltsv \
  --file /var/log/nginx/access-isucari.log \
  --sort=sum -r \
  $( [ ${#PATHS[@]} -gt 0 ] && echo "-m $(IFS=,; echo "${PATHS[*]}")" ) \
  > /home/isucon/report/alp-report-$(date +%Y%m%d-%H%M%S).txt
