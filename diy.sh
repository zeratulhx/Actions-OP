#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.2/g' package/base-files/files/bin/config_generate

# Add theme from rosywrt
git clone https://github.com/rosywrt/luci-theme-rosy.git feeds/lienol/lienol/luci-theme-rosy-dir
mv feeds/lienol/lienol/luci-theme-rosy-dir/luci-theme-rosy feeds/lienol/lienol/luci-theme-rosy && rm -rf feeds/lienol/lienol/luci-theme-rosy-dir

# Deassociate bootstrap as default theme
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# Delete default password
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/default-settings/files/zzz-default-settings

# Feeds update and install for new packages
./scripts/feeds update -a && ./scripts/feeds install -a
