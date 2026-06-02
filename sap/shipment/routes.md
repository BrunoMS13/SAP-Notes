# SAP SD / LE – Routes (SD → LE Transportation)

# TLDR:
	- Route is determined automatically from master data
	- Route is required for shipment creation (VT01N)
	- If no route → no shipment, no automation

# What a Route Controls:
	- Transit time & delivery dates
	- Shipment selection
	- PGI & Billing automation (via shipment status)
	- Transportation planning (LE)

# Route Determination Logic:
	Shipping Condition (Customer)
	+ Loading Group (Material)
	+ Transportation Zone (Customer / Shipping Point)
	= Route

# Key Master Data:
	- Customer (BP)
		- Shipping Condition
		- Transportation Zone (Address → More Fields)
	- Material (MM01/MM02)
		- Loading Group (Sales: General/Plant)
	- Shipping Point
		- Assigned Transportation Zone (if used)

# Route Configuration:
	- SPRO
		- Logistics Execution
		- Transportation
		- Basic Transportation Functions
		- Routes
			- Define Routes
				- Mode of Transport
				- Transit Time
				- Rel. Transport = Active

# Route Determination (IMPORTANT):
	- SPRO
		- Logistics Execution
		- Transportation
		- Basic Transportation Functions
		- Routes
			- Route Determination
				- Without Weight Group (standard)
					- Shipping Condition
					- Transportation Group (Loading Group)
					- Proposed Route

# Notes on Weight Group:
	- "Without Weight Group" is OK and standard
	- Weight Groups are only needed for heavy / advanced scenarios
	- Missing route ≠ missing weight group

# Common Pitfalls:
	- Transportation Zone not maintained in BP address (hidden under "More Fields")
	- Loading Group mismatch between material and route determination
	- Shipping Condition mismatch
	- Testing with old sales orders (route is not re-determined)

# Correct Flow:
	- VA01
		- Route should appear in Item → Shipping tab
	- VL01N
		- Route is copied from sales order
	- VT01N
		- Route is mandatory for shipment selection

# Debug Checklist:
	- Route exists (Define Routes)
	- Route determination entry exists (SC + TGroup)
	- Customer has Shipping Condition
	- Customer has Transportation Zone (Address!)
	- Material has correct Loading Group
	- New sales order created after customizing

# Reminder:
	- Route determination fails silently
	- No route in VA01 = no route in VL01N = no shipment
	- Always check BP address-level fields
