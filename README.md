# Xcode 15 xctemplate

修复 Xcode 15 不能创建 ObjC Category Extension 问题。

原因：Xcode 15 缺少 CategoryNSObject、ExtensionNSObject 文件模板。

解法：从旧版 Xcode 恢复对应的模板。

## 一键安装

执行脚本一键安装。

```bash
sh ./install.sh
```

## 手动安装

复制 `CategoryNSObject`、`ExtensionNSObject` 目录到 `"/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates/MultiPlatform/Source/Objective-C File.xctemplate"` 中。.