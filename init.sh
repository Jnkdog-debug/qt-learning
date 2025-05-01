#!/bin/bash

PROJECT_NAME="qt-learning"

# 创建主目录和子目录
mkdir -p $PROJECT_NAME/{docs,projects,common/{utils,widgets},build}

# 创建 README 和学习计划
cat <<EOF > $PROJECT_NAME/README.md
# Qt 学习记录

本项目用于记录我学习 Qt 框架的过程，包括代码示例、学习笔记、可复用模块等。

## 目录结构
- \`docs/\` 学习笔记（Markdown 格式）
- \`projects/\` 每个子文件夹是一个独立 Qt 示例项目
- \`common/\` 可复用的模块，如工具类、自定义控件等
- \`build/\` 编译输出目录（已在 .gitignore 中排除）

## 起步建议
1. 从 \`projects/01-hello-world\` 开始写第一个程序
2. 用 Markdown 在 \`docs/\` 中记下遇到的问题与解决办法
3. 逐步积累通用模块到 \`common/\`，提高复用率

EOF

cat <<EOF > $PROJECT_NAME/qt_learning_plan.md
# Qt 学习路线计划

## 学习目标
- 熟练使用 Qt Widgets
- 掌握信号槽机制
- 掌握 QPainter、网络、文件操作
- 学习 Qt Quick / QML（如有需要）

## 计划记录
- [ ] 第一天：安装 Qt，写第一个 Hello World
- [ ] 第二天：熟悉 signal-slot、常用控件
- [ ] ...
EOF

# 创建 .gitignore
cat <<EOF > $PROJECT_NAME/.gitignore
build/
*.o
*.obj
*.exe
*.user
*.pro.user
Makefile*
*.app
*.dll
*.so
EOF

# 提示
echo "✅ Qt 学习目录初始化完成：$PROJECT_NAME/"
