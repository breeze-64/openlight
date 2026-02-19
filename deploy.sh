#!/bin/bash
set -e

echo "🚀 开始部署 OpenLight 博客..."

cd "$(dirname "$0")"

# 切换到 SSH 方式（需要先配置 SSH key）
git remote set-url origin git@github.com:breeze-64/openlight.github.io.git

# 推送
echo "📤 推送到 GitHub..."
git push -u origin main

echo "✅ 推送完成！"
echo "🌐 几分钟后访问: https://breeze-64.github.io"
