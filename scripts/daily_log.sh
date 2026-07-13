#!/bin/bash
# Jane Zhang's Daily Log Script

cd /Users/jane/Desktop/learning-log

TODAY=$(date +"%Y-%m-%d")
mkdir -p logs

LOG_FILE="logs/$TODAY.md"

if [ ! -f "$LOG_FILE" ]; then
  echo "# diary：$TODAY" > "$LOG_FILE"
  echo "" >> "$LOG_FILE"
  echo "What I learned today：" >> "$LOG_FILE"
  echo "- " >> "$LOG_FILE"
  echo "" >> "$LOG_FILE"
  echo "What I did today：" >> "$LOG_FILE"
  echo "- " >> "$LOG_FILE"
  echo "" >> "$LOG_FILE"
  echo "My reflections today：" >> "$LOG_FILE"
  echo "- " >> "$LOG_FILE"
fi

# Open the file automatically (on macOS)
open "$LOG_FILE"

echo "✅Daily log recorded：$LOG_FILE"
