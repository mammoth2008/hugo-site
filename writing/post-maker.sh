#!/bin/zsh
# 设置输入文件和输出目录
TEMPLATE_FILE="daypost.md"
OUTPUT_DIR="."

# 检查模板文件是否存在
if [[ ! -f "$TEMPLATE_FILE" ]]; then
  echo "Error: Template file $TEMPLATE_FILE not found!"
  exit 1
fi

# 提示用户选择日期
echo "请选择要创建的记录文件日期："
echo "1. 今天（默认）"
echo "2. 明天"
echo "或者输入日期：六位 YYMMDD 或 八位 YYYYMMDD"

read "?输入选项（回车=1）： " CHOICE

# 计算目标日期
if [[ -z "$CHOICE" || "$CHOICE" == "1" ]]; then
  TARGET_DATE=$(date +"%Y-%m-%d")
elif [[ "$CHOICE" == "2" || "$CHOICE" == "t" ]]; then
  TARGET_DATE=$(date -v+1d +"%Y-%m-%d")
elif [[ "$CHOICE" =~ ^[0-9]{6}$ ]]; then
  YY=${CHOICE[1,2]}
  MM=${CHOICE[3,4]}
  DD=${CHOICE[5,6]}
  TARGET_DATE="20$YY-$MM-$DD"
elif [[ "$CHOICE" =~ ^[0-9]{8}$ ]]; then
  YYYY=${CHOICE[1,4]}
  MM=${CHOICE[5,6]}
  DD=${CHOICE[7,8]}
  TARGET_DATE="$YYYY-$MM-$DD"
else
  echo "无效输入，操作取消。"
  exit 1
fi

# 日期相关变量
CURRENT_YEAR_FULL=$(date -j -f "%Y-%m-%d" "$TARGET_DATE" +"%Y")
CURRENT_YEAR_SHORT=$(date -j -f "%Y-%m-%d" "$TARGET_DATE" +"%y")
CURRENT_MONTH=$(date -j -f "%Y-%m-%d" "$TARGET_DATE" +"%m")
CURRENT_DAY=$(date -j -f "%Y-%m-%d" "$TARGET_DATE" +"%d")
DAY_OF_WEEK_SHORT=$(date -j -f "%Y-%m-%d" "$TARGET_DATE" +"%a")

FORMATTED_DATE="${TARGET_DATE} 08:00:00+08:00"
COMPACT_DATE="${CURRENT_YEAR_SHORT}${CURRENT_MONTH}${CURRENT_DAY}"
OUTPUT_FILE="${OUTPUT_DIR}/${TARGET_DATE}-${DAY_OF_WEEK_SHORT}.md"

# 检查输出文件是否存在
if [[ -f "$OUTPUT_FILE" ]]; then
  echo "Warning: Output file $OUTPUT_FILE already exists!"
  read -q "REPLY?Overwrite? (y/n) "
  echo ""
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Operation cancelled."
    exit 0
  fi
fi

# 生成文件
cat "$TEMPLATE_FILE" | \
  sed "s/title: \" [0-9]\{6\} [A-Za-z]\{3\}\"/title: \" ${COMPACT_DATE} ${DAY_OF_WEEK_SHORT}\"/" | \
  sed "s/date: [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}+[0-9]\{2\}:[0-9]\{2\}/date: ${FORMATTED_DATE}/" | \
  sed "s/lastmod: [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}+[0-9]\{2\}:[0-9]\{2\}/lastmod: ${FORMATTED_DATE}/" \
  > "$OUTPUT_FILE"

echo "Successfully created daily note file: $OUTPUT_FILE"
echo "Title date format: ${COMPACT_DATE} ${DAY_OF_WEEK_SHORT}"

