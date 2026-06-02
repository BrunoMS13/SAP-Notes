# SAP SD -> WM -> FI End-to-End Flow

# TLDR:
	- VA01 -> VL01N → VL02N (Extras → Create TO) → LT12 → VL02N (PGI) → VF01

# Master/Prereqs:
	- BP (Create customer with roles General[0000000], FI Customer [FLCU00], Customer[FLCU01], SAP Credit Management [UKM00])
	- MM01 (Material extended to Sales, Accounting, WM)
	- LS01N / LS10 (Create storage bins)

# Sales & Delivery:
	- VA01 (Create sales order)
		- VK11 (To maintain conditions like PR00 or MWST)
	- VL01N (Create outbound delivery from sales order)
		- Subsequent functions (Create transfer order [LT03], Picking status -> C, WM status -> B)
		- Confirm Transfer Order [LT12] (WM Status -> C, Pick confirmation -> C, Bin stock reduced)
		- Post Goods Issue (GM -> C, FI Document created, Stock reduced in IM)
		- Create invoice [VF01]

# Printing Invoice
    - VF02 (GoTo -> Header -> Output -> RD00)
        - Further data -> Dispatch time = 3 (Send with application own transaction)
        - Communication method -> Set Logistical detination and print immediately
    - Previous Page -> Billing Document -> Issue Output -> Print/Preview