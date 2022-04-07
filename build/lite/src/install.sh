#!/bin/bash
echo "
███████╗░█████╗░██████╗░███╗░░██╗░█████╗░██████╗░██████╗░  ██████╗░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░
██╔════╝██╔══██╗██╔══██╗████╗░██║██╔══██╗██╔══██╗██╔══██╗  ██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗
█████╗░░███████║██████╔╝██╔██╗██║███████║██████╔╝██████╔╝  ██║░░██║██║░░██║██║░░╚═╝█████═╝░█████╗░░██████╔╝
██╔══╝░░██╔══██║██╔══██╗██║╚████║██╔══██║██╔═══╝░██╔═══╝░  ██║░░██║██║░░██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗
███████╗██║░░██║██║░░██║██║░╚███║██║░░██║██║░░░░░██║░░░░░  ██████╔╝╚█████╔╝╚█████╔╝██║░╚██╗███████╗██║░░██║
╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░░░░╚═╝░░░░░  ╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝
An image by https://github.com/fazalfarhan01
"
echo "Installing"
sleep 2
cp /download/earnapp /usr/bin/earnapp
chmod a+wr /etc/earnapp/
touch /etc/earnapp/status
chmod a+wr /etc/earnapp/status
printf $EARNAPP_UUID > /etc/earnapp/uuid
echo "====== EarnApp stop ======"
earnapp stop &
sleep 5
echo "====== EarnApp start ======"
earnapp start &
sleep 10
pkill -f "earnapp stop"
pkill -f "earnapp start"
echo "====== EarnApp run ======"
earnapp run
