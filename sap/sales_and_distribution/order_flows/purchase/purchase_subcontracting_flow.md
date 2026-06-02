# SAP MM - Subcontracting

# Prerequisites:
    - ROH components created.
    - HALB / FERT (subcontracted material) created.
    - BOM created for HALB [CS01] (usage 1 - Production, Check bom_production.md in case of doubts).
    - Subcontracting PO created [ME21N] (item category L).
    - Well maintained BP (With Vendor and Customer Roles, and them connected to each other).

# Subcontracting Purchase Order [ME21N]
    - Create purchase order with subcontracting item category.
    - Components are exploded from BOM (They can be seen if pressed the box of explode components).

# Send components into subcontractor [ME2ON]
    - Create delivery through transactions ME2ON, do the picking and PGI like in sales order.

# Goods receipt from the subcontractor [MIGO]
    - The subcontractor must have the materials required.
    - Can use [MMBE] to see the subcontractor special stock.