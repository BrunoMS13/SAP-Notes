# Purchasing Info Record (Info Material Record) – SAP MM
A Purchasing Info Record **(PIR)** stores vendor-specific purchasing data for a material.
It links:
    - Material <-> Vendor <-> Purchasing Org <-> Plant

SAP uses it to automatically propose, price, delivery time, conditions and purchasing details in PRs and POs.

# Menu Path [Logistics -> Materials Management -> Purchasing -> Master Data -> Info Record]
Transactions: 
    - [ME11] Create Info Record
    - [ME12] Change Info Record
    - [ME13] Display Info Record
    - [ME1M] List by Material
    - [ME1L] List by Vendor

# Types:
    - Standard (Normal Procurement)
    - Consignment (Vendor owns stock)
    - Subcontracting (External processing)
    - Pipeline (Continuous supply like ex. fuel)
