#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: digitcloud
#=================================================

# Add third_party feed sources
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
sed -i '$a src-git jerrykuku https://github.com/jerrykuku/openwrt-package.git' feeds.conf.default
sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default

# Use luci 18.06 on lienol feed
sed -i 's/openwrt-luci.git;17.01/openwrt-luci.git;18.06/g' feeds.conf.default
