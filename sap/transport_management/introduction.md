# --------------------------------- #
# Transport Management Introduction #
# --------------------------------- #

# [TM] supports all kinds of complex scenarios for shipper(s) and LSP (logistic service providers):
    - Scenario Types (inbound, outbound, domestic and international).
    - Kinds of Goods/Cargo (general, bulk, fluid, packaged and loose).
    - Shipping Types (Less than truck load(LTL), Full truck load(FTL), Less than container load(LCL), Full container load(FCL),
    Courier express parcel(CEP)).
    - Movement Types (direct shipment, unimodal, multimodal, port-to-port, door-to-door and export shipment).
    - Stage Types (pickup, pre-carriage, main carriage, on-carriage, delivery, drayage and haulage).
    - Parties and Roles (ordering party, shipper/sender, consignee/recipient, invoicing party, payment party, notifying party,
    agreement party, importer/exporter and forwarder/carrier).
    - Legal Documentation (House bill of lading(HBL), House air waybills(HAWB), manifests and delivery notes).


# Capabilities in order:
    - (1) Requirements and Order Management
    - (2) Transportation Planning
    - (3) Transportation Execution
    - (4) Freight Costing and Settlement
    - (5) Analytics and Collaboration


# 1. Requirements and Order Management
    Derived from same system: Sales order, Delivery
    Derived from external S/4HANA ERP: Order-based Transportation Requirement (OTR), Delivery-based Transportation 
    Requirement (DTR). Forwarding orders and quotations for LSP
    These source documents are used to create freight units (FUs).

# 2. Transportation Planning
    FUs are assigned to transportation resources to create freight orders (FOs). The Transportation Cockpit supports 
    planning, load optimization, carrier selection, and tendering.

# 3. Transportation Execution
    Freight orders guide the physical movement of goods. Loading, quantities, shipment events, and execution 
    statuses are recorded to track transportation progress.

# 4. Freight Costing and Settlement
    Agreements, rates, and calculation sheets determine customer charges and carrier costs. Settlement documents 
    transfer the results to ERP for invoicing, accruals, and payment processing.

# 5. Analytics and Collaboration
    Overview pages, reports, and KPI dashboards provide real-time visibility into transportation activities. 
    Role-specific views help users monitor operations and make decisions.
