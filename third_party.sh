#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: digitcloud
#=================================================

# Add third_party feed sources
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
sed -i '$a src-git jerrykuku https://github.com/jerrykuku/openwrt-package.git' feeds.conf.default
sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
