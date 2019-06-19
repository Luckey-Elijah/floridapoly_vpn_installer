#!/bin/bash

upStatus='Connected'
downStatus='Disconnected'
curStatus=`globalprotect show --status | awk '{ print $4 }'`

function disconnectVPN(){
     globalprotect disconnect
}

function connectVPN(){
     globalprotect connect -p vpn.floridapoly.edu
}

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