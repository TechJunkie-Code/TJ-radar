#!/bin/bash
clear
echo -e "\e[1;36m=========================================\e[0m"
echo -e "\e[1;32m      V2Ray Subscription Linker        \e[0m"
echo -e "\e[1;36m=========================================\e[0m"
echo ""
echo -e "\e[1;33m[*] Fetching latest subscription data...\e[0m"

# لینک مستقیم سابسکریپشن که تنظیمات را کامل دارد
LINK="https://raw.githubusercontent.com/Delta-Kronecker/V2ray-Config/refs/heads/main/config/protocols/vless.txt"

echo -e "\e[1;36m[+] Your VLESS Subscription Link:\e[0m"
echo -e "\e[1;32m-----------------------------------------\e[0m"
echo "$LINK"
echo -e "\e[1;32m-----------------------------------------\e[0m"
echo ""
echo -e "\e[1;33m[!] Instruction: Copy the link above and add it\e[0m"
echo -e "\e[1;33m    as a 'Subscription' in your V2Ray client.\e[0m"
echo ""
echo -e "\e[1;36m=========================================\e[0m"
