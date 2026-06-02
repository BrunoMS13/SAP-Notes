# SAP MM -> WM -> FI End-to-End Flow (Procure-to-Pay)

# TLDR:
	- ME21N -> MIGO (101) -> LT03/LT10 -> LT12 -> MIRO

# Master/Prereqs:
	- BP (Create customer with roles General[0000000], FI Vendor [FLVN00], FI Vendor[FLVN01])
	- MM01 (Material extended to Sales, Accounting, WM)
	- LS01N / LS10 (Create storage bins)

# Purchasing:
	- ME21N (Create Purchase Order)
		- Enter Supplier, Purchasing Org, Company Code, and item level material, quantity...
	- MIGO (A01 Goods Receipt, R01 Purchase Order)
		- Set item as ok, check and post (LS24 to check where the stock went)
	- LT10 (Stock transfer)
		- Set storage type seen in [LS24]
		- Select the desired field and Stock transfer foreground
	- LT12 (Confirm the stock transfer order, save)
