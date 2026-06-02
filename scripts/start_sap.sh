#!/bin/bash

# Switch to hdbadm user and start HDB
su - hdbadm -c "HDB start"
su - hdbadm -c 'sapcontrol -nr 02 -function GetProcessList'

# Start SAP init
/etc/init.d/sapinit start
sleep 5

# SAPControl commands for instances 01 and 00
/usr/sap/hostctrl/exe/sapcontrol -nr 01 -function Start
sleep 5
/usr/sap/hostctrl/exe/sapcontrol -nr 01 -function GetProcessList

/usr/sap/hostctrl/exe/sapcontrol -nr 00 -function Start
sleep 5
/usr/sap/hostctrl/exe/sapcontrol -nr 00 -function GetProcessList

echo "SAP Server Initiated"
