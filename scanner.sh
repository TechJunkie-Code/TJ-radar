#!/bin/bash
clear
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m      V2Ray Config Auto-Scraper        \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
echo ""
echo -e "\e[1;33m[*] Fetching latest high-speed configs...\e[0m"
sleep 2

# دریافت جدیدترین کانفیگ‌ها از سورس‌های معتبر و دیکد کردن آن‌ها
curl -s https://raw.githubusercontent.com/mahdibland/ShadowsocksAggregator/master/sub/sub_merge.txt | base64 -d > all_configs.txt

echo -e "\e[1;32m[+] Configs downloaded successfully!\e[0m"
echo -e "\e[1;33m[*] Extracting top 5 VLESS configs...\e[0m"
echo ""

# استخراج ۵ کانفیگ اول vless برای کاربر
grep "vless://" all_configs.txt | head -n 5

echo ""
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m   Configs are ready to copy! Enjoy.   \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
# پاک کردن فایل‌های موقت
rm all_configs.txt
