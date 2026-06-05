# Bin Upload [WM]

**Transaction:** `LSMW`

---

## Step 1 – Define Object Attributes

| Setting | Value |
|--------|-------|
| Object Type | Direct Input |
| Program | `0210` – `RLPLAT00` |

---

## Step 2 – Define Source Structures

| Structure | Description |
|-----------|-------------|
| `ZBIN_SRC` | Bin Source Data |

---

## Step 3 – Define Source Fields

| Field Name | Description |
|------------|-------------|
| `LGNUM` | Warehouse Number |
| `LGTYP` | Storage Type |
| `LGPLA` | Storage Bin |
| `LGBER` | Storage Section |
| `LPTYP` | Storage Bin Type |
| `SKZUA` | Blocking Indicator: For Stock Removals (User) |
| `SKZUE` | Blocking Indicator: For Putaways (User) |
| `SPGRU` | Blocking Reason |
| `LGEWI` | Load Capacity of Storage Bin (CHAR format) |
| `GEWEI` | Weight Unit |
| `BRAND` | Fire-Containment Section |
| `KOBER` | Picking Area |
| `REIHF` | Sort Field for Storage Bin (TO Items / Picking) |
| `LKAPV` | Total Capacity of Storage Bin |
| `VERIF` | Verification Field for Mobile Data Entry |