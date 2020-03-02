#!/bin/sh
#
# 找到你丢失的便笺(Stickies)
# 使用方法：打开终端 -> 进入脚本所在目录 -> ./find_sticky.sh

save2=stickies_export

if [ ! -d ${save2} ]; then
    mkdir ${save2}
fi

count=0

home=~/Library/Containers/com.apple.Stickies/Data/Library/Stickies

for fn in $(find ${home} -name "*.rtf")
do
    dir="${fn%/*}"
    dn=${dir##*/}
    cp "${fn}" "${save2}/${dn%.*}.log"
    count=$((${count}+1))
done

echo ${count} stickies found. check $(pwd)/${save2}
