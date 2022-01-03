#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: digitcloud
#=================================================

# Add third_party feed sources
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
sed -i '$a src-git CHN-beta https://github.com/CHN-beta/xmurp-ua.git' feeds.conf.default

# Use luci 18.06 on lienol feed
#
#
