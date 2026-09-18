# WM Stock Upload [WM]

**Transaction**: `LSMW`

---

## Step 1 – Define Object Attributes

| Setting | Value |
|--------|-------|
| Object Type | Direct Input |
| Program | `0220` – `RLBEST00` |

---

## Step 2 – Define Source Structures

| Structure | Description |
|-----------|-------------|
| `ZSTOCK_SRC` | Stock Source Data |

---

## Step 3 – Define Source Fields

| Field Name | Description |
|------------|-------------|
| `LGNUM` | Warehouse Number (MANDATORY) |
| `BWLVS` | Movement Type for Warehouse Management (MANDATORY) |
| `MATNR` | Material Number (MANDATORY) |
| `WERKS` | Plant (MANDATORY) |
| `LGORT` | Storage location (MANDATORY) |
| `CHARG` | Batch Number (MANDATORY) |
| `LETYP` | Storage Unit Type (MANDATORY) |
| `NLTYP` | Destination Storage Type (MANDATORY) |
| `NLPLA` | Destination Storage Bin (MANDATORY) |
| `SQUIT` | Indicator: confirmation of a transfer order item (MANDATORY) |
| :--- | :--- |
| `BENUM` | Requirement Number |
| `BETYP` | Requirement Type |
| `REFNR` | Group |
| `BESTQ` | Stock Category in the Warehouse Management System |
| `SOBKZ` | Special Stock Indicator |
| `LSONR` | Special Stock Number |
| `LRMEI` | Alternative Unit of Measure for Stock keeping Unit |
| `WEMPF` | Goods Recipient |
| `NLBER` | Destination Storage Section |
| `ANFME` | Requested quantity in alternative unit of measure |
| `ZEUGN` | Certificate Number |
| `WDATU` | Date of Goods Receipt |
| `VLTYP` | Source Storage Type |
| `VLPLA` | Source Storage Bin |
| `VFDAT` | Shelf Life Expiration or Best-Before Date |
| `NLENR` | Destination storage unit number |
