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

# STEP 3 - Open SOAMANAGER:
    - Open SOAMANAGER but change the initial "vhcals..." into the IP that you connect to.