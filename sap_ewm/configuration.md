# Configuration for EWM to be active in SAP
https://community.sap.com/t5/enterprise-architecture-discussions/sap-s4-hana-embedded-ewm-configuration-blog-1-step-by-step-guide/m-p/13693108

# 1. Defining RFC destination
 -[SM59]: Create
    Destination: S4HCLNT100
    Connection type: 3 (RFC Connection to ABAP System)

    Technical Settings: Load Balancing - No
                        Target Host    - vhcals4hci
                        Instance No.   - 0
    
    Logon & Security: Language               - EN
                      Client                 - 100
                      Current User           - X
                      Trust Relationship     - No
                      Status Secure Protocol - Inactive
    
    Unicode: Unicode - X

# 2. Defining dummy logical system
 -[BD53]: Create new entry S4HEWM100, Logical System EWM

# 3. Determining RFC destinations for method calls
 -[BD97]: Select S4HEWM100, Standard BAPI Destination, Assign Destination for Synchronous Methods Calls, S4HCLNT100

# 4. Determining RFC destinations for method calls from S/4HANA EWM
 -[SA38]: /SCWM/R_ERP_RFC_DEST for S4HCLNT100

# 5. Setting the QOUT scheduler
 -[SMQS]: Registration
    Destination: S4HCLNT100
    Max. Connections: 1

# 6. Defining queue for transfer to SAP S/4HANA EWM
 -[SPRO]: Logistics Execution => Extended Warehouse Management Integration => Basic Setup fo Connectivity => Define Queue for Transfer to SAP EWM.
    Receiver: S4HEWM100
    Queue Type: Inbound Queue
    Agg SQueue: No Aggregation
    MQueue Act: Mass queue disabled
    MQueue Par: 1

# 7. Defining business system
 -[SPRO]: SCM Extended Warehouse Management => Extended Warehouse Management => Interfaces => ERP Integration => General Settings => Define Business System.
    Business System: S4H_100
    Logical System: S4HCLNT100
    Manual Maint.: Flag set (event raised)

# 7. Defining ownn business system
 -[SPRO]: SCM Extended Warehouse Management => Extended Warehouse Management => Interfaces => ERP Integration => General Settings => Define Own Business System.
    New entries: S4H_100

# 8. Setting control for RFC queue
 -[SPRO]: SCM Extended Warehouse Management => Extended Warehouse Management => Interfaces => ERP Integration => General Settings => Control for RFC Queue.
    Business System: S4H_100
    Queue Type: Inbound Queues
    Aggr. Single Queues: No aggregation
    Mass Queue Act.: Deactivated
    Mass Queues: 0

# 9. Maintaining Business System Group
 -[SPRO]: SCM Extended Warehouse Management => SCM Basis => Integration => Basic Settings for Creating the System Landscape => Maintain Business System Group.
    BusSystGrp: BSG
    Description: BSG for S4H 100

# 10. Assigning logical system and queue type
 -[SPRO]: SCM Extended Warehouse Management => SCM Basis => Integration => Basic Settings for Creating the System Landscape => Assign Logical System & Queue Type
    BusSystGrp: BSG
    Logical System: S4HCLNT100
    SAP Ind.: X
    Release: 700
    Queue Type: I