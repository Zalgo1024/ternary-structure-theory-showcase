#!/usr/bin/env bash
# 把主页面同步到发布目录。
# GitHub Pages 与 Netlify 都托管 docs/ 里的这一份，改完主文件后跑一下这个。
set -euo pipefail
cd "$(dirname "$0")"

SRC="三元结构理论 展示页.html"
DST="docs/index.html"

[ -f "$SRC" ] || { echo "找不到主文件：$SRC"; exit 1; }
mkdir -p docs
cp "$SRC" "$DST"

if cmp -s "$SRC" "$DST"; then
  echo "已同步：$DST"
else
  echo "同步失败，两份内容不一致"; exit 1
fi
