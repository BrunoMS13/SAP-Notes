# STEP 1: Create Number ranges for EWM internal documents
    [SPRO]: SCM Extended Warehouse Management -> Extended Warehouse Management -> Master Data -> Define Number Ranges

        - Define Number Ranges for Warehouse Tasks/Warehouse Documents
        - Define Number Range Intervals for Wave
        - Define Number Range Intervals for Warehouse Order
        - Define Number Range Intervals for Consolidation Group
        - Number Ranges for Physical Inventory Documents
        - Assign Number Range Intervals to Warehouse Number


# STEP 2: Create Number ranges for EWM documents
    [SPRO]: SCM Extended Warehouse Management -> Extended Warehouse Management -> Cross-Process Settings -> Delivery - Warehouse Request
    
        - Define Number Range Intervals for Outbound Deliveries
        - Define No. Range Intervals for Inbound Deliveries and Outbound Del. Orders
        - Define Number Range for Posting Changes and Stock Transfers
        - Define Number Range for Production Material Request

# STEP 3: Other number ranges
    [/SCDL/NURA_PRD] or [SNRO -> /SCDL/PRD]
    - 01 General/inbound delivery processing
    - 02 Outbound/replica-save flows
    - 03 Outbound delivery replica queue / posting change flows
    - 04 Stock transfer / posting change (/SCWM/IM_ST)