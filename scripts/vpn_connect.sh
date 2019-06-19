#!/bin/bash

upStatus='Connected'
downStatus='Disconnected'
curStatus=`globalprotect show --status | awk '{ print $4 }'`
curNet=`nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d\' -f2`
polySecNet='Poly_Secure'

function disconnectVPN(){
     globalprotect disconnect
}

function connectVPN(){
     globalprotect connect -p vpn.floridapoly.edu
}

function onPolySecure(){
     if [ "$curNet" == "yes:Poly_Secure" ]
     then
          echo "You're on the $polySecNet network. No need to connect to VPN."
     else
          # echo "You're not on the $polySecNet network."
          connectCase
     fi
}

function connectCase(){
     case "$curStatus" in
          
          "$upStatus")
               echo "Disconnecting VPN."
               disconnectVPN
               exit 0
               ;;
          
          "$downStatus")
               echo "Connecting VPN."
               connectVPN
               exit 0
               ;;
          *)
               echo "Cannot determine status. Exiting."
               exit 1
               ;;
     esac
}

onPolySecure