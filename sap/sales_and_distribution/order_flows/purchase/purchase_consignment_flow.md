# SAP MM – Consignment Procurement (Basic Flow)

# TLDR:
	- ME21N → MIGO (101 + K) → MMBE

# Master / Prereqs:
	- BP (Vendor extended to Purchasing Org MS01)
	- MM01 (Material extended to Purchasing / Accounting)
	- OMKI (Default Purchasing Organization = MS01)
	- (Optional) ME11 (Consignment Info Record, Item Cat K)

# Purchasing:
	- ME21N (Create Consignment PO)
		- Item Category = K
		- Enter Vendor, Purchasing Org MS01, Plant MS01, Material, Qty
	- MIGO (A01 Goods Receipt, R01 Purchase Order)
		- Movement 101 + Special Stock K
		- Post GR (no FI document)
	- MMBE (Stock Overview)
		- Check Vendor Consignment Stock
