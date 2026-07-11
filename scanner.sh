#!/bin/bash
clear
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m      V2Ray Config Auto-Tester        \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
echo ""
echo -e "\e[1;33m[*] Fetching and testing configs...\e[0m"

LINK="https://raw.githubusercontent.com/Delta-Kronecker/V2ray-Config/refs/heads/main/config/protocols/vless.txt"
curl -sL $LINK > all_configs.txt

echo -e "\e[1;36m[+] Testing configs (Please wait...)\e[0m"
echo ""

# خواندن ۵ کانفیگ اول و تست کردن آن‌ها
count=0
while read -r config; do
    if [[ $config == vless* ]]; then
        # استخراج آدرس سرور برای تست پینگ (ساده‌سازی شده)
        server=$(echo $config | cut -d'@' -f2 | cut -d':' -f1)
        
        # تست پینگ (زمان انتظار ۱ ثانیه)
        if curl -s --max-time 1 -I "$server" > /dev/null; then
            echo -e "\e[1;32m[OK]\e[0m $config"
            ((count++))
        fi
    fi
    [ $count -ge 3 ] && break # فقط ۳ کانفیگ سالم را نمایش بده
done < all_configs.txt

if [ $count -eq 0 ]; then
    echo -e "\e[1;31m[!] No working configs found.\e[0m"
fi

echo ""
echo -e "\e[1;36m=========================================\e[0m"
rm -f all_configs.txt
