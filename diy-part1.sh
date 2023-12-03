#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
  echo 'src-git kenzok8 https://github.com/kenzok8/small-package' >>feeds.conf.default
  echo 'src-git kenzok8d https://github.com/kenzok8/small' >>feeds.conf.default
#  echo 'src-git kenzok8 https://github.com/VergilGao/openwrt-packages' >>feeds.conf.default
echo $PWD
cd ..
mv -vf mt7621_xiaoyu_xy-c5.dts ./openwrt/target/linux/ramips/dts/mt7621_xiaoyu_xy-c5.dts
mv -vf mt7621.mk ./openwrt/target/linux/ramips/image/mt7621.mk
cd ./openwrt
