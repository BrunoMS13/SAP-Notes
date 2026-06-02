# SAP Consignment Process – End-to-End Notes

# Concept Overview
    Consignment means:
    - Stock is physically at the customer
    - Ownership stays with us

    SAP uses **special stock W (Customer Consignment)**.


# Main Consignment Processes:

# [FLOW A — Customer Consumes / Sells the Goods (Delivery-Based KE)]
# 1. Consignment Fill-Up (KB)
    VA01 → Order Type KB

    Purpose:
    - Move stock to customer consignment
    - No sale, no billing

# 2. Delivery & PGI (Fill-Up)
    VL01N → Create delivery  
    VL02N → PGI

    Result:
    - Unrestricted stock ↓
    - Customer consignment stock ↑

# 3. Consignment Issue (KE)
    VA01 → Order Type KE

    Purpose:
    - Register customer consumption
    - Pricing required (PR00 via VK11)

# 4. Delivery & PGI (Issue)
    VL01N → Create delivery  
    VL02N → PGI

    Result:
    - Customer consignment stock ↓
    - Ownership transferred
    - Stock movement happens HERE

# 5. Billing
    VF01 → Invoice

# 6. Summary
    VA01 (KB) -> VL01N + PGI -> VA01 (KE) -> VL01N + PGI -> VF01 (Invoice)


# [FLOW B - Consignment Pickup (Return to Vendor)]
# 1. Consignment Fill-Up (KB)
...

# 2. Delivery & PGI (Fill-Up)
...

# 3. Consignment Pickup (KA)
VA01 → Order Type KA

# 4. Delivery & PGR
VL01N → Create delivery  
VL02N → PGR

Result:
- Customer consignment stock ↓
- Unrestricted stock ↑

# 5. Summary
    VA01 (KB) -> VL01N + PGI -> VA01 (KA) -> VL01N + PGR