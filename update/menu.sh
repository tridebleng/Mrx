#!/bin/bash
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
clear

echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
DOMAIN=$(cat /etc/xray/domain)
MYIP=$(curl -s ipinfo.io/ip )
CITY=$(curl -s ipinfo.io/city )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
tram=$( free -m | awk 'NR==2 {print $2}' )
echo -e ""
echo -e "\033[0;34m╒═════════════════════════════════════════════════════════════╕
      ${NC}Welcome To ${GREEN}ARTA VPS ${NC}Script installer ${GREEN}( Pro Edition )
         ${NC} This Script Coded on Bash & Python Language
        This Will Quick Setup VPN Server On Your Server
                   Owner : ${GREEN} M. ARTA MAULANA
             ${NC}Copyright © By: ARTA VPS (2022-2033)
${yl}
 =============(Script Auto instal: ARTA MAULANA)=============="
echo -e "\033[0;34m╒═════════════════════════════════════════════════════════════╕\033[0m${NC}"
echo -e " \E[41;1;39m                     ⇱ INFORMASI VPS ⇲                       \E[0m"
echo -e "\033[0;34m╘═════════════════════════════════════════════════════════════╛\033[0m${NC}"
echo -e " ❇️$bd ISP Name          ${color1} •${color3}$bd $ISP"
echo -e " ❇️$bd City              ${color1} •${color3}$bd $CITY"
echo -e " ❇️$bd Total RAM         ${color1} •${yl}$bd $tram MB${NC}"
echo -e " ❇️$bd IP VPS            ${color1} •${color3}$bd $MYIP"
echo -e " ❇️$bd DOMAIN VPS        ${color1} •${CYAN}$bd $DOMAIN${NC}"
echo -e " ❇️$bd Waktu Aktif       ${color1} •${or}$bd $up${NC}"
echo -e " ❇️$bd Client Name       ${color1} •${color3}$bd \033[1;36mARTA MAULANA VPN${NC}"
echo -e " ❇️$bd Expiry script     ${color1} •${color3}$bd \033[1;32mLIFETIME${NC}"
echo -e "\033[0;34m╒═════════════════════════════════════════════════════════════╕\033[0m${NC}"
echo -e " \E[41;1;39m                     ⇱ MENU PANEL VPS ⇲                      \E[0m"
echo -e "\033[0;34m╘═════════════════════════════════════════════════════════════╛\033[0m${NC}"
echo -e "[${GREEN}01${NC}]${color1} •${color3}$bd PANEL SSH & OpenVPN     [${GREEN}09${NC}]${color1} •${color3}$bd MENU SETTING [\033[1;32mPro${NC}]
[${GREEN}02${NC}]${color1} •${color3}$bd PANEL Vmess & Vless     [${GREEN}10${NC}]${color1} •${color3}$bd WEB MENU
[${GREEN}03${NC}]${color1} •${color3}$bd PANEL L2tp & PPTP       [${GREEN}11${NC}]${color1} •${color3}$bd INFO Script \033[1;36mARTA MAULANA${NC}
[${GREEN}04${NC}]${color1} •${color3}$bd PANEL Wireguard         [${GREEN}12${NC}]${color1} •${color3}$bd Cek Bandwitch
[${GREEN}05${NC}]${color1} •${color3}$bd PANEL SSR & Shdsok      [${GREEN}13${NC}]${color1} •${color3}$bd Cek Bandwitch \033[1;33mHarian${NC}
[${GREEN}06${NC}]${color1} •${color3}$bd PANEL Tr GPR & GO       [${GREEN}14${NC}]${color1} •${color3}$bd Reboot VPS
[${GREEN}07${NC}]${color1} •${color3}$bd GANTI Port All Acount   [${GREEN}15${NC}]${color1} •${color3}$bd Restart VPS
[${GREEN}08${NC}]${color1} •${color3}$bd CEK Status \033[1;32mRUNNING${NC}      [${GREEN}00${NC}]${color1} •${color3}$bd \033[1;31mCEK AREK AKTIF${NC} \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m"
echo -e "\033[0;34m╒═════════════════════════════════════════════════════════════╕\033[0m${NC}"
echo -e " \E[41;1;39m                   ⇱ BIGETRON RED ALIENS ⇲                    \E[0m"
echo -e "\033[0;34m╘═════════════════════════════════════════════════════════════╛\033[0m${NC}"
echo -e  ""
 read -p "  Select menu :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
v2raay
;;
3)
l2tp
;;
4)
wgr
;;
5)
ssssr
;;
6)
trojaan
;;
7)
changeport
;;
8)
running
;;
9)
menu-tools
;;
10)
wbmn
;;
11)
info
;;
12)
vnstat
;;
13)
vnstat -d
;;
14)
reboot
;;
15)
restart
;;
0 | 00)
cekssh
;;
*)
exit
;;
esac
