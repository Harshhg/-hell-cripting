#!/bin/bash
# Will display the message whenever user logs in..
# So put this into  /etc/profile.d/

ip=$(curl ifconfig.co)
clear
echo "###############################################################
#                 Authorized access only!                     # 
# Disconnect IMMEDIATELY if you are not an authorized user!!! #
#         All actions Will be monitored and recorded          #
###############################################################
+++++++++++++++++++++++++++++++ SERVER INFO ++++++++++++++++++++++++++++++++"
echo "CPU: $(cat /proc/cpuinfo | grep 'model name' | sed 's/model name//g')"
echo "Memory: $(free -h| awk '/Mem/ {print $2}')"
echo "Swap:  $(free -h  | awk '/Swap/ {print $2}')"
echo "Disk:  $(df -h | sed -n 2p | awk '{print $2}')"
echo "Distro: $(hostnamectl | grep "Operating System" | sed 's/Operating System//g')  with $(uname -r)"
#echo "	CPU Load:" 0.00, 0.01, 0.05 
echo "Free Memory: $(free -h| awk '/Mem/ {print $4}')"
echo "Free Swap:  $(free -h  | awk '/Swap/ {print $4}')"
echo "Free Disk:  $(df -h | sed -n 2p | awk '{print $4}')"
echo "Public Address: $ip" 
echo "Privte Address: $(hostname -I)"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
