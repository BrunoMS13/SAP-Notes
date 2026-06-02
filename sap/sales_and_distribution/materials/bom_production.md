# SAP PP – BOM & Production Basics (Raw Material → Finished Good)
Links components -> finished product

Good for subcontracting POs, Production...

# TLDR:
    - MM01(ROH) -> CS01

# Master / Prereqs:
    - Finished product exists (e.g. Laptop [FERT])
    - Raw material exists (e.g. Chip [ROH])
    - Plant is maintained for both materials
    - Basic MRP settings maintained

# Raw Material Creation (Component):
    - MM01 (Create material)
        - Type: ROH
        - Base UoM: PC
        - Item Category Group: NORM
        - MRP Type: PD
        - Procurement Type: F (External)
        - Accounting view maintained (Valuated stock)

# FERT Material Creation (Finished Product or Not):
    - MM01
        - Type: FERT or ...
        - MRP 4 -> Maintain ProdVersions

# BOM Creation:
    - CS01 - Create BOM
        - Material: FERT (Laptop)
        - Plant: MS01
        - BOM Usage: 1 (Production)

# BOM Items:
    - Component: Chip
    - Item Category: L (Stock Item)
    - Save