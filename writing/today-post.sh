#!/bin/zsh

# 设置输入文件和输出目录
TEMPLATE_FILE="daypost.md"
OUTPUT_DIR="."

# 检查模板文件是否存在
if [[ ! -f "$TEMPLATE_FILE" ]]; then
  echo "Error: Template file $TEMPLATE_FILE not found!"
  exit 1
fi

# 获取当前日期相关信息
CURRENT_DATE=$(date +"%Y-%m-%d")
CURRENT_YEAR_FULL=$(date +"%Y")
CURRENT_YEAR_SHORT=$(date +"%y")
CURRENT_MONTH=$(date +"%m")
CURRENT_DAY=$(date +"%d")
DAY_OF_WEEK_SHORT=$(date +"%a")

# 格式化当前日期为 YYYY-MM-DD HH:MM:SS+08:00
FORMATTED_DATE=$(date +"%Y-%m-%d 08:00:00+08:00")

# 创建紧凑格式的日期用于标题 YYMMDD
COMPACT_DATE="${CURRENT_YEAR_SHORT}${CURRENT_MONTH}${CURRENT_DAY}"

# 创建新的文件名 YYYY-MM-DD-Day.md
OUTPUT_FILE="${OUTPUT_DIR}/${CURRENT_DATE}-${DAY_OF_WEEK_SHORT}.md"

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
  sed "s/title: \" [0-9]\{6\} [A-Za-z]\{3\}\"/title: \" ${COMPACT_DATE} ${DAY_OF_WEEK_SHORT}\"/" | \
  sed "s/date: [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}+[0-9]\{2\}:[0-9]\{2\}/date: ${FORMATTED_DATE}/" | \
  sed "s/lastmod: [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}+[0-9]\{2\}:[0-9]\{2\}/lastmod: ${FORMATTED_DATE}/" \
  > "$OUTPUT_FILE"

echo "Successfully created daily note file: $OUTPUT_FILE"
echo "Title date format: ${COMPACT_DATE} ${DAY_OF_WEEK_SHORT}"
