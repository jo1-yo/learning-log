#!/bin/bash
# Jane Zhang's Daily Log Script
# 每天自动生成一个新日志模板，你可以写完后 push 上去

cd /Users/jane/Desktop/learning-log

TODAY=$(date +"%Y-%m-%d")
mkdir -p logs

LOG_FILE="logs/$TODAY.md"

# 如果今天的日志不存在，就创建一个新的模板
if [ ! -f "$LOG_FILE" ]; then
  echo "# 日记：$TODAY" > "$LOG_FILE"
  echo "" >> "$LOG_FILE"
  echo "今天我学到了：" >> "$LOG_FILE"
  echo "- " >> "$LOG_FILE"
  echo "" >> "$LOG_FILE"
  echo "今天我做了：" >> "$LOG_FILE"
  echo "- " >> "$LOG_FILE"
  echo "" >> "$LOG_FILE"
  echo "我的思考或反思：" >> "$LOG_FILE"
  echo "- " >> "$LOG_FILE"
fi

# Open the file automatically (on macOS)
open "$LOG_FILE"

echo "✅ 已创建或打开今天的日记：$LOG_FILE"
