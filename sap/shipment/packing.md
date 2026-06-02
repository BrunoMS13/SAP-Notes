# SAP SD / LE – Packing & Nested HUs

# TLDR:
    - Master Data: VERP materials (Box/Pallet) need a Type and a Group.
    - Config: Allowed Packaging Materials table links the Group to the Type.
    - Instructions: POP1 defines the rule, POF1 triggers it.
    - Shipment Packing: Pack Materials into Boxes first, then Pack HUs into Pallets.

# Key Configuration (SPRO):
    - Logistics Execution
        - Shipping
            - Packing
                - Define Packaging Material Types (VHAR Overview)
                - Define Allowed Packaging Materials (The "Handshake" table)

# Master Data Setup (MM02):
    - Material Type: VERP (Packaging)
    - Sales: General/Plant View:
        - Packaging Material Type (The Key): e.g., Z001 (Box), Z002 (Pallet)
        - Matl Group Pack. Matls (The Lock): e.g., Z001 (Products), Z002 (Pallet Layer)

# Packing Instructions (POP1 / POF1):
    - POP1 (The Rule):
        - Item Category P: The container (e.g., Pallet 42)
        - Item Category M: The content (e.g., Box 41)
    - POF1 (The Trigger):
        - Condition Type: SHIP
        - Link the "Content" material to your Instruction ID



# Correct Packing Flow:
    1. VL02N (Delivery):
        - Pack "Loose" Materials (Cars) into Boxes (Material 41).
    2. VT01N (Shipment):
        - Add Deliveries (Route must be present).
    3. Shipment Packing (Pack HUs Tab):
        - Select Boxes (HUs from Delivery).
        - Use Pack Proposal to trigger your "Box into Pallet" instruction.

# Reminder:
    - In the Shipment, the Box is no longer a container; it is the material to be packed.
    - If "No Proposal Found" appears, check that the Box's Type is allowed in the Pallet's Group in the SPRO table.
    - Always PGI via the Shipment Activity Profile to save time.