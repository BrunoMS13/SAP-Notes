#!/bin/bash

echo "Stopping SAP System..."

# Stop SAP instances (work processes)
echo "Stopping instance 01..."
/usr/sap/hostctrl/exe/sapcontrol -nr 01 -function Stop

sleep 5

echo "Stopping instance 00..."
/usr/sap/hostctrl/exe/sapcontrol -nr 00 -function Stop

sleep 5

# Stop sapinit services
echo "Stopping sapinit..."
/etc/init.d/sapinit stop

# Stop HANA database (as hdbadm)
echo "Stopping HANA database..."
su - hdbadm -c "HDB stop"
su - hdbadm -c 'sapcontrol -nr 02 -function GetProcessList'

echo "SAP System Stopped Successfully."