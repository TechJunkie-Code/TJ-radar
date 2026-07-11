#!/bin/bash
clear
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m      V2Ray Config Auto-Scraper        \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
echo ""
echo -e "\e[1;33m[*] Fetching latest high-speed configs...\e[0m"
sleep 2

# دریافت مستقیم کانفیگ‌های vless بدون نیاز به base64 از سورس آپدیت شده
curl -s https://raw.githubusercontent.com/barry-far/V2ray-Configs/main/Splitted-By-Protocol/vless.txt > all_configs.txt

# بررسی اینکه آیا فایل با موفقیت دانلود شده یا نه
if [ -s all_configs.txt ]; then
    echo -e "\e[1;32m[+] Configs downloaded successfully!\e[0m"
    echo -e "\e[1;33m[*] Extracting top 5 VLESS configs...\e[0m"
    echo ""
    
    # استخراج ۵ کانفیگ اول برای کاربر
    grep "vless://" all_configs.txt | head -n 5
else
    echo -e "\e[1;31m[!] Error: Failed to fetch configs. Please check your internet connection.\e[0m"
fi

echo ""
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m   Configs are ready to copy! Enjoy.   \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
# پاک کردن فایل‌های موقت
rm -f all_configs.txt
