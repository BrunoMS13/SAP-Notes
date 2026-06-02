# Configuration
Required
 - SPRO -> Logistics Execution -> Warehouse Management -> Activities -> Transfers -> Processing Performance Data / TO Split

# Define Profiles
 - Profile for performance data (Create entry with Split single TO).
 - Profile for Transfer Order Splitting (Create entry with Sort Profile).
 - Sort profile for TO splitting (Create profile with CHARG(batch number) and MATNR(material number)).

# Control for Performance Data Processing / Define TO Split
 - Performance data control.
    Assign Movement type (ex. 601), Source storage type (ex. 003) and Destination storage type (ex. 916) to
    the created profiles (Performance data profile and TO Splitting profile).