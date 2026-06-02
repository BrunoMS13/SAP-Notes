# SAP EWM: Centralized (Embedded) vs Decentralized

## Overview

SAP Extended Warehouse Management (EWM) can be deployed in two ways. The choice affects system architecture, configuration steps, transactions used, and integration approach.

---

## Centralized / Embedded EWM

EWM runs **inside the same S/4HANA system** as MM, SD, and other logistics modules. There is no separate EWM system.

### Key characteristics

- Single system — EWM and ERP share the same database and application server
- No RFC connections needed between EWM and ERP (they are the same system)
- Available from S/4HANA on-premise and S/4HANA Cloud
- Warehouse number uses **4 characters** (e.g. `MS01`)
- The classic 3-character WM warehouse number in `OMIS` does not apply to EWM warehouses

### Configuration path

All configuration is done in:
`SPRO → SCM Extended Warehouse Management → EWM`

Plant and storage location assignment is done inside the EWM node itself:
`EWM → Master Data → Assign Warehouse Numbers`

### Transactions

| Purpose | Transaction |
|---|---|
| SPRO customizing | `SPRO` |
| EWM monitoring | `/SCWM/MON` |
| Warehouse management | `/SCWM/PRDI`, `/SCWM/TO01`, etc. |

### What you do NOT need

- No `/SCMB/SCUMAIN` (Supply Chain Unit maintenance — decentralized only)
- No RFC destinations between EWM and ERP
- No ALE/IDoc setup for warehouse integration
- No "Enable Decentralized EWM" activation (this node exists in SPRO but must not be activated)

---

## Decentralized EWM

EWM runs on a **separate standalone system**, connected to one or more ERP systems (SAP ECC or S/4HANA) via RFC.

### Key characteristics

- Two separate systems — an ERP system and a dedicated EWM system
- RFC connections are required between EWM and ERP
- The EWM system identifies itself using a **Supply Chain Unit (SCU)**
- Warehouse orders and warehouse tasks are processed on the EWM side; delivery and inventory postings flow back to ERP via queued RFC
- More complex setup but allows one EWM system to serve multiple ERP systems

### Configuration path

On the **ERP side:**
`SPRO → Logistics Execution → Interfaces → Extended Warehouse Management`

On the **EWM system:**
`SPRO → SCM Extended Warehouse Management → EWM`

### Transactions

| Purpose | Transaction |
|---|---|
| Define Supply Chain Unit | `/SCMB/SCUMAIN` |
| RFC queue monitoring | `SMQ1` / `SMQ2` |
| EWM monitoring | `/SCWM/MON` |

### What you need that embedded does not

- RFC destinations configured between ERP and EWM (both directions)
- Supply Chain Unit defined on the EWM system via `/SCMB/SCUMAIN`
- Logical system names aligned between both systems
- Queue monitoring for posting changes (goods receipts, goods issues) flowing back to ERP

---

## Side-by-side comparison

| Topic | Embedded (Centralized) | Decentralized |
|---|---|---|
| System landscape | Single S/4HANA system | Separate ERP + EWM systems |
| RFC setup needed | No | Yes |
| Warehouse number | 4 characters (e.g. `MS01`) | 4 characters (e.g. `MS01`) |
| Plant/sloc assignment | Inside EWM SPRO node | On ERP side |
| Supply Chain Unit (`/SCMB/SCUMAIN`) | Not applicable | Required |
| Posting changes | Direct (same system) | Via queued RFC |
| Suitable for | Single-system S/4HANA projects | Multi-ERP or legacy ECC projects |
| Complexity | Lower | Higher |

---

## Common mistake

A lot of EWM guides and training materials (including some SAP courses) are written for **decentralized EWM**. If you are on embedded EWM and follow a decentralized guide you will:

- Be told to run `/SCMB/SCUMAIN` — which does not exist in your system
- Be sent to configure RFC connections that are not needed
- Be pointed to the wrong SPRO path for plant/storage location assignment

Always confirm your deployment type first before following any configuration guide.

---

## How to check which deployment you are on

In SPRO under `SCM Extended Warehouse Management → EWM`, look for **"Enable Decentralized EWM"**:

- If it exists but is **not activated** → you are on **embedded EWM**
- If it is **activated** → you are on **decentralized EWM**

You can also check transaction `SCC4` or ask your basis team which system landscape is in use.