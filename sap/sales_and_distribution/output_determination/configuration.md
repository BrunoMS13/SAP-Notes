# Configuration
 - SPRO -> Sales and Distribution -> Basic Functions -> Output Determination
    - Maintain Output Determination for Sales Documents
    - Maintain Output Determination for Billing Documents

# 1 - Maintain Condition Tables
 - Purpose: Defines the fields the system looks at to find a match.
 - Maintain output condition table for sales documents (eg. 001 -> Sales Organization / Customer Number).

# 2 - Maintain Access Sequences
 - Purpose: The "Search Strategy". It tells the system to look at Table A, then at Table B if A is empty.

# 3 - Maintain Output Types
 - Purpose: Assign the processing routine (The ABAP program and the Form/Layout name), Assign the access sequence
 created in Step 2
 - Define the ID, eg. BA00 for Order Confirmation.

# 4 - Maintain Output Determination Procedure
 - Purpose: A "bucket" containing all allowed output types for a document. Add BA00 to this list.
 - Create a procedure (eg., V10000).

# 5 - Assign Output Determination Procedures
 - Purpose: Map the sales document type (eg. OR) to the procedure (eg. V10000).

# Master Data Setup [VV11]
 - Create the actual record for your Customer.