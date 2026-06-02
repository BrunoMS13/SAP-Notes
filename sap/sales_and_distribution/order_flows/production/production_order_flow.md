# SAP PP – Manual Production Order Flow (CO01)

# TLDR:
- **CO01 → MIGO 261 → MIGO 101 → (WM: LT10 → LT12)**

---

# Purpose:
- Manually produce a finished good from components
- Consume raw materials via BOM
- Receive finished product into stock

Used for:
- Learning PP basics
- Simple manufacturing scenarios
- Testing BOM and stock consumption

---

# Prerequisites:
- Finished product exists (e.g. Laptop – FERT / HAWA)
- Raw material(s) exist (e.g. Chip – ROH)
- BOM exists (CS01)
- Components have sufficient stock
- WM bins exist (if WM active)

---

# Step 1: Create Production Order

## Create Order
- **CO01**
  - Material: Finished product (Laptop)
  - Plant: MS01
  - Order type: PP01 (or default)
  - Total quantity: e.g. 1 PC
  - Dates: accept defaults

- Save

### Result:
- Production order created
- BOM exploded
- Component reservation created

---

# Step 2: Issue Components to Production

## Goods Issue (Component Consumption)
- **MIGO**
  - Action: **Goods Issue**
  - Reference: **Order**
  - Movement type: **261**
  - Enter production order number
  - Check:
    - Component material
    - Quantity
    - Storage location / bin
  - Post

### Result:
- Raw material stock reduced
- Reservation cleared
- WIP posted in FI

---

# Step 3: Receive Finished Product

## Goods Receipt (Finished Good)
- **MIGO**
  - Action: **Goods Receipt**
  - Reference: **Order**
  - Movement type: **101**
  - Enter production order number
  - Check quantity
  - Post

### Result:
- Finished product stock increased
- Production order updated
- FI document created

---

# Step 4: Warehouse Putaway (if WM active)

After MIGO 101:
- Stock goes to **interim storage** (e.g. 902 / 998)
- Stock is not yet in a real bin

## Putaway
- **LT10**
  - Warehouse: MS1
  - Source storage type: 902 or 998
  - Execute
  - Save (TO created)

- **LT12**
  - Enter TO number
  - Confirm
  - Save

---

# Optional: Close Production Order

- **CO02**
  - Functions → Restrict processing → **TECO**

Marks order as technically complete.

---

# Verification:
- **CO03** – Display production order
- **MB51**
  - 261 (component issue)
  - 101 (finished good receipt)
- **LS24 / MMBE** – Stock check

---

# Mental Model:
- **CO01** = instruction to produce
- **261** = consume components
- **101** = receive finished good
- **LTxx** = physical bin placement

---

# Important Notes:
- Production orders do NOT move stock by themselves
- BOM drives component consumption
- WM always requires putaway after GR

---

# Common Issues:
- No components in order → BOM missing / wrong usage
- Cannot post 261 → insufficient stock
- Stock stuck in interim → TO not created/confirmed

---

# One-liner Reminder:
> CO01 → MIGO 261 → MIGO 101 → LT10 → LT12
