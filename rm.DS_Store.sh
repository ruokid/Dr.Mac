#!/bin/sh
#
# Remove all .DS_Store file
# author: cx
# 
# 禁止在连接的储存中创建 .DS_Store 文件
# defaults write com.apple.desktopservices DSDontWriteNetworkStores true
#

# Terminal work directory
twd=$(pwd)
# Script work directory
swd=$(cd $(dirname $0); pwd)

find ${1:-$swd} \
-path ~/Library -prune -o \
-name ".DS_Store" \
-exec rm {} \; \
-exec echo {} removed \;

# echo All .DS_Store have been removed"
echo "\033[32mAll .DS_Store have been removed\033[0m"
