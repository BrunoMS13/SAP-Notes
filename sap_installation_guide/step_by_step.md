# Step-by-Step guide on how to install SAP server on remote machine.
Step by step guide on renewal of SAP license. Follows the "S4 Install Main Steps.xlsx" guide page "NEW STRATEGY".

# STEP 1 - Export Client 100 with Customizing and Data (S4VM machine)
    - 1: SCC_CLIENT_SIZE - Determines size of a client.
    - 2: SM37 - Delete all released background jobs.
    - 3: SM13 - Ensure there are no updated errors of source client.
    - 4: SM12 - Check for database deadlocks and delete them if any.
    - 5: SCC8N/SCC8 (New/Old) - Export a client to a transport request.
        Target: S4H
        Source Client: 100
        Client Profile: SAP_ALL
        Tick on, Lock source client, Tolerate Failed Exits, Release
        Execute as tasklist

    - 6: SE01 - After finishing the creation of the transport requests, all of them had to be released and exported
    to a larger system, this can be checked in SE01 or SCC3.

    - 7: VM -> Settings -> Options -> Shared Folders -> Enabled
        Run in terminal:
            SHARE="/mnt/hgfs/S4H_ClientExport"

            cp -v /usr/sap/trans/cofiles/KT00002.S4H "$SHARE"/
            cp -v /usr/sap/trans/cofiles/KX00002.S4H "$SHARE"/

            cp -v /usr/sap/trans/data/RT00002.S4H "$SHARE"/
            cp -v /usr/sap/trans/data/RX00002.S4H "$SHARE"/

# STEP 2 - Install SAP and others in new machine (Copy of the one being used beforehand).
    - 1: Run in the terminal

        "" Setup the swapfile with more memory ""
        truncate -s 0 swapfile
        chattr +C swapfile
        fallocate -l 20G swapfile
        chmod 0600 swapfile
        mkswap swapfile
        swapon swapfile
        
        
        "" Required to uninstall existing SAP Systems DB ""
        su - hdbadm -c "HDB start"
        su - hdbadm -c 'sapcontrol -nr 02 -function GetProcessList'

        Open firefox
            https://vhcals4hci.dummy.nodomain:4237/sapinst/docs/index.html
            User: root, Password: Pajoja29 (Default VM root user login credentials)

            Step 1.1
                Generic Options -> SAP Hana Database -> Uninstall -> Uninstall SAP Systems

            Step 1.2
                SAP S/4HANA Server 2020 -> SAP HANA Database -> Installation -> Application Server ABAP -> Standard System 
                -> Standard System
                    Parameter Settings: Custom

                    SAP System ID: S4A
                    FQDN: checked

                    Database Host: vhcalhdbdb
                    Instance Number: 02
                    Database ID: HDB

                    Target Paths of required .SAR files:
                        /sapmedia
                        /sapmedia/download
                        /sapmedia/download/k
                        /sapmedia/download/exp
                        
                    Install SAP Web Dispatcher in ASCS: checked
                    Install Gateway integrated in ASCS: checked
                    Configure HTTP Port: Yes
                    Secure Storage Individual Key: Default key
                    Cleanup operation system users: Yes
            
# STEP 3 - Import client into new installation
    - 1: Login client 000 (user: DDIC, pass: Pajoja2930)
    - 2: SCC4 - Create client 100
        Client role: Test
        Automatic recording of changes
        Protection level: 0
    - 3: STMS - Setup transport system
    - 4: SCCLN - Copy client 000 to 100 (Use only 1 process to avoid dump)
        
        
