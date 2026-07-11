#!/bin/bash
clear
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m      V2Ray Config Auto-Scraper        \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
echo ""
echo -e "\e[1;33m[*] Fetching latest configs from reliable source...\e[0m"

# استفاده از سورس مستقیم که احتمال لود شدنش بالاتره
curl -s https://raw.githubusercontent.com/yebekhe/V2RayConfig/main/v2ray/vless.txt > all_configs.txt

if [ -s all_configs.txt ]; then
    echo -e "\e[1;32m[+] Successfully downloaded!\e[0m"
    echo ""
    echo -e "\e[1;36m--- TOP 5 VLESS CONFIGS --- \e[0m"
    head -n 5 all_configs.txt
else
    echo -e "\e[1;31m[!] Error: Could not fetch configs. Try again later.\e[0m"
fi

echo ""
echo -e "\e[1;36m=========================================\e[0m"
rm -f all_configs.txt
