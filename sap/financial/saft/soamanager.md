# SOAMANAGER
    Steps in order to make the SOAMANAGER open up.

# STEP 1 - Activate Services [SICF]:
    Unsure if all of them required, but with them it works...
    - default_host -> sap -> public -> bc/icf_check/icf_info/icman/info (All)
    - default_host -> sap -> bc (All)

# STEP 2 - Change HTTPS Port [SMICM]:
    - Goto -> Services (shift+F1)
    - Change HTTPS Port into 8073
    - Open VM Yast Firewall and set the port 8073 there if not already.

    - [RZ10] If no profiles present:
        Utilities -> Import profiles -> From active servers
        Profile: D00...
        Extended Maintenance
        Add parameter:
            name:  icm/server_port_0
            value: PROT=HTTPS,PORT=8073

# STEP 3 - Open SOAMANAGER:
    - Open SOAMANAGER but change the initial "vhcals..." into the IP that you connect to.
        (https://<ip>:<port>/sap/bc/webdynpro/sap/appl_soap_management?sap-client=100&sap-language=EN)
    - Command (PC) to open up port for laptop connection:
        New-NetFirewallRule -DisplayName "SAP HTTPS 8073" -Direction Inbound -Protocol TCP -LocalPort 8073 -Action Allow