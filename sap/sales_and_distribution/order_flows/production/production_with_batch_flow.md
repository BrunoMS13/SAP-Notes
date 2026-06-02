# SAP PP/MM – Production with Batch (Lot) Management – End-to-End Guide

## Purpose
This guide documents the **complete end-to-end process** for running **batch-managed production** in SAP, from purchasing raw materials to finished goods receipt and traceability.

---

## 1. Material Master Setup

### Raw Materials (ROH)
Materials:
- Wheel
- Tire

Transaction:
- `MM01 / MM02`

Required settings:
- Plant view → **Batch management = ON**
- Accounting view maintained
- Valuation class assigned

---

### Finished Product (FERT)
Material:
- Car

Required settings:
- Plant view → **Batch management = ON** (optional but recommended)
- Production views maintained

---

## 2. Purchase Orders for Batch-Managed Raw Materials

### Create Purchase Orders
Transaction:
- `ME21N`

Key points:
- Document type: **NB**
- Item category: **blank (stock material)**
- Account assignment: **blank**
- Storage location optional

---

## 3. Goods Receipt for Purchase Orders (Batch Creation)

Transaction:
- `MIGO`

Settings:
- Transaction: **Goods Receipt**
- Reference: **Purchase Order**
- Movement type: **101**

Steps:
1. Enter PO number
2. Select item line
3. Item Details → **Batch**
4. Enter or create batch (e.g. `WHEEL-001`, `TIRE-001`)
5. Post

Result:
- Stock exists with batch
- Batch is created at GR

---

## 4. BOM & Routing for Finished Product

### Bill of Materials
Transaction:
- `CS01`

Example:
- Car → Wheel (qty 4)
- Car → Tire (qty 4)

Notes:
- No batch data is maintained in BOMs

---

### Routing
Transaction:
- `CA01`

Example:
- Operation 10 → Assembly work center

---

### Production Version (S/4HANA)
Transaction:
- `C223`

Required:
- Link BOM + Routing
- Mark production version as **active**

---

## 5. Create Production Order

Transaction:
- `CO01`

Result:
- Components are reserved
- No batches consumed yet

---

## 6. Goods Issue to Production Order (Batch Consumption)

Transaction:
- `MIGO`

Settings:
- Transaction: **Goods Issue**
- Reference: **Order**
- Movement type: **261**

Steps:
1. Enter production order number
2. Select each component
3. Item Details → **Batch**
4. Enter correct batch
5. Post

Important:
- Batch selection is mandatory
- Materials come from production order reservation

---

## 7. Production Order Confirmation (Optional but Recommended)

Transaction:
- `CO11N`

Steps:
- Confirm final operation
- Mark **Final Confirmation**

Result:
- Order status updated (CNF)

---

## 8. Goods Receipt from Production Order (Finished Batch Creation)

Transaction:
- `MIGO`

Settings:
- Transaction: **Goods Receipt**
- Reference: **Order**
- Movement type: **101**

Steps:
1. Enter production order
2. Select finished product
3. Item Details → **Batch**
4. Create batch (e.g. `CAR-001`)
5. Post

Result:
- Finished product stock created
- Finished product has its own batch

---

## 9. Verification & Traceability

### Stock Check
Transaction:
- `MMBE`

Verify:
- Batch stock exists for raw materials and finished goods

---

### Batch Genealogy (Traceability)
Transaction:
- `BMBC`

Shows:
- Raw material batches → Finished product batch

---

## 10. Key Concepts to Remember

- Batches are **created at Goods Receipt**
- Batches are **consumed at Goods Issue**
- BOM defines **WHAT**
- Routing defines **HOW**
- Batch defines **WHICH LOT**
- MIGO follows **reservations**, not BOMs

---

## 11. Common Pitfalls

- Trying to set batch in `ME21N / ME22N`
- Posting GR without batch
- Fixed storage location in production order blocking MIGO
- Missing production version in S/4HANA

---
