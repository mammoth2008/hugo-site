#!/bin/zsh

# 设置输入文件和输出目录
TEMPLATE_FILE="weeklypost.md"
OUTPUT_DIR="."

# 检查模板文件是否存在
if [[ ! -f "$TEMPLATE_FILE" ]]; then
  echo "Error: Template file $TEMPLATE_FILE not found!"
  exit 1
fi

# 获取当前日期
CURRENT_DATE=$(date +"%Y-%m-%d")
CURRENT_YEAR_FULL=$(date +"%Y")
CURRENT_YEAR_SHORT=$(date +"%y")

# 获取当前是星期几 (0-6，其中0为周日，6为周六)
DAY_OF_WEEK=$(date +"%w")

# 计算目标周六的日期
# 如果今天是周六(6)，使用今天的日期
# 如果不是周六，使用上周六的日期
if [[ $DAY_OF_WEEK -eq 6 ]]; then
  # 今天是周六，使用当前日期
  TARGET_SATURDAY_DATE=$CURRENT_DATE
else
  # 今天不是周六，计算上周六的日期
  # 计算到上周六的天数差：(今天星期几 + 1) % 7
  DAYS_TO_LAST_SATURDAY=$(((DAY_OF_WEEK + 1) % 7))
  
  # 在 macOS 上计算日期
  TARGET_SATURDAY_DATE=$(date -v -${DAYS_TO_LAST_SATURDAY}d +"%Y-%m-%d")
fi

# 获取目标周六的年份信息
TARGET_YEAR_FULL=$(date -j -f "%Y-%m-%d" "$TARGET_SATURDAY_DATE" +"%Y")
TARGET_YEAR_SHORT=$(date -j -f "%Y-%m-%d" "$TARGET_SATURDAY_DATE" +"%y")

# 计算目标周六所在的周数（使用 macOS Calendar 的方法）
# macOS Calendar 通常使用 %U 格式（周日为一周的第一天）
# 注意：这里使用 -j -f 来解析特定日期
TARGET_WEEK_NUM=$(date -j -f "%Y-%m-%d" "$TARGET_SATURDAY_DATE" +"%U")

# 格式化目标周六的日期为 YYYY-MM-DD HH:MM:SS+08:00
TARGET_FORMATTED_DATE="${TARGET_SATURDAY_DATE} 08:00:00+08:00"

# 创建新的文件名（使用目标周六的年份和周数）
OUTPUT_FILE="${OUTPUT_DIR}/${TARGET_YEAR_SHORT}w${TARGET_WEEK_NUM}-review.md"

# 检查输出文件是否已存在
if [[ -f "$OUTPUT_FILE" ]]; then
  echo "Warning: Output file $OUTPUT_FILE already exists!"
  read -q "REPLY?Overwrite? (y/n) "
  echo ""
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Operation cancelled."
    exit 0
  fi
fi

# 读取模板文件并替换相关内容
cat "$TEMPLATE_FILE" | \
  sed "s/title: \"title [0-9]\{4\} Week [0-9]\{2\} 回顾\"/title: \"title ${TARGET_YEAR_FULL} Week ${TARGET_WEEK_NUM} 回顾\"/" | \
  sed "s/date: [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}+[0-9]\{2\}:[0-9]\{2\}/date: ${TARGET_FORMATTED_DATE}/" | \
  sed "s/lastmod: [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}+[0-9]\{2\}:[0-9]\{2\}/lastmod: ${TARGET_FORMATTED_DATE}/" \
  > "$OUTPUT_FILE"

echo "Successfully created weekly review file: $OUTPUT_FILE"
echo "This is the review file for week ${TARGET_WEEK_NUM} of ${TARGET_YEAR_FULL}"
echo "File week number and date are based on Saturday ${TARGET_SATURDAY_DATE}"
