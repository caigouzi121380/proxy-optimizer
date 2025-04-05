#!/bin/bash

echo "正在卸载 proxy-optimizer 并恢复默认设置..."

# 清理配置
rm -f /etc/sysctl.d/99-custom.conf
rm -f /etc/modules-load.d/bbr.conf
rm -f /etc/network/if-up.d/initcwnd

# 恢复 sysctl 配置
sysctl --system

echo "proxy-optimizer 卸载完成，系统恢复默认设置。"
