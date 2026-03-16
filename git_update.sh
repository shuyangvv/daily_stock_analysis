#!/bin/bash
cd /Users/shuyang/clawd/daily_stock_analysis
# 这里添加你需要自动更新的内容逻辑
# 暂定：如果有改动就添加并 commit
git add .
if ! git diff-index --quiet HEAD --; then
  git commit -m "Auto-update: $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
  echo "Commit and pushed successfully."
else
  echo "No changes to commit."
fi
