# Transactions for SAFT

More important ones:
 - [STRUST]: Trust Manager, to assign certificate files.
 - [WSPT_MONI]: SAFT Monitor Cockpit, in order to see if the deliveries are successful with AT PT.
 - [WSPT_STORE_PASS]: Manage username and password for web services (eg. 504109197 -> FILIPMAST625).
 - [SICF]: Activate services. Eg. for SOAMANAGER. sap>public>bc/bsp/icf, sap>bc>icf/webdynpro.
 - [SMICM]: ICM Monitor, to see services running and ports. GoTo -> Services. (port 8073, open firewall ports of the machine).
 - [SOAMANAGER]: SOA Manager.

Other useful ones:
 - [VL71]: Reprint SAFT Approval Document.


# Tables that need to be changed [SM30]

 - [SNRO] -> RV_BELEG -> NR: ZH, ZI, ZJ -> 4010... 4019.
 - [SIPT_NUMBR_OBD_V] -> NR ZH,  DelType LB, Signature X, Active X, Series 1, CoC MS01.
 - [WSPT_MOVE_TYPE] -> DelType LB, MovType GR.
 - [RSECACHK] (tx: SE16) -> PROGNAME "WSPT_STORE_PASSWORD", CHSUM "B0C7CDC1E5C26F889A35CB61A8790CD0", PREFIX "/WSPT/DELIVERY/".
 - [WSPT_V_REJ_CODES] -> Check rejection_codes.md


# Reports for SAFT [SE38]

 - [SSF_ALERT_CERTEXPIRE]: Check expired certificates/expire near future.
 - [SIPT_SAFT_STORE_PSE]: Uploading PSE Files for digital signature (eg. TEST_CERTIFICATE_nopin.pse file in note 1517894).