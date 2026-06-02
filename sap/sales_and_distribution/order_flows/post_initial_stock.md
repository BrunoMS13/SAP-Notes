# SAP MM / WM – Initial Stock (561)

# TLDR:
	- MIGO 561 → LT10 → LT12

# Purpose:
	- Create initial stock (no PO / no production)
	- Sandbox or go-live opening inventory

# Prereqs:
	- Material exists (Plant + SLoc)
	- WM active, bins exist
	- Posting period open (OB52)

# Initial Stock:
	- MIGO (Goods Receipt, Other)
		- Movement: 561
		- Enter Material, Qty, Plant, SLoc
		- Post

# WM Putaway:
	- LT10 (Create TO from interim storage, Storage Type: 998 or 902)
	- LT12 (Confirm TO)

# Checks:
	- LS24 (Stock in real bin)
	- MMBE (Stock at IM level)

# Reminder:
	- 561 always adds stock
	- MIGO creates stock, LTxx places it
