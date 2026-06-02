# SAP SD / LE – Shipment Basics (VT01N)

# TLDR:
	- Route is mandatory for shipment selection
	- Route → Shipment → Status 5 → Auto PGI & Billing

# Key Fix:
	- If VT01N shows 0 deliveries → ROUTE is missing

# Route Configuration:
	- SPRO
		- Logistics Execution
		- Transportation
		- Basic Transportation Functions
		- Routes
			- Define Routes

# Shipment Automation:
	- SPRO
		- Logistics Execution
		- Transportation
		- Shipments
		- Define and Assign Activity Profiles
			- 0001_3 → Automatic PGI
			- 0001_5 → Automatic Billing

# Correct Flow:
	- VA01 (OR)
	- VL01N (Create Delivery, no PGI)
	- VT01N (Create Shipment, route required)
	- Shipment Status = 5
		- PGI automatic
		- Billing automatic

# Reminder:
	- No route = no shipment selection
	- Shipments happen BEFORE PGI
