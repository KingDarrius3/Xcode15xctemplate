#!/bin/bash

# 定义源目录数组和目标目录
SOURCE_DIRS=("ExtensionNSObject" "CategoryNSObject")
TARGET_DIR="/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates/MultiPlatform/Source/Objective-C File.xctemplate"

# 检查目标目录是否存在
if [ ! -d "$TARGET_DIR" ]; then
    echo "目标目录 $TARGET_DIR 不存在"
    exit 1
fi

# 遍历源目录数组并进行拷贝操作
for DIR in "${SOURCE_DIRS[@]}"; do
    if [ ! -d "$DIR" ]; then
        echo "源目录 $DIR 不存在"
        exit 1
    fi
    cp -r "$DIR" "$TARGET_DIR"
done

echo "拷贝完成，请重新启动 Xcode。"