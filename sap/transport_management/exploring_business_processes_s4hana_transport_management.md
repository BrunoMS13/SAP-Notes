# Master Data Overview
# SAP Transportation Management Master Data: An Overview

SAP Transportation Management (SAP TM) is a robust and comprehensive solution designed to manage and optimize transportation processes. The master data within SAP TM forms the foundation for efficient transportation planning and execution. It serves as the single source of truth, encompassing critical information about organizational structures, products, business partners, transportation routes, and logistical parameters. Accurate and well-maintained master data ensures seamless interoperability between various business functions, enabling precise planning, execution, and monitoring of transportation activities. This minimizes errors, reduces operational costs, and enhances customer satisfaction by providing consistent and reliable data across the entire supply chain. Moreover, master data facilitates regulatory compliance and enables advanced analytics, driving informed decision-making and strategic planning.
A person is seated at a desk working on a computer, surrounded by a modern office environment. She is wearing a blue sweater and are focused on the screens in front of her. Two computer monitors display various data and business processes. The left monitor shows a spreadsheet or database interface, while the right monitor features a detailed layout with charts and graphs. To the right of the image, there are labeled diagrams illustrating different business data categories, including Business Partner Master Data, Material Masters, and Transportation Network. These categories are connected by arrows, indicating the flow of information and the integration of master data as a single source of truth for various business processes. The office has natural light coming in from a window, and there are plants and decorative items in the background, creating a productive workspace atmosphere.

Master data relevant to SAP Transportation Management (SAP TM) encompasses a variety of key elements essential for the smooth and efficient functioning of transportation processes. These master data elements include, but are not limited to:

    Organizational Structures: The hierarchical arrangements within an organization that define the various departments, units, and their relationships.
    Material Masters: The comprehensive database of materials that records all pertinent details and attributes of the materials used within the transportation process.
    Business Partners: The records of all entities such as suppliers, customers, carriers, and so on, that interact and engage in business transactions.
    Transportation Mode: The different types of transportation methods, such as road, rail, air, and sea, utilized in the logistics chain.
    Means of Transport: Means of Transport: The specific vehicles or vessels used to carry goods, such as trucks, ships, airplanes, and trains.
    Transportation Networks: The connections that facilitate the movement of goods from origin to destination.
    Location: The geographical points, such as warehouses, ports, and distribution centers, that play a crucial role in the supply chain.
    Zones: The predefined geographical areas that help in planning and managing transportation activities.
    Lanes: The specific paths between two locations that are frequently used for transportation.
    Routes The predefined pathways that goods follow during transportation, which may include multiple stops and various transportation modes.
    Schedules: The planned timelines for transportation activities and movements, including departure and arrival times.
    Resources: The assets, such as equipment, and vehicles, that are deployed to execute transportation tasks.
    Conditions: The specific criteria or restrictions that must be met during the transportation process.
    Incompatibilities: The constraints and restrictions that prohibit certain combinations of goods, modes, or resources.

In Units 2, 3, and 4, we will delve deeply into each of these master data types, providing insights and practical guidance on how to effectively utilize each type of data within SAP Transportation Management.
Transportation Mode, Means of Transport, and Vehicle Resource.
Definition, Role, and Examples
A diagram illustrates the hierarchy of transport logistics. A scale indicates that the top is more general and the bottom is more specific. At the top of the scale is Mode of Transport (MoT), which refers to the type of transport, such as road or sea. Below it is Means of Transport (MTr), which refers to the method of transport, such as railcar, truck, refrigerated truck, LTL (Less Than Truckload), FTL (Full Truckload), barge, or vessel. At the bottom is Vehicle/Resource, which includes details like maintenance of capacities and depot locations for individual vehicles. The right side of the image provides additional explanations for each term: MoT is the type of transport, MTr is the method of transport, and Vehicles/Resources pertain to maintenance and locations for individual vehicles.

The relationship between Mode of Transport, Means of Transport, and Vehicle Resource is hierarchically structured and interdependent, forming a cohesive system for the conveyance of goods.

    Mode of Transport: The transportation mode delineates the method by which goods are conveyed, such as via sea freight, air cargo, rail transport, or road transport.
        Definition: This defines the overarching method by which goods are moved from one place to another, such as by sea, air, rail, or road.
        Role: It sets the framework and parameters within which specific means of transport operate.
        Example: Sea freight, air cargo, rail transport, road transport.

    Means of Transport: This term denotes a categorization of vehicle resources that are designated to a specific transportation method.
        Definition: This is a classification encompassing different types of vehicles that are used within a particular transportation mode.
        Role: It forms the bridge between the transportation mode and the specific vehicle resources. It provides a generalized grouping of transport vehicles suited to a particular mode.
        Example: Cargo ships (sea freight), aircraft (air cargo), trains (rail transport), trucks (road transport).

    Vehicle Resource: An entity representing an individual instance or a collection of identical instances of a particular means of transport, facilitating the provision of transportation services.
        Definition: This represents specific instances or sets of similar instances of a particular means of transport.
        Role: It's the actual asset that provides transportation services, operating within the means of transport category for a given transportation mode.
        Example: A specific cargo ship like the MSC Oscar (within the means of transport "cargo ships" under the sea freight mode), a Boeing 747 freighter (within the means of transport "aircraft" under air cargo), a set of locomotives (within the means of transport "trains" under rail transport), or a fleet of Volvo FH16 trucks (within the means of transport "trucks" under road transport).

Relationship Flow:

    Top-Level (Transportation Mode): Establishes the broad method of transportation (for example, sea freight).
    Middle-Level (Means of Transport): Categorizes types of vehicles suitable for that method (for example, cargo ships for sea freight).
    Bottom-Level (Vehicle Resource): Details actual vehicles or fleets operating within the means of transport category (for example, MSC Oscar for cargo ships).

The image is a flowchart with three columns labeled Mode of Transport (MoT), Means of Transport (MTr), and Vehicle Resource. The Mode of Transport column lists Sea and Road as types of transport. The Means of Transport column lists Container Ship and Cargo Ship as methods of transport. The Vehicle Resource column lists Bounty and Santa Maria as individual vehicles. Arrows connect Sea to both Container Ship and Cargo Ship, and further arrows connect Container Ship to Bounty and Cargo Ship to Santa Maria. The chart illustrates the relationship between types of transport, methods of transport, and specific vehicles.

In summary, the transportation mode defines the method, the means of transport categorizes the vehicle types under this method, and the vehicle resource specifies the actual vehicles that provide the transportation services. Each layer depends on the other to effectively facilitate the movement of goods.

# Organizational Structure: Generic View

An organizational structure represents the framework of a company. Each department within the company has designated organizational units, which serve as distinct segments responsible for specific functions and operations.

This structured approach ensures that data and transactions are efficiently segregated and managed within the appropriate channels. For instance, the sales department may have its own set of sales organizations, distribution channels, and sales groups. In contrast, the logistics department might have unique shipping points and transportation planning units. Companies can streamline operations, maintain accountability, and optimize resource allocation by assigning dedicated organizational units to each department.

Organizational structures play a crucial role in restricting user access and are one of the basic requirements for defining authorization and role setups. Before loading data and executing transactions in SAP S/4HANA, it is necessary to define the company’s entities within the system.
Organizational Structure: SAP Transportation Management Specific View
A flowchart illustrating the organizational structure of a logistics service provider (LSP). At the top is a Forwarding House connected to various units. Below, the Corporate Organization includes Company Organization and Company Code. The Purchasing Organization and Sales Organization branches extend from the corporate structure, each containing sub-units like Purchasing Group, Sales Office, and Sales Group. The Plant section includes Transportation Planning Point, Storage Location, Loading Point, Warehouse, and Shipping Point. The diagram also shows connections to Planning and Execution Organization and Sales Area, which includes Distribution Channel and Division. The entire structure is divided into TM and Core ERP sections.

In Transportation Management (TM), the organizational structure can be based on the structure of a connected SAP system. Still, creating organizational units that do not exist in SAP is also possible.

SAP S/4HANA TM maps its organizational units with S/4 organizational units through the "BSG Org. Unit" field. Plant and shipping points are created as locations in SAP S/4HANA TM.

    Corporate Organization: This organizational unit is optional and serves as a single entry point into the organization's structure in TM. It represents the group organization.
    Company Organization: This organizational unit corresponds to the company code. It establishes the local currency and represents the company's legal entity.
    Sales Organization: The sales organization structures and manages the sale of logistics services and their execution. Multiple sales organizations can be assigned to a company organization. The sales organization is relevant in the following documents:
        Forwarding orders
        Forwarding quotations
        Forwarding settlements

    Purchase Organization and Purchasing Group: The purchasing organization procures materials and services. The following documents are generally associated with the purchasing organization:
        Freight orders
        Freight bookings
        Freight settlements

    Planning and Execution Organization: The planning and execution organization is responsible for planning and/or executing shipments. These organizational units are used in the following documents and objects:
        Resources
        Freight orders
    Forwarding House: In some Logistics Service Provider (LSP) scenarios, it is essential for the same organizational unit to perform multiple tasks, such as selling transportation services to customers and purchasing transportation services from vendors. A generic organizational unit of the type "Forwarding House" can be defined in these scenarios. A forwarding house can handle sales, purchasing, and planning/execution activities, allowing it to be assigned to various documents and objects related to these functions.

# Material Master

Material master data, also known as product master data, classifies, identifies, and characterizes materials and services. The material master serves as a comprehensive repository of information regarding materials transported, manufactured, sold, or purchased by an organization.

Each material is assigned a unique identifier and created as a single record in the system. This centralized data is accessible to all relevant departments, including purchasing, inventory management, MRP, transportation, and warehousing, reducing inconsistencies and eliminating redundancy.
A flowchart illustrating a material management process. At the top, Initial level is labeled as Material. Below, the Main work level includes icons representing Purchasing, Work Scheduling, Sales, Accounting, MRP (Material Requirements Planning), and Forecasting. Further down, the Additional data level lists texts, units of measure, additional EANs (European Article Numbers), document data, and consumption. On the right side are four categories: Raw materials, Operating Supplies, Semi-finished, and Finished products, each accompanied by relevant icons.
Material Types

When creating a new material master record, selecting a material type to which the material will be assigned is essential. Materials sharing similar properties are grouped under the same material type. Examples of material types include raw materials, semifinished products, and finished products. In SAP S/4HANA, various predefined material types are available, and additional material types can be configured in Customizing to meet specific business requirements. Some SAP-provided material types include the following:

    Finished goods FERT: A finished good is a material manufactured by some form of production from items, such as raw materials. A finished good isn’t purchased and thus doesn’t contain any purchasing information. However, a finished good is sold and thus does contain sales information.
    Trading goods HAWA: Trading goods are generally materials purchased from suppliers and sold. This material type only allows purchasing and sales information because no internal operations are carried out on these materials. An example of a trading good can be found at many computer manufacturers that sell their own manufactured goods (computers) but also may sell printers and routers. Trading goods are not manufactured by the company but bought from other manufacturers and sold alongside their own computers instead.
    Services (DIEN): Services are internally or externally supplied by a supplier. Service material master records don’t have storage information.
    Packaging material VERP: material Unlike material type LEER (empties), the packaging material type is for materials that are packaged but are free of charge to the customer in the delivery process. Although free, the packaging material may still have value, and a physical inventory is recorded.
    Returnable packaging LEIH: Reusable packaging material is used to pack finished goods for the customer. When the finished good is unpacked, the customer must return the returnable packaging material to the supplier.

Th material type is a critical element within the material master record, as it performs several key control functions. It determines how the material number is assigned, whether internally or by the user, and whether it's numeric, alphanumeric, or within a specific number range. Additionally, it controls which screens are displayed and in what order during the material master maintenance process. It influences the field selection control by dictating which fields are mandatory, optional, hidden, or display-only in the material master record.
Material Views

The material master data is categorized into multiple views, each aligned with a particular user department, ensuring relevant information is accessible and manageable by the respective teams. This structure allows customized access to data pertinent to various operations such as purchasing, inventory management, MRP, work scheduling, and warehousing. Each view consolidates data specific to the department's activities, simplifying the process and ensuring efficient data management.
The image displays a structured data table with various categories related to material information. The categories include Basic Data 1-view with examples of material number, description, and Base Unit of Measure; Sales org 1-view with Delivering Plant, Material Group, and Tax Classification; Sales org 2-view with Material Price Group, Item Category Group, and Product Hierarchy; General/Plant-view with Transportation Group and Material Freight Group and finally the Sales Text-view with Item Text. Each category is represented with a corresponding icon of stacked disks.

Transportation Related Attributes: Within the material master, the Sales view (Sales: General/Plant) specifies the following transport-relevant attributes:

    Base Unit of Measure (BUoM): The Base Unit of Measure field is the UoM that represents the lowest level for the material.
    Alternative units of measure (AUoMs): A base unit can have alternative units of measure (AUoMs) that are multiples of the BUoM (that is, grams and kilograms).
    Dimensions: Gross Weight, Net Weight, and Volume Fields. The dimensions of a material may be relevant to shipping companies when deciding how to pack and ship material. The dimensions may determine how the material is to be shipped.
    Transportation Group: A categorization criterion that classifies materials based on similar processing conditions, facilitating efficient logistics and transportation planning. Examples include palletized goods, refrigerated goods, and dairy products.
    Material Freight Group: The Material Freight Group field is used to group materials to determine their freight classification and, ultimately, their freight code. In Transportation Management, the material freight group is transferred from the sales order item to the product item of the freight unit.

# Dangerous Goods
A large white and red tanker truck is driving along a road near an industrial area. The truck has a cylindrical tank trailer attached to it. In the background, there are several tall industrial structures, including smokestacks and towers, indicating a refinery or chemical plant. The sky is overcast, giving the scene a muted appearance. The truck is in motion, with its wheels visible on the road. An alert symbol is superimposed on the image, suggesting a warning or caution related to the truck or the surrounding environment. The overall atmosphere conveys a sense of industrial activity and potential hazards associated with transporting materials.

Dangerous goods, also known as hazardous materials or hazmat, are solids, liquids, or gases that pose risks to people, living organisms, property, or the environment. These substances are subject to chemical safety laws that vary between countries. They include radioactive, flammable, explosive, corrosive, oxidizing, asphyxiating, biohazardous, toxic, pathogenic, or allergenic materials. Physical conditions, such as compressed gases, liquids, or hot materials, are also included. This category covers goods containing such materials or chemicals or those exhibiting hazardous characteristics under specific circumstances.

The dangerous goods functions in Transportation Management (TM) enable you to transport dangerous goods (DG) in compliance with international regulations.

    Dangerous Goods Based on Product Compliance
    Dangerous Good Processing based on PS&S

Note

One can choose between DG processing based on PS&S and DG processing based on product compliance. Since these two solutions are mutually exclusive, only one can be activated at a time.

Dangerous goods experts classify products according to the applicable dangerous goods regulations. This information is used by a compliance check carried out in all relevant business documents in the value chain, such as intracompany stock transfer orders, sales orders, outbound deliveries, and freight orders. The check verifies if the transport of this product is allowed. If not, the check blocks the business document.
Dangerous Goods Indicator Profile

The DG indicator profile field is defined in SAP Environment, Health, and Safety Management (SAP EHS Management). A dangerous goods indicator profile can be selected if the material being added is relevant for dangerous goods and any documentation accompanying that type of material.
The image displays a user interface from SAP, specifically the Change Material screen for a material identified as TM-MAT-01. At the top, there is a title that reads DG Indicator Profile in Change Material TM-MAT-01. The interface features various sections including Basic data 1, Basic data 2, Classification, and others. On the right side, there is a pop-up window labeled DG indicator profile with a table containing five items. Each item includes a code (e.g., P011, GPP), a description of the DG profile, and indications of relevance for dangerous goods checks and documents. The columns are labeled Description of DG Profile, Rel. for DG checks, and Related DG documents. The interface also shows options for searching and selecting items, with a filter option labeled Hide Filters. The overall layout is organized and designed for users to manage and review data related to dangerous goods indicators associated with the specified material. The background is a light color, enhancing readability, and the interface elements are clearly defined with distinct sections.

    Environmentally Relevant
    Highly Viscous and In Bulk/Liquids

# Using Business Partner for Transportation Management
Objective
After completing this lesson, you will be able to explain the role of business partners in the context of transportation management.
Business Partner
Introduction to Business Partners
Business Partner Definition:

A business partner refers to any entity with which a company has established a business relationship. Business partners can be classified into three primary categories: person, organization, and group. An organization may represent a company, a department within a company, or an association. A group could include entities such as a shared living arrangement, a married couple, or an executive board.

An infographic illustrating the concept of a Business Partner. It shows a Customer on the left, a handshake symbol in the center representing the Business Partner, and a Vendor on the right. Below the Business Partner is a list of Business Partner Categories: Person, Organization, and Group. Arrows connect the Customer to the Business Partner and the Business Partner to the Vendor.

In SAP S/4HANA, the master data of customers and vendors is handled through business partner master data. This approach allows for centralized maintenance of customer and vendor master data, which were previously managed separately in SAP ERP. This centralized maintenance enables business partners to be assigned to multiple company codes.
An illustration depicting a Business Partner structure. At the center is a circle labeled Business Partner with a handshake icon, indicating a general business partner identified as General (000000). Two branches extend from this circle: one leading to a Vendor section, which includes a computer user icon and mentions assigning vendor roles: Vendor (FLVN01) and FI Vendor (FLVN00). The other branch leads to a Customer section, featuring a person holding a mobile device icon and stating the assignment of customer roles: Customer (FLCU01) and FI Customer (FLCU00).

When a new business partner is created in the system, they are automatically given the role of General Business Partner. The general data for a business partner is defined once, after which specific business partner roles (BP roles) are assigned. Each business partner role reflects a particular business context in which the business partner can participate.

To create a customer, create a generic business partner, and assign the roles of "Customer" and "FI Customer" to the business partner. Assigning these roles activates the relevant additional fields: the "FI Customer" role makes sales and organizational fields available, while the "Customer" role enables all sales-relevant fields.

Similarly, to create a vendor, create a generic business partner, and then assign the roles of "Vendor" and "FI Vendor" to the business partner.
An infographic titled Business Partner Master Data. It features three sections: First, a central section labeled General data with a database icon, this section contains a smaller section labeled business partner, with a person icon. The whole general business partner data section is valid for all organizational units. A smaller section on the left labeled Role: Customer also with a person icon contains sales area data and is relevant for sales. A section on the right labeled Role: FI Customer with a person icon indicates company code data relevant for accounting. These two separate roles are connected to the general data entry.

The following business partner roles are most commonly used in TM:

    Business Partner General (000000)
    Customer (FLCU01)
    FI Customer (FLCU00)
    Vendor (FLVN01 )
    FI Vendor (FLVN00)
    Carrier (CRM010)
    Global Trade Services: Customs Office (SLLCOF)
    Driver (TM0001)
    Organizational Unit (BUP004)
    Contact Person (BUP001)
    Prospect (BUP002)
    Employee (BUP003)
    Internet User (BUP005)

The "Customer" (FLCU01) role enables the maintenance of data and fields at the sales organization level. In contrast, the "Vendor" (FLVN01) and "Carrier" (CRM010) roles permit the maintenance of data and fields at the purchasing organization level. Moreover, the "FI Customer" (FLCU001) and "FI Vendor" (FLVN00) roles support data and field maintenance at the company code level.

The "Carrier" (CRM010) role encompasses the data of the "Vendor" (FLVN01) role. It includes additional Transportation Management (TM)-specific information such as the Regulated Agent Code, IATA Agent Code, CASS Account, SCAC Codes, Airline Codes, Service Level Codes, and Carrier Service Codes.

The "Driver" (TM0001) role contains driver-specific data, including home location, qualifications, shift sequences, validity periods, and absences.
The image illustrates a flowchart related to business partners in a system. It features a central circle labeled Business Partner with the designation General (000000) and an icon of a handshake. From this central point, there are two branches. One branch leads to a box labeled Assign Customer Role(s): Customer (FLCU01) and FI Customer (FLCU00) with an icon of a person holding a mobile device, indicating the customer role assignment. The other branch leads to a box labeled Assign Partner Function(s): SP: Sold-to-party, SH: Ship-to-party, BP: Bill-to-party, PY: Payer, detailing various partner functions associated with the business partner.

Assigning partner functions in the SAP system defines the specific roles that business partners assume during various processes. A partner function represents a particular responsibility a business partner can take on. For instance, one customer might order products (partner function: Sold-to party), while another might receive the material (partner function: Ship-to party). A single partner can have multiple functions. For example, if all partner functions within the customer category are assigned to one business partner, that customer would serve as the sold-to party, ship-to party, payer, and bill-to party.
Business Partner Determination

Business partner determination enables the system to automatically identify and assign business partners to various business document types. This feature streamlines entering business partners into business documents, reducing manual errors and enhancing efficiency.

A partner determination profile is created to determine business partners automatically. This profile must be assigned to the specific business document for which it will be used. Different profiles can be assigned to various types of business documents. The following business document types can have specific profiles assigned:
The image is a diagram illustrating a relationship between a Determination Profile and a TM Business Document. On the left side, there is a rectangular box labeled Determination Profile. An arrow points from this box to the right, leading to a larger rectangular box titled TM Business Document. Inside the TM Business Document box, there is a section labeled Business Partner, which contains an icon representing a person or group of people. The overall layout is clear, with a focus on the flow from the determination profile to the business document, highlighting the connection between these two elements in a business context. The use of blue outlines and labels enhances the visual clarity of the diagram.

    Freight orders
    Freight bookings
    Freight settlement documents
    Freight agreement RFQs
    Freight agreements
    Internal agreements

Watch the simulation Review Carrier Information to learn more about business partner master data.

# Transportation Network Overview

In this lesson, the focus is on understanding the master data relevant to SAP Transportation Management (SAP TM) in the context of the transportation network. SAP TM uses various types of master data, including locations, transportation zones, transportation lanes, and transshipment locations, to support comprehensive end-to-end logistics scenarios for manufacturers and distributors.
A diagram shows a map with various symbols representing different elements. There are blue dots labeled as Location, blue squares labeled as Transshipment Location, dashed circles labeled as Transportation Zone, and arrows labeled as Transportation Lane. The map has three transportation zones, each containing multiple locations and at least one transshipment location. Arrows indicate transportation lanes connecting transportation zones.

The transportation network is a pivotal component in Transportation Management (TM) that defines the direct reachability between various locations and transshipment locations, providing a comprehensive framework for freight movement. This network lays out clear connections between locations, allowing for the efficient transportation of goods from one point to another.

Transshipment locations play a critical role in this network as well. They are designed to facilitate the reloading of goods from one transportation option to another, ensuring the continuity of the freight movement process. These locations are essential for intermodal transport, where multiple transportation methods, such as road, rail, and sea, are employed to move goods efficiently.

Advanced planning algorithms use transportation network definition to determine the most efficient path through the network, selecting the best routes and assigning the most suitable carriers for given transportation demands. This optimized path ensures timely delivery and minimizes costs by considering various factors, including freight and forwarding agreements that contain rates based on trade lanes.
Key Terms

To fully utilize the transportation network, several critical components must be understood and defined:

    Locations: Locations constitute the basic building blocks of the network, marking the start and end points of transportation routes.
    Transportation Zones: These zones group multiple locations. By aggregating locations into zones, it becomes easier to plan and optimize transportation across broader areas.
    Transportation Lanes: These lanes define the direct routes between locations and zones.
    Transshipment Locations: Transshipment locations ensure that goods can be seamlessly transferred from one mode of transportation to another.
    Default Routes: These routes define specific paths from the source to the destination through a sequence of stops.
    Schedules Schedules outline recurring routes with fixed dates and times along a predefined sequence of locations.
    Trade Lanes: These lanes offer an additional dimension to the transportation network by defining business relationships with customers and carriers.

Utilizing Transportation Network Master Data
Transportation Network Cockpit
Screenshot of a computer monitor displaying the Transportation Network Cockpit interface. The interface includes a navigation menu on the left with options such as Organization, Transportation Network, Locations, Transportation Zones, Transportation Lanes, Schedule, Default Route, Trade Lane, Resources, Charge Management and Service Product Catalog, Dangerous Goods Management, and General. The main section shows a selection panel with tabs for Location, Transportation Zone, Transportation Lane, Trade Lane, Schedule, and Default Route. Search criteria include Location, City, Postal Code, Country Key, and Region. A map with location markers is displayed at the bottom, and a result overview panel on the right lists locations with IDs. The title Transportation Network Cockpit is at the top of the screen.

Transportation Network Cockpit can be used to display the following master data of the transportation network on a map:

    Locations
    Transportation zones
    Transportation lanes
    Trade lanes
    Schedules
    Default routes
    Connections
    Business partner networks

Path Finder
The image shows a screenshot of a software interface titled Path Finder. The interface is used to find transportation network paths. The Find Transportation Network Path section includes fields for Source Location (filled with VANOFFICE), Destination Location (filled with BURNABYOFFICE), Valid-From Date (03.02.2017), and Time (23:06:50). Options include Determine Connections and Determine Path, with the latter selected. There are also fields for Search Depth (Explicit), Search Depth (Implicit), Transportation Mode, and Means of Transport. The Path Finder Result section shows the result of the path request, indicating one result path from VANOFFICE to BURNABYOFFICE with one stage and a transportation lane labeled 0001.

Path finder searches for legs within the transportation network, considering the following elements:

    Locations
    Transshipment locations
    Transportation lanes
    Schedules
    Transportation zones

By using this function, it becomes straightforward to determine whether a connection exists between two locations, which means verifying the correct configuration of master data. This function is available in the Transportation Network Cockpit and on the user interface for transportation proposals. The Path Finder result is displayed on the geographical map in both cases.

# Locations

A location is a logical or physical place where products or resources are managed on a quantity basis.

    Products or freight units are transported between various locations.
    Each product or freight unit has a source and destination location.
    Products or freight units may transit through multiple locations along their journey.
    Products or freight units are loaded and unloaded at these locations.

The diagram depicts the definition or determination of TM location master data. In the center is a box for the TM location, which always contains a location with a location type. From the left, the box ERP Master Data includes objects such as plant, shipping point, customer, and vendor and points to the TM location. From the right, the box Locations without reference to ERP master contains objects such as port, airport, railway station, hub, and gateway and points to the TM location. Below the flowchart, additional attributes of locations are listed. Locations can act as transshipment locations, be assigned to transportation zones, be specific to transactional data (one-time addresses), and be the nodes of the transportation networks.

In transportation processes, a source location, a destination location, and any necessary transshipment locations must be designated to complete the transportation process. A name identifies each location. To define a location, its name and type must be specified. In Transportation Management (TM), the location type is used to categorize locations. Location types are not used to control business processes but serve as a reference. TM provides standard location types, such as:

    Production plant (1001)
    Distribution center (1002)
    Shipping point (1003)
    Transportation zone (1005)
    Business Partner (1021)
    Terminal (1030)
    Store (1040)
    Port (1100)
    Airport (1110)
    Railway station (1120)
    Container freight station (1130)
    Hub (1140)
    Gateway (1150)
    Container yard (1160)
    Warehouse (1170)
    Carrier warehouse (1180)
    Loading point (1200)

# One time Locations

Any locations that do not need to be stored permanently in the system as master data can be stored as one-time locations. A one-time location is stored as a transient master data object in the system. These are used in business processes that require the input of locations not defined as master data objects, such as the creation of forwarding orders. The system creates one-time locations based on one-time address details.

A one-time location is characterized by the organization’s name, address data, communication data, or a combination. A note can be created for each one-time location, with only one note per location and language.
Locations of Business Partners

A business partner can have multiple standard and delivery addresses and requires one valid standard address at any time. In TM, multiple locations can be assigned to a single business partner. A corresponding location can be created for each relevant address. The address number of the location matches that of the business partner. When TM receives a sales document or outbound delivery, it uses the address data to determine the correct location, taking into account the validity dates of the address.
Creating Locations
Creating Locations
Diagram illustrating the process of creating locations. The central oval labeled How to Create Locations is connected to three other ovals. The Business Partner oval is linked by arrows labeled Report and BAdI pointing towards the central oval. The Transactional Data oval is linked by an arrow labeled Automatic pointing towards the central oval. The Shipping Point Plant oval is linked by arrows labeled Report to Create and Report to Update pointing towards the central oval.
Creating Locations Using a Report

Report /SAPAPO/CREATE_LOCATION can be utilized to create new locations for plants, shipping points, and business partners. This is particularly helpful for managing many entities requiring locations.

To execute the report, selections are made from plants, shipping points, and business partners. Options are available to create locations solely for the entities' standard addresses or for the standard and delivery addresses. The report identifies all selected entities that lack a location, and the system performs the following actions:

    Creates a location using the entity's existing address.
    Calculates geocodes.
    Creates a transportation zone location if necessary.
    Updates the location to zone assignment.

Creating Locations from Business Documents:

When creating or updating documents relevant to Transportation Management (TM), the system verifies the presence of all necessary locations representing plants, shipping points, and business partners. If a required location has not been created, the system will automatically generate it. Locations can be created on demand from the following TM-relevant business document categories:

    SD Documents: Sales Order (SO)
    MM Documents: Purchase Order (PO), Stock Transfer Order (STO)
    Deliveries: Outbound Deliveries, Inbound Deliveries

Creating Locations out of Business Partner Master

For business partners, the system can be configured to create locations immediately upon the creation and saving of a business partner. This configuration requires the implementation of the business add-in (BAdI) /SAPAPO/LOC_CREATE, allowing the specification of conditions for creating or updating a location when a business partner is saved. Once a location is created, the system automatically triggers updates when changes are made to the business partner's address.

# Transportation Zones
Definition

A transportation zone is a business object that aggregates multiple locations. This business object is used to group locations into transportation zones. The system can propagate certain properties assigned to a transportation zone to all locations within it, minimizing the volume of master data maintained.

Transportation zones can encompass individual locations, one-time locations, and subzones within other zones. For instance, all locations supplied by the same warehouse (whether individual locations or transportation zones) can be aggregated into a single transportation zone.

As transportation zones are not physical entities, they do not possess addresses. Nevertheless, geographical coordinates can be assigned to them. SAP TM provides two options for calculating these coordinates. The system can either estimate the center point of the zone based on the coordinates of all included locations after defining the locations, regions, or postal codes, or the geographical coordinates can be manually entered into SAP TM.

Map of North America showing transportation zones with arrows indicating movement of goods. The map is divided into two transportation zones. Within each zone, there are several icons representing different locations. Arrows labeled Outbound point from a factory to the upper transportation zone. Arrows labeled Inbound point from the lower transportation zone to a second factory. A Replenishment arrow points from the second to the first factory. The zones are outlined with orange lines, and the icons are connected with dotted and solid lines to show the flow of goods. A truck is always assigned to represent the mode of transport.

Each transportation zone is uniquely identified by a specific name. The combination of the name and type distinctly defines and specifies every transportation zone. In Transportation Management (TM), the types of transportation zones include:

    Direct zone: Locations are assigned to the transportation zone directly by entering the name of each location.
    Postal code zone: Locations are assigned to the transportation zone by specifying a valid postal code range for a particular country or region.
    Region zone: Locations are assigned to the transportation zone by specifying a country/region and a specific region. If only a country/region is entered, the system automatically includes all regions within that country/region.
    Mixed zone: A mixed zone combines any other zone types.

Transportation Zone Hierarchy

The image consists of two diagrams. The left diagram is a hierarchical tree structure showing the geographical breakdown of the USA. At the top is USA, branching into Midwest and Southeast. Midwest further branches into Illinois and Minnesota, with Illinois branching into 60523. The right diagram is a Venn diagram with three nested circles. The largest circle is labeled USA, containing two smaller circles labeled Midwest and Southeast. Each smaller circle contains several location markers.

A hierarchy that can be defined for organizing transportation zones. This object structures transportation zones hierarchically by allowing the assignment of one transportation zone to another. Therefore, all locations in a subordinate zone automatically become part of the superordinate zone. Transportation zones within a hierarchy inherit properties from their superior zone. The following conditions apply when defining a transportation zone hierarchy:

    A transportation zone cannot be assigned to itself.
    A transportation zone cannot be assigned to another zone if it already contains that zone.

The zone hierarchy can be leveraged in the following scenarios:

    The VSR optimizer considers the transportation zone hierarchy during the optimization run.
    The lane determination function considers the transportation zone hierarchy when identifying a specific transportation lane.
    The transshipment location determination function uses the transportation zone hierarchy to identify all valid transshipment locations for a given location.

# Transshipment Location
Definition

A transshipment location is used for unloading goods from one vehicle resource and loading them onto another during transportation.

Diagram illustrating a supply chain process. The process starts at Plant A, followed by transportation via ship to a transportation zone containing a transshipment location. At the transshipment location goods are moved to another type of transportation. The example shows goods transported by truck to customers, represented by three icons of people at desks. Alternatively, goods in this example are transported by train from the transshipment location to Plant B.

Transshipment locations are applicable when different means of transport or carriers are required in the transportation process. These locations are also used to consolidate or deconsolidate goods for transport.

A transshipment location is defined by assigning it to another location or a transportation zone. When assigned to a transportation zone, it can serve as a transshipment location for all locations within that zone.

# Transportation Lanes
Definition: Transportation lanes represent the relationship between two locations, two transportation zones, or a combination of locations and transportation zones that expresses the direct approachability of the locations, or all locations, within the transportation zones for a specific means of transport (MTr). Carriers can be assigned to the transportation lane as needed.

Using transportation zones as the source, destination, or both considerably reduces the number of transportation lanes to maintain. A transportation lane points only in one direction. To model the reverse direction, you must create another transportation lane.
The image depicts a transportation lane. On the left side, there is an icon of a factory, and on the right side, there is a location pin icon. A blue arrow labeled Transportation Lane points from the factory to the location pin.

The transportation lane controls how goods can be transported from one location to another.

Transportation lanes play a key role in SAP TM. They control:

    Which location can forward goods to another location
    Which means of transport can be used to do so
    Which carrier can supply a vehicle for the means of transport

Creating Transportation Lanes
The image shows a diagram with a Plant connected to a DC (Distribution Center), a Customer, a Supplier, and a Transportation Zone. Arrows indicate the transportation lanes between these entities. The Transportation Zone is depicted as a circular area with multiple points. The Supplier is shown with a forklift carrying goods. A person icon represents the Customer. The DC is depicted as a building with loading docks.

Transportation lanes represent a direct connection between two locations or transportation zones to transport freight from one location to another. They're typically maintained on transportation zone level and are defined by:

    Source and Destination
    Direction
    Available MTr

    Optional: Carrier per MTr

Maintenance:

    Individual
    Mass maintenance

Transport Lane Creation:

    Tr.Lane: Enter source and destination locations or zones to create a transportation lane.
    Intra-Zone Lane/Loc. Transp. Lane:
        Define an intrazone lane by specifying a transportation zone.
        Define a location transportation lane by specifying a particular location.
    Mass Maint. (Create): Create multiple transportation lanes by copying an existing one.

Means of Transport Assignment: Means of transport facilitates the movement of goods between the locations or zones of a transportation lane. Attributes for the means of transport, which apply to transportation activities between the source and destination of the goods, including transportation duration, distance, and costs, must be specified.

Carrier Assignment: A carrier provides services along a transportation lane for a specific means of transport. Carriers are assigned to the transportation lane by linking them to the means of transport. Once a carrier is assigned to the means of transport, attributes specific to this combination, such as transportation costs, priority, share of business, or capacity for transportation allocation, can be specified.

Note

The creation of a transportation lane requires the assignment of at least one means of transport. Also, to enable automatic carrier selection, carriers must be assigned to means of transport.
Trade Lane
Trade Lane

A trade lane can have a mode of transport and means of transport. The trade lane defines a transportation direction characterized by the orientation, source, and destination. Possible orientations are inbound, outbound, from, to, within, and along.

A trade lane is an abstract representation of transport classification. A trade lane instance does not represent a connection between any transportation network nodes (zone/location, and so on). It's a context-independent classification of any transportation-related activities.

Examples of trade lanes include:

    All transports from Hamburg to New York
    All transports within Germany
    All transports that leave Bavaria

Note

It's important to note that trade lanes do not replace transportation lanes.
There's no direct link between a trade lane and a transportation lane.
Trade Lane Hierarchy and Overlap:

Trade lanes can form hierarchical structures, where more generic trade lanes encompass more specific trade lanes. For instance: "Within Germany Using Means of Transport Truck" includes:

    "Along the Way from Frankfurt to Hamburg with Means of Transport Refrigerated Truck"
    "Within Bavaria with Means of Transport Truck for Liquids"

Trade lanes may also overlap. Examples include:

    "From Germany Using Airplane"
    "Within Europe Using Airplane"

Hierarchy Components:

Trade lane hierarchies can include:

    Transportation Zone Hierarchies:

    For example, "from Germany" includes "from Bavaria," which further includes "from Plant_Munchen."
    Hierarchical Relationships between Means of Transport:

    For instance, "Within Germany Using Means of Transport Truck" includes "Within Germany Using Means of Transport Refrigerated Truck."
    Means of Transport/Transportation Mode Relationships:

    For example, "Within Germany Using Transportation Mode Street" includes "Within Germany Using Means of Transport Refrigerated Truck."

Note

In previous releases, trade lanes were created from and associated with other business objects such as Business Shares, Allocations, and Freight Agreements. Now, trade lanes can be used as master data objects, allowing for creation, copying, and reuse according to business needs. A worklist is available to view all trade lanes, including information such as a where-used list.
Distance and Duration Determination (DDD)

A location is a distinct point on the Earth's surface, defined by the geographical coordinates of longitude, latitude, and altitude. These coordinates can be derived from the address data, which provides an alternate description of the same point. An address may include elements such as country, region, postal code, city, district, street, house number, and additional fields.

Geographical coordinates are displayed in degrees, minutes, and seconds within the Geographical Data section of the Location user interface (UI) and can be manually overridden. The precision field specifies the granularity of the geo-coding result, and the accuracy of these geo-coordinates depends on the quality of the address data provided.
The image displays a visual representation of two sets of geographic coordinates connected by a dotted line. The first set of coordinates, located at the bottom left, is 49.293770780153814, 8.648332530527108. This point is marked with a blue location pin icon. The second set of coordinates, situated at the top right, is 37.81819198323009, -121.9358333048717372. This point is also marked with a blue location pin icon. The dotted line between the two points suggests a curved path or trajectory, indicating a connection or distance between the two locations. The overall layout is simple and clear, focusing on the geographic coordinates and their visual representation.

The Transportation Lane master data object links two locations and records distance and duration information for each assigned means of transport. By default, this information is determined through calculating the straight-line distance, accounting for the Earth's curvature, and applying a deviation factor specific to the means of transport. If this abstraction level does not meet the accuracy requirements of business processes, more precise distances and durations can be obtained using an external Geographic Information System (GIS).

The following two options are available for calculating DDD:

    Shortest Distance Calculation: The system calculates the shortest possible route (line of flight) between locations.
    Precise Distance Calculation: By leveraging a third-party geographic information system (GIS), the system calculates the exact distance based on the means of transport.

GIS Integration Notes

    1685381 - GIS Integration: Concept and Technologyhttps://me.sap.com/notes/1685381/E
    2711181 - GIS Connector SCP Spatial Services2711181 - GIS Connector SCP Spatial Services - SAP for Me

Default Routes and Schedules
Default Routes
Definition

A default route outlines a sequence of locations from a specified origin to a predetermined destination, encompassing individual locations or entire zones. The default route acts as a blueprint for transporting goods from the origin to the destination, directing the flow through the transportation network.

Default routes can predefine the sequence of transshipment locations for intermodal transports. Truck and trailer scenarios involving dynamic recoupling can also predefine the sequence of coupling and uncoupling locations for the trailer unit.

Transportation mode, carrier, schedule, and other relevant details for each default route can be specified for each transportation stage.
Map of Germany showing a route from a Delivering Plant to a Ship-to Party with three stops. The right side of the image displays a screenshot of a software interface titled General Data. The interface includes fields for Default Route Data, such as Default Route, Description, Valid From, Valid To, Default Route Type, Transportation Mode, Dangerous Goods, and Transportation Duration. Below is a section titled Transportation Stops listing three locations: SP_1010, TMCD-HANNOVER, and DE-NRW, along with details like Location Type, Transportation Mode, and Transit Duration.

# Schedules
The Schedule function defines a sequence of stops, such as ports, airports, or gateways, valid for a specific timeframe. Ships, trucks, or airplanes can move goods at recurring intervals along the entire sequence or any part of it. The movement of goods depends on transit durations between stops, cut-off times, and the length of stay at each stop.

Schedules can be maintained for each business partner or carrier, and different loading and unloading points, such as ports and airports, can be identified.
Diagram illustrating the ocean carrier schedule between the Port of Newark and the Port of Hamburg. The top section shows a ship traveling directly between the two ports, with a schedule listing vessel names, services, and departure dates. The bottom section depicts a sailing schedule with gateways (CFS), showing additional steps involving trucks and gateways at both ports. The gateways are represented by location icons and trucks, indicating the involvement of land transportation in the shipping process.

Gateway Schedules: Gateway schedules are for transportation hubs, such as container freight stations (CFS), where freight is consolidated and deconsolidated. A reference to a carrier schedule can be entered for each transportation stage, transferring departure rules and voyages.

    Road Gateway Schedule: Defines a direct connection between two gateways via road.
    Sailing Schedule: Defines a connection between two ocean gateways, including information about ports of loading and discharge.
    Master Flight Schedule: Defines a connection between airport gateways and can be used to map connecting flights by referencing several carrier flight schedules.

Carrier Schedules: Carrier schedules define sequences of stops that do not necessarily involve gateways. By specifying departure rules, departures can be generated automatically while considering transit durations and cut-off times.

    Ocean Carrier Schedule: Defines a standard sequence of stops a ship serves.
    Carrier Flight Schedule: Defines a standard sequence of stops for a plane or connection flights with multiple stages and various carriers.
    Road Schedule: Defines a standard sequence of stops a truck serves.

Defining Transportation Capacities

Objective
After completing this lesson, you will be able to create transportation capacities.
Vehicle Resources
Resources in Transportation Management

Resources are crucial for planning and execution within SAP Transportation Management (TM). Resource data impacts order date planning by accounting for working times and available resource capacities. With bookings, resources provide the necessary capacity for executing transportation activities on freight units, including transportation, loading, and unloading.
Types of Resources
	Vehicle Resource	Used for transporting goods around the transportation network.
	Handling Resource	Provides the capacity needed to load and unload goods.
	Calendar Resource	Specifies operating hours for a location, determining when goods can be dropped off or picked up.
	Transportation Unit Resource	Represents containers in TM.
Vehicle Resources

Vehicles serve as dynamic resources for transporting goods between locations, including trucks, railcars, planes, and ships. Each vehicle resource represents a unit load, such as a trailer, container, or railcar with a specific capacity. The capacity of a vehicle can be defined using various dimensions and units of measurement, such as:

    Mass: For example, a trailer capacity of 40,000 pounds.
    Volume: For example, a container capacity of 2,200 cubic feet.
    Quantity: For example, a capacity to hold 24 pallets.

# Calendar and Handling Resource
# Handling Resources

Definition: A handling resource is an installation or device used to manage goods at a specific location. It provides the capability to load goods onto or unload goods from vehicle resources.

Handling resources are crucial for efficient transportation order processing at various locations. Examples: Doors, Forklifts. Handling resources include several parameters that help define their capabilities and limitations:
Three slots labeled A, B, and C. Slot B contains an icon of a forklift with the text x4 on it. Slots A and C are empty.

    Resource Template: Used for copying predefined resource specifications.
    Capacity Profile: This profile details the resource's capacity based on time-dependent shifts. For example, a dock may have 50 doors available in the morning and evening and reduced capacity during the day.
    Availability: Specifies the periods when the handling resource is operational.
    Downtimes: Denotes periods when the resource is unavailable.
    Qualifications: Defines any specific skills or certifications required to operate the handling resource.
    Attached Equipment: Lists any additional equipment associated with the resource.
    Grouping Attributes: These are used for grouping similar handling resources.

# Calendar Resources

Definition: A calendar resource is assigned to a calendar and optionally to a shift schedule. It's primarily used for scheduling the processing time for goods receipt and goods issue at a location. Calendar resources are employed to define the operating times for locations.
A blue icon of a calendar with a clock on the bottom left corner, followed by four horizontal blue lines of varying lengths with circular endpoints.

Calendar resources include several parameters to capture their operational schedule:

    Shifts: Defines the working periods within the calendar, such as morning, afternoon, and evening shifts.
    Downtimes: Specifies periods when the calendar resource is unavailable for operation, helping to manage maintenance and operational breaks.

# Using Conditions and Incompatibilities

Objective
After completing this lesson, you will be able to use conditions and incompatibilities to model business requirements.
Introducing Conditions and Incompatibilities Using BRFplus

This video provides a high level overview of BRFplus and how to manage incompatibilities during transportation planning.
Conditions
Business Rules Framework plus (BRFplus)

The Business Rule Framework Plus (BRFplus) is a sophisticated tool for defining, managing, and executing business rules. Its user-friendly interface facilitates the modeling and reuse of rules, thereby streamlining decision-making processes. BRFplus supports various features, including simulation, tracing, transport, and XML export and import.
Typical Use Cases for BRFplus:

    Validation of data and detection of invalid data and states

    Matching responsibilities, suitable products, and locations

    Calculation of costs, overhead, and risks

Conditions Using the Business Rules Framework Plus (BRFplus)
A diagram illustrating the Business Rules Framework plus (BRFplus). It shows a flow from Input on the left, passing through three blue sections labeled Conditions, and ending with Output on the right. The sections are designed to represent input processing through various conditions before producing an output.

The Business Rules Framework plus (BRFplus) is a comprehensive, rules-based engine widely used within SAP Transportation Management (TM) for managing complex business rules. This framework significantly reduces the need for extensive development, customization, and configuration by providing a streamlined approach to handling SAP TM conditions. These conditions act as filters for automated decision-making processes, mapping input values to corresponding output values.

In SAP TM, conditions are logical evaluations applied to various objects, such as transportation requirements or freight units. These evaluations assess whether specific criteria are met, guiding whether particular actions or decisions should be executed during transportation planning. By automating the validation of compatibility between different elements and ensuring adherence to business rules, conditions enhance efficiency and minimize manual intervention.

Note

The conditions in the transportation management system (TMS) are not based on the condition technique used in SAP ERP. In the transportation management system (TMS), the condition is a proposition on which another proposition depends or what data will be fetched based on the filters and selection. Objects like tables, access sequences, or procedures are not available. Instead, SAP provided predefined conditions, and one can assign or set selection filters to fetch or determine a specific value.
Key applications of conditions include:

    Filtering freight units
    Determining freight unit building rules (FUB Rules)
    Managing incompatibilities
    Establishing sales organizations
    Setting rate tables and agreements with charge calculation rules

Origin of Condition: Condition Area

There are various types of conditions used for different areas, such as document type determination, order type determination, loading and unloading durations, incompatibilities, printing, approvals, tolerances, and custom rules.
Origin of Condition: Condition Type

The condition type defines the area in which the system takes the condition into account. SAP delivers several condition types in the standard system. A condition type defines possible input values as well as the output of conditions of that type. So-called data access definitions define the input values.

The Origin of Condition slide explains how conditions in SAP TM are evaluated based on input data, processed through an origin source (Direct Business Object Access or BRF+ Decision Table or Expression), and result in a specific output or action.
A flowchart titled Transportation Management illustrating various components and processes. It includes elements such as SO / DTR, FUBR, FU1, FU2, FU3, Optimizer Planning, Capacity, Freight Booking, Freight Order, Tendering, Freight Agreement, Freight Settlement Document, Calculation Sheet, Rate, Scale, and PO/SES. Each component is connected with arrows indicating the flow of processes. The chart uses hexagonal and rectangular shapes to represent different elements.
Input Values

Input Values: The input values available each time depend on the chosen condition type. The input values are defined by data access definitions, which specify what data exists and where to get it when evaluating the Condition.
Output Values

Output Values: The output values are determined by the condition type. For example, the org unit results from the org unit determination.
Three Key Methods for Condition Origin Determination
A flowchart titled Origin of Condition illustrating the process of input leading to an output. The input is directed towards three components: Direct Business Object Access, BRF+ Decision Table, and BRF+ Expression. These components converge to produce the output. The design features a series of arrows indicating the flow of information.
Direct Business Object Access

This approach retrieves values directly from predefined data definitions without additional evaluation. The system adopts the input values of a condition as its output values.
BRFplus Decision Table

This method evaluates input values against a decision table maintained through the condition user interface. It's commonly used in Transportation Management (TM). The system translates input values into corresponding output values based on the mappings defined in the decision table.
BRFplus Expression

This method evaluates input values against a decision table maintained through the condition user interface. It is commonly used in Transportation Management (TM). The system translates input values into corresponding output values based on the mappings defined in the decision table.

Watch the simulation Review Conditions to learn how to display a condition by filtering for the appropriate condition type.

# Using Conditions and Incompatibilities
Objective
After completing this lesson, you will be able to use conditions and incompatibilities to model business requirements.
Introducing Conditions and Incompatibilities Using BRFplus

This video provides a high level overview of BRFplus and how to manage incompatibilities during transportation planning.
Conditions
Business Rules Framework plus (BRFplus)

The Business Rule Framework Plus (BRFplus) is a sophisticated tool for defining, managing, and executing business rules. Its user-friendly interface facilitates the modeling and reuse of rules, thereby streamlining decision-making processes. BRFplus supports various features, including simulation, tracing, transport, and XML export and import.
Typical Use Cases for BRFplus:

    Validation of data and detection of invalid data and states

    Matching responsibilities, suitable products, and locations

    Calculation of costs, overhead, and risks

Conditions Using the Business Rules Framework Plus (BRFplus)
A diagram illustrating the Business Rules Framework plus (BRFplus). It shows a flow from Input on the left, passing through three blue sections labeled Conditions, and ending with Output on the right. The sections are designed to represent input processing through various conditions before producing an output.

The Business Rules Framework plus (BRFplus) is a comprehensive, rules-based engine widely used within SAP Transportation Management (TM) for managing complex business rules. This framework significantly reduces the need for extensive development, customization, and configuration by providing a streamlined approach to handling SAP TM conditions. These conditions act as filters for automated decision-making processes, mapping input values to corresponding output values.

In SAP TM, conditions are logical evaluations applied to various objects, such as transportation requirements or freight units. These evaluations assess whether specific criteria are met, guiding whether particular actions or decisions should be executed during transportation planning. By automating the validation of compatibility between different elements and ensuring adherence to business rules, conditions enhance efficiency and minimize manual intervention.

Note

The conditions in the transportation management system (TMS) are not based on the condition technique used in SAP ERP. In the transportation management system (TMS), the condition is a proposition on which another proposition depends or what data will be fetched based on the filters and selection. Objects like tables, access sequences, or procedures are not available. Instead, SAP provided predefined conditions, and one can assign or set selection filters to fetch or determine a specific value.
Key applications of conditions include:

    Filtering freight units
    Determining freight unit building rules (FUB Rules)
    Managing incompatibilities
    Establishing sales organizations
    Setting rate tables and agreements with charge calculation rules

Origin of Condition: Condition Area

There are various types of conditions used for different areas, such as document type determination, order type determination, loading and unloading durations, incompatibilities, printing, approvals, tolerances, and custom rules.
Origin of Condition: Condition Type

The condition type defines the area in which the system takes the condition into account. SAP delivers several condition types in the standard system. A condition type defines possible input values as well as the output of conditions of that type. So-called data access definitions define the input values.

The Origin of Condition slide explains how conditions in SAP TM are evaluated based on input data, processed through an origin source (Direct Business Object Access or BRF+ Decision Table or Expression), and result in a specific output or action.
A flowchart titled Transportation Management illustrating various components and processes. It includes elements such as SO / DTR, FUBR, FU1, FU2, FU3, Optimizer Planning, Capacity, Freight Booking, Freight Order, Tendering, Freight Agreement, Freight Settlement Document, Calculation Sheet, Rate, Scale, and PO/SES. Each component is connected with arrows indicating the flow of processes. The chart uses hexagonal and rectangular shapes to represent different elements.
Input Values

Input Values: The input values available each time depend on the chosen condition type. The input values are defined by data access definitions, which specify what data exists and where to get it when evaluating the Condition.
Output Values

Output Values: The output values are determined by the condition type. For example, the org unit results from the org unit determination.
Three Key Methods for Condition Origin Determination
A flowchart titled Origin of Condition illustrating the process of input leading to an output. The input is directed towards three components: Direct Business Object Access, BRF+ Decision Table, and BRF+ Expression. These components converge to produce the output. The design features a series of arrows indicating the flow of information.
Direct Business Object Access

This approach retrieves values directly from predefined data definitions without additional evaluation. The system adopts the input values of a condition as its output values.
BRFplus Decision Table

This method evaluates input values against a decision table maintained through the condition user interface. It's commonly used in Transportation Management (TM). The system translates input values into corresponding output values based on the mappings defined in the decision table.
BRFplus Expression

This method evaluates input values against a decision table maintained through the condition user interface. It is commonly used in Transportation Management (TM). The system translates input values into corresponding output values based on the mappings defined in the decision table.

Watch the simulation Review Conditions to learn how to display a condition by filtering for the appropriate condition type.
Exercise
Start Exercise
BRFplus Decision Table
Diagram illustrating the process of determining the Freight Order Execution Organization based on the Freight Order Source Location using a BRF+ Decision Table. The input is Walldorf, which is matched in the decision table to DE (Germany). The output is DE. The decision table also includes other entries: Princeton matched to US and Toronto matched to CA. The condition type used is /SCMTMS/TOR_ORGUNIT.

A condition maps input values to output values. This condition can be a single Boolean value used to select a business object or can consist of multiple output values derived from input values through a decision-making process.

The system creates a BRFplus decision table using these input and output values. It then processes this table sequentially from top to bottom during determination. When the system encounters a row where the input values match the current input values, it copies the associated output values and processes them in the calling area.

The slide exemplifies this by demonstrating the condition type "/SCMTMS/TOR_ORGUNIT." Utilizing a BRFplus decision table, the system automatically generates this table by employing standard data access definitions configured in Customizing. Users can then input specific values into the table to determine organizational units based on the source location specified in the freight order.

# Incompatibilities

Incompatibilities define the compatibility of planning data that must be considered during transportation planning. For instance:

    Freight units with different Incoterms should not be transported together.
    A container of a specific equipment type cannot be transported on a particular resource due to size constraints.
    Refrigerated goods must only be transported using appropriate means of transport, such as refrigerated trucks.
    A specific means of transport cannot be unloaded at a location lacking a suitable loading ramp.
    A truck requiring side unloading cannot be unloaded at a location that does not offer the appropriate facilities for side unloading.
    A driver must not transport dangerous goods or operate a truck without a license.

During transportation planning, companies establish guidelines for shipping. For example, products requiring refrigerated containers cannot be shipped with frozen freight units. When planning transportation shipments, companies define rules for consolidating loads into a single freight order. Various factors, aside from capacity, influence how freight orders are constructed. In SAP Transportation Management (TM), these rules are known as incompatibilities. This data defines the parameters controlling when to consolidate loads and when not.

As illustrated, a company may have diverse products to ship, each with specific storage temperature requirements that dictate whether items can be consolidated. A test determines the optimal shipping temperature for each product. According to a rule, items classified as chilled cannot be shipped with items classified as frozen to prevent damage or spoilage.

Incompatibilities are used with conditions to influence outcomes in SAP TM during freight unit building, transportation planning, transportation proposal generation, and carrier selection. They are crucial for defining load-building requirements. For instance, freight units with different Incoterms must not be transported together. Refrigerated goods must be transported using appropriate means. Certain means of transport cannot be loaded at specific locations due to the absence of suitable loading ramps.
Diagram showing the transportation requirements for different products. Cheese and apples are connected to a chilled truck. Ice cream and fish are connected to a frozen truck. A note indicates that chilled and frozen products cannot be transported together.

When creating an incompatibility definition, you must specify a validity area and type. The example in the image above shows Products (FUs) and Vehicle Resources. Incompatibilities can be defined in the following way depending on the transportation planning requirements:
Defining Incompatibilities Between Two Attributes:

You can establish incompatibilities between any two attributes of two business object nodes. This involves setting up two conditions and specifying the relevant results. Two business objects will be incompatible if the condition results match these criteria.
Defining Incompatibilities for Identical Values:

Alternatively, you can define incompatibilities for instances of the same business object by entering a single condition and selecting the "Ident. Values Only" (Identical Values Only) checkbox. This approach is utilized, for example, to define incompatibilities between two freight units. The two instances will be deemed incompatible if their attribute values differ.
Incompatibility Definition

When creating an incompatibility definition, you must specify a validity area, which consists of an incompatibility area and an incompatibility type.
Incompatibility Areas:

Incompatibility areas determine where an incompatibility can be applied. There are four incompatibility areas within SAP Transportation Management (TM):

    Automatic Planning (formerly known as Vehicle Scheduling and Routing (VSR))
    Manual Planning
    Freight Unit Building
    Carrier Selection
    Delivery Proposals

Incompatibility Area (TABLE)
| 01 – Automatic Planning and Manual Planning | 04 – Freight Unit Building | 05 – Carrier Selection | 07 – Delivery Proposal |
|---|---|---|---|
| 01 – Freight Unit – Freight Unit (Vehicle Level) | 52 – Transportation Request Item | 81 – Carrier – Transportation Order | 51 – Transportation Request Header – Transportation Request Root |
| 02 – Freight Unit – Freight Unit (Compartment Level) |  | 82 – Transportation Order – Transportation Order | 52 – Transportation Request Item – Transportation Request Item |
| 03 – Freight Unit – Freight Unit (Means of Transp. Combination) |  |  | 53 – Freight Unit – Freight Unit |
| 04 – Freight Unit – Vehicle Resource |  |  |  |
| 05 – Freight Unit Transshipment Location |  |  |  |
| 06 – Freight Unit – Vehicle Compartment |  |  |  |
| 07 – Vehicle Resource – Vehicle Resource |  |  |  |
| 08 – Vehicle Resource – Location (Stay Level) |  |  |  |
| 09 – Vehicle Resource – Location (Loading/Unloading Level) |  |  |  |
| 10 – Vehicle MTR Combination – Location |  |  |  |
| 11 – Freight Unit – Freight Booking |  |  |  |
| (…) |  |  |  |	 

Incompatibility Types:
SAP provides predefined incompatibility types that specify the objects to which a rule applies. Examples include:

    Freight Unit to Freight Unit
    Freight Unit to Vehicle
    Freight Unit to Transshipment Location
    Carrier to Transportation Order

In addition to defining the validity area, the incompatibility definition can also specify how the rule is enforced during manual and automatic planning. This includes setting the reaction to the incompatibility, such as whether it's ignored, a warning is issued if ignored, or it must not be violated.

Incompatibilities can be defined between two attributes of two business objects by setting up two conditions and specifying relevant results. Two business objects will be incompatible if the condition results match the criteria.
The image depicts a structured diagram outlining an incompatibility area related to transportation planning and logistics. At the top, there is a labeled section titled Validity Area which includes two main categories: Incompatibility Area and Incompatibility Type, both represented in blue boxes. Under Incompatibility Area, four points are listed: 1. Automatic Planning and Manual Planning (Previously known as VSR) 2. Freight Unit Building 3. Carrier Selection 4. Delivery Proposal. Below this section, Incompatibility Type outlines four specific types of incompatibilities: 1. FU – FU (Freight Unit to Freight Unit), 2. FU – Vehicle (Freight Unit to Vehicle), 3. FU – Transshipment Location (Freight Unit to Transshipment Location), 4. FU – Transportation Order (Freight Unit to Transportation Order). At the bottom of the diagram, there are two conditions labeled Condition 1 and Condition 2, connected by an arrow indicating a relationship or flow between them. The overall layout is clear and organized, ensuring an easy understanding of the types of incompatibilities in transportation planning. This diagram serves as a reference for identifying potential issues in planning processes.

Setting the Identical Values Only check box in the incompatibility definition allows for an incompatibility to be defined between two instances of the same business object, for example, two freight units. In this case, a single condition is defined as incompatibility. The two business object instances are then only incompatible if their values differ.
Incompatibility Settings

Incompatibility settings can be maintained in planning profiles, carrier selection settings, delivery profiles, and the freight unit building rule. Transportation planning profiles specify when the system allows incompatibilities to be violated during manual planning, VSR optimization, or background processing. Incompatibility settings are assigned within these profiles. The incompatibility settings combine several definitions that can apply to a planning run. Only incompatibilities for the same incompatibility area can be combined.

# Scenario Builder

Objective
After completing this lesson, you will be able to use the Scenario Builder.
Scenario Builder
Scenario Builder Overview

The Scenario Builder is a powerful tool designed to facilitate the rapid creation of master and transactional data for testing, demonstrations, and training purposes. It enables users to efficiently develop and execute scenarios within the SAP Transportation Management (TM) system.
Computer screen displaying the Scenario Builder interface. The left panel lists various scenario templates such as SAP_DRIVER_PLANNING, SAP_GANTT_CHART_RES_AND_DOC, SAP_LOCAL_DISTRIBUTION_SCENARIO, SAP_MANUAL_PLANNING_SCENARIO, and SAP_ROAD_CARRIER_SCENARIO. The right panel shows details for the selected template SAP_DRIVER_PLANNING, including options for Master Data, Application, Report Variants, Summary, and Administration. The Transportation Network section includes Locations, Transportation Zones, and Transportation Lanes. The Resources section includes Vehicle Resources.

Administrators can use Scenario Builder to create comprehensive scenario templates, encompassing all necessary data, including system objects and customization settings, required for running a scenario in TM.

Testers can easily browse available scenario templates and generate their own copies of the scenario data within the system. This approach eliminates uncertainties related to the required data and significantly reduces the time spent on test preparation.
Key Features

    Comprehensive Data Inclusion: Administrators can incorporate both customization data and various system objects into a scenario template, ensuring that all elements needed for scenario execution are included.
    Reusable Templates: Once created, scenario templates can be reused indefinitely by an unlimited number of users, offering efficiency and consistency across multiple test cases.
    Personalized Data Copies: Scenario Builder allows each user to generate individual copies of the scenario data, enabling multiple users to work concurrently with the same data without conflicts. This feature is particularly beneficial for group testing, workshops, and collaborative exercises.
    Template Portability: Scenario templates can be exported and shared for collaboration or local editing, providing flexibility for teams working across different environments.

Note

The Scenario Builder is intended specifically for demonstration, testing, and proof of concept purposes. It's not designed for use in live operational environments.
Personal Prefixes

Personal prefixes allow users of a scenario template to generate scenario data using unique identifiers such as their initials or user ID. This ensures that each user works with their own version of the scenario data, allowing for simultaneous usage without interference.

    With Sample Data: The system generates sample data, and you will receive Excel files containing this data format.
    Without Sample Data: The system provides empty Excel files for you to populate with your own data.

Objects Supported by Scenario Builder

The following master data and configuration objects are supported by the scenario builder:

    Master Data:
        Locations
        Transportation Zones
        Transshipment Location Assignments
        Schedules
        Transportation Lanes
        Vehicle Resources
        Default Routes
        Business Partners (TM-specific data only)
        Materials (TM-specific data only)
    Configuration Objects:
        Freight Unit Building Rules
        Selection Profiles
        Scheduling Settings
        Optimizer Settings
        Planning Profiles
        Capacity Selection Settings
    Customizing (BC Sets)
    Report Variants

# Defining Transportation Relevance
Objective
After completing this lesson, you will be able to explain transportation relevance and how sales and purchasing trigger transportation processes.
Introducing Transportation Requirements

# Transportation Requirements Overview
# Transportation Requirements in SAP TM: An Overview

Creating a transportation requirement is the essential event that initiates a transportation management process. This requirement serves as the starting point and is triggered by transportation-relevant items in an initiating document, such as a sales order or a delivery. Creating a transportation requirement in SAP Transportation Management (SAP TM) varies based on the deployment option. Below are the primary starting points for transportation requirements depending on the selected deployment model:
Documents Triggering the Creation of Transportation Requirement

The following documents can trigger the creation of a transportation requirement in SAP TM, either through internal integration with the SAP TM component or via external SAP TM system integration:

    Sales orders
    Customer returns
    Purchase orders
    Stock transport orders
    Return stock transport orders
    Sales scheduling agreements
    Materials management scheduling agreements
    Outbound deliveries
    Inbound deliveries

Transportation Requirement Creation in Different SAP TM Deployment Models
The image illustrates a flowchart related to transportation requirements within an SAP environment. It highlights three main integration aspects: Logistics Service Providers (LSP/3PL), External TM System Integration, and Internal TM Component Integration. At the top is a section titled Transportation Requirement, indicating the focus of the diagram. Below this, the first section outlines the interaction with Logistics Service Providers, represented as external entities. It shows methods of data transfer such as EDI (Electronic Data Interchange) and manual entry, both leading to SAP TM (Transportation Management) within the S/4HANA system. The second section emphasizes External TM System Integration, suggesting a connection to other transport management systems, with a pathway leading to SAP TM in the S/4HANA framework. The last section focuses on Internal TM Component Integration, illustrating the replication of data within the internal components of the SAP TM system. Overall, the diagram visually represents how transportation requirements are managed and integrated within an SAP system, highlighting external and internal interactions.

    Logistics Service Providers (LSPs or 3PLs): Transportation requirements can be received in various ways by logistics service providers or third-party logistics providers (3PLs). Forwarding orders are typically manually created using the SAP TM User Interface (UI) or Electronic Data Interchange (EDI) with an external system. The forwarding orders and forwarding quotations are considered transportation requirements within an LSP process.
    Side-by-Side Deployment / External TM System Integration: SAP TM is installed as a separate system in side-by-side deployment scenarios. The original document driving the transportation demand does not reside in SAP TM itself, necessitating the replication of this information. This replication process can create either order-based or delivery-based transportation requirements. Order-based requirements may originate from documents such as sales orders, purchase orders, stock transport orders (STOs), or scheduling agreements. On the other hand, delivery-based requirements stem from outbound or inbound deliveries. Integration between SAP TM and the source system, whether SAP ERP or SAP S/4HANA, is facilitated using XML messages via SAP Process Integration or point-to-point communication.
    Embedded Deployment / Internal TM Component Integration: In an embedded deployment scenario, the need for a separate document to represent a transportation requirement is eliminated, as the original object causing the transportation demand already exists in the SAP S/4HANA system. These original objects may include sales orders, purchase orders, stock transport orders, scheduling agreements, or delivery documents such as inbound and outbound deliveries. Here, the freight unit acts as the initial object for SAP TM, created directly from the original object instigating the transportation demand. This embedded scenario is the primary focus of this overview training.

This structured approach to understanding transportation requirements in SAP TM ensures clarity in transportation management's deployment and operational facets, facilitating efficient logistics and supply chain execution.
Integrating Transportation Relevant Documents with SAP TM

The documents that are created in sales and distribution (SD), materials management (MM) and logistics execution (LE) can be integrated into TM. The following settings have to be configured to integrate sales orders, scheduling agreements and deliveries.

    Activate Integration of Documents via Control Key
    Create Logistics Integration Profile
    Assign Logistics Integration Profile to Document Type

Route Determination with Incoterms
Incoterm and Incoterm Locations

Definition: Incoterms, short for international commercial terms, are standardized international rules that define the commonly used terms in international trade. They outline the terms of sale and the transfer of risks associated with importing and exporting merchandise. The International Chamber of Commerce (ICC) publishes incoterms and periodically releases new versions.
Incoterm	Description
EXW	Ex Works
FAS	Free Alongside Ship
FOB	Free On Board
CFR	Cost and Freight
CIF	Cost, Insurance, and Freight
CPT	Carriage Paid To
DES	Delivered Ex Ship
DEQ	Delivered Ex Quay
DAF	Delivered At Frontier
DDP	Delivered Duty Paid
DDU	Delivered Duty Unpaid
FCA	Free Carrier
CIP	Carriage and Insurance Paid To

Incoterms are intended to communicate the tasks, costs, and risks associated with transporting and delivering goods. They define a contractual agreement between the shipper and consignee to determine who is responsible for which stage of the transport and where and when the responsibilities of each partner start and end.

Some of these incoterms require a location where tasks, costs, and risks are transferred from the shipper to the consignee. The incoterm location is where the goods are physically handed over and where the responsibilities for the goods change. The incoterm location is a master data location in SAP TM and can be used for routing purposes.

Regarding delivery integration with SAP TM, the Incoterms (Part 2) field can be used to define the incoterm location. You can map incoterms (Part 2) to an SAP TM master data location with the app Assign Location to Incoterm Location. You can use this information for stage building.
Stage Building Based on Incoterms
Diagram depicting shipping logistics from Shenzhen, China to Dresden, Germany, showing the responsibilities of the seller and buyer across pre-carriage, main carriage, and on-carriage stages. Arrows indicate the transition of ownership and responsibility from seller to buyer at various stages.

In SAP TM, you can build stages based on the incoterm location. The Incoterm Location Stage Building field in the logistics integration profile customizing defines how stages are built based on source, incoterm, and destination locations. The system uses the incoterm location for stage building if the incoterm has set the Incoterm Location flag (a flag that indicates that you must enter a location with this incoterm). If no incoterm is specified, the system does not use the incoterm location for stage building, and the system creates only one stage from the source to the destination location. If an incoterm is specified but this incoterm has not set the Incoterm Location flag, the system does not use the incoterm location for stage building. Instead, the system creates only one stage from the source to the destination location. The following stage-building rules are possible:

    Initial Value – Two Active Stages: This setting is default. Two planning-relevant stages are created.
    01 Source Location to Incoterm Location – Type 1: One stage from the source to the incoterm location is created.
    02 Source Location to Incoterm Location – Type 2: Two stages are created. An active stage from the source location to the incoterm location. An additional stage from the incoterm location to the destination location which is not relevant for planning
    03 Incoterm Location to Destination – Type 1: One stage from the incoterm location to the destination. This is relevant, for example, for the consignee who plans only the route from the incoterm location to the goods receipt location.
    04 Incoterm Location to Destination – Type 2: Two stages are created—an active stage from the incoterm location to the destination location and an additional stage that is not relevant for planning from the source location to the incoterm location.
    05 Two Active Stages: Two planning-relevant stages are created.

# Freight Units
Freight Units Defined

A freight unit is:

    A set of goods intended to be transported together from origin to destination
    The smallest unit of freight used in transportation planning
    A unit used to merge items (transportation requirements) derived from originating documents (SO, PO, STO, and so on) for the planning of transportation.

The granularity of freight units required for transportation planning varies significantly depending on the business scenario. The system can split and merge product quantities of the requirements when creating freight units, depending on the applied freight unit building rules. The creation of freight units subsequently impacts planning. Larger freight units simplify planning activities in VSR optimization, while smaller freight units theoretically offer higher optimization potential but complicate planning due to their increased number. To achieve optimal planning results, it's recommended to strike a balance.
Examples:

    Food Distribution: Consider a truck with a capacity of 20 tons intended for transporting 20 tons of flour in 1 kg packages. Creating a single freight unit of 20 tons or 20,000 freight units of 1 kg each is not advisable for the aforementioned reasons. A balanced approach should be sought.
    E-commerce Shipments: An e-commerce company needs to transport a mix of electronics, clothing, and home goods. Instead of creating separate freight units for every single item (resulting in a very high number of freight units), or combining everything into one large freight unit (making it cumbersome to handle), it would be more efficient to create freight units grouped by product category or delivery destination.
    Automotive Industry: A manufacturer needs to deliver a variety of auto parts to different assembly plants. Splitting the freight units based on part types (for example, engine components, body parts, electrical systems) rather than by individual items or as a single freight unit for all parts combined can enhance the efficiency of both transportation and handling at the destination.
    Pharmaceutical Logistics: A pharmaceutical company requires the transportation of both temperature-sensitive and non-sensitive medications. Creating separate freight units for temperature-sensitive items (such as vaccines) and non-sensitive items (like vitamins) ensures proper handling and compliance with regulations without overwhelming the planning system with too many small units.

Freight units are fundamental to efficient and effective transportation planning and execution. Understanding the importance of freight unit granularity and appropriately configuring systems to manage freight units can significantly streamline logistics operations, balance planning complexities, and optimize transportation resources. By ensuring accuracy in defining and managing freight units, businesses can enhance operational efficiency, minimize costs, and meet specific transportation requirements effectively.
Initiating Freight Unit Building
The image depicts a flowchart focused on processing transportation requirements in a logistics or supply chain context. On the left side, Transportation Requirement(s) is highlighted, indicating the starting point for transportation planning. From this central point, three pathways branch out: Manual, Automatic, and Asynchronous Batch. Each of these pathways represents a different method of handling transportation requirements. The Manual option suggests user-driven input or adjustments. The Automatic pathway likely indicates a system-driven or algorithmic approach to generating transportation plans. The Asynchronous Batch signifies a method that processes multiple transportation requirements simultaneously without waiting for each individual task to complete. On the right side of the chart, Freight Unit is connected, indicating that all methods of handling transportation requirements ultimately lead to the creation or processing of freight units. Overall, the flowchart illustrates the various approaches to managing transportation requirements, highlighting flexibility in logistics planning through manual intervention, automation, or batch processing.

Freight unit building can be either automatically triggered or manually executed. Typically, if freight units should not consolidate items from different predecessor documents, which is the most common scenario, automatic freight unit building can be activated. Freight units are created immediately upon the creation or saving of their predecessor documents. Additionally, the creation of freight units can be triggered by background reports. Specifically, report /SCMTMS/TRQ_PREP_PLNG_BATCH can be utilized to create freight units in a side-by-side deployment scenario. In such cases, freight units are generated based on the /SCMTMS/TRQ object. For an embedded deployment scenario, report /SCMTMS/SUBSEQUENT_FUB_LOGINT should be used.

Manual options are also available for initiating the creation of freight units. This can be done via worklists for any of the possible predecessor documents (Order-based Transportation Requirements (OTR), Delivery-based Transportation Requirements (DTR)).
Freight Unit Building Rules
Understanding Freight Unit Building Rules
The image illustrates a process flow related to handling transportation requirements in a logistics context. It begins with Transportation Requirement(s) at the top, which indicates the source data for transportation planning. From this point, a central element labeled with a funnel symbol suggests that the requirements undergo processing to generate specific outputs. Beneath this, three Freight Unit icons branch out, each representing distinct freight units that emerge from processing the transportation requirements. The Freight Unit Building Rule is detailed on the right side of the image, providing key components involved in the decision-making process. It lists several elements, including Building Rule Strategy, Critical Quantity, Item Split Allowed, Document Type Determination, Planning Quantities, and Split Quantity. These components outline the criteria and strategies for constructing freight units based on the initial transportation requirements, ensuring efficient and effective logistics management. The overall layout conveys how transportation requirements are transformed into specific freight units through well-defined building rules.

Freight Unit Building Rules (FUB rules) are essential for determining how freight units are created and managed within a transportation management system. These rules ensure that goods are efficiently grouped for transport, optimizing load capacities and meeting specific business requirements.

There are three options for determining freight unit building rules:

    Condition Check in Logistics Integration Profile: The system first reviews the condition defined in the logistics integration profile. The system transitions to the next option if no condition is specified or fails to produce a result.
    Freight Unit Building Rule in Logistics Integration Profile: Next, the system verifies if a freight unit building rule is specified within the logistics integration profile. The system proceeds to the final option if no such rule is maintained.
    Application of Standard Settings: The system defaults to applying standard settings in the absence of a condition or a specified freight unit building rule.

Freight units are automatically generated when transportation relevance is identified for a transportation demand, such as a sales order, purchase order, delivery, OTR, or DTR.

The system considers any existing freight units associated with the transportation demand. It creates freight units based on the defined split quantity and the status of the item split checkbox. These parameters are considered when multiple freight units need to be created. Custom strategies can be employed to create freight units to meet specific requirements. SAP provides the default strategy, FUB_AUTO, for freight unit building.
Defining a Freight Unit Building Rule

Within the freight unit building rule, defining the critical quantity is essential. This parameter specifies the primary unit of measure that enables a line item on a transport requirement to be split into multiple freight units. Additionally, several planning quantities, such as weight and volume, can be defined. Each planning quantity is considered for capacity checks during transportation planning and is copied to the freight unit.

The split quantities set the maximum capacity of a freight unit. The system calculates freight units as multiples of the rounding quantity. If the Item Split Allowed option is selected, the system will split the item during freight unit building if it exceeds the split quantity. The process controller strategy allows customized strategies to define how freight units are created according to specific requirements. When an equipment type is maintained in the freight unit building rule, the capacity of the equipment is considered during freight unit building, and the items consolidated into one freight unit are loaded accordingly.

If necessary, companies can specify that freight units should be split under certain constraints. For example, the maximum capacity of a freight unit is defined using the split quantity. If transporting five tons of cement but limited to batches of 500 kg, the split quantity is set to 500 kg, and the system generates 10 freight units.

Based on the definition of freight units, all items within a freight order are transported together from their source to their final destination. However, in multimodal scenarios, different planners may be involved in scheduling various transport stages. To accommodate this, stage information can be added to the freight unit, providing a degree of independence when scheduling each stage.

The freight unit building rule also considers incompatibilities. For example, certain products cannot be transported together due to differing temperature requirements; ice cream and ketchup must be shipped separately. Consequently, these items must be kept apart during freight unit building, even though other items within the same transportation requirement, such as chocolate ice cream and strawberry ice cream, can be consolidated into a single freight unit. To address such planning constraints, incompatibility settings can be defined and assigned within the freight unit building rule.

Watch the simulation Review Freight Unit Building Rules to display a freight unit building rule and the essential settings required to set up a freight unit building rule.

# Managing Packaging Information
Understanding Packaging Materials

Packaging materials are essential for enclosing or securing the goods to be transported. The packaging materials and the goods constitute the handling unit, ensuring that items are safely transported.

Maintaining material master data for each packaging material is essential. When creating material master records for packaging materials, selecting the correct material type, such as VERP (specifically designated for packaging materials), is essential.
Types of Packaging Materials

The material destined for transport can be packaged into or onto various packaging materials. These materials can also serve as load carriers, such as pallets. Some of the most commonly used packaging materials include:

    Crates: Used for sturdy and rigid protection of goods.
    Boxes: Versatile and widely used for various items.
    Containers: Ideal for large quantities and bulk transportation.
    Wire Baskets: Suitable for smaller, loose items that need to be grouped.
    Pallets: Fundamental load carriers facilitating stacking and handling.

Handling Units: Managing Packaging and Goods Together
The image features three distinct logistics and warehousing management elements. On the left are three blue square icons labeled Material, representing individual items or products. In the center, a white box graphic is labeled Packaging Material, indicating the materials used to package the items for transport or storage. To the right, a larger gray box illustrates a Handling Unit. This graphic shows a packaged item with arrows indicating movement or rotation, suggesting the unit can be maneuvered. Below this graphic, a label reads no. 1234567890, likely indicating a unique identifier or tracking number for the handling unit. Overall, the image conveys the relationship between materials, packaging materials, and handling units, highlighting the organization and management of goods within a logistics context.

A handling unit (HU) is a logistic unit consisting of packaging materials and goods (materials). With Handling Unit Management, the system tracks the entire HU rather than individual materials. The HU serves as the fundamental unit for both material and information flow. A business transaction involving an HU triggers corresponding background transactions for the materials and packaging materials it contains, consolidating several individual material movements into a single entry.

Handling units can be used and transferred to partners throughout the supply chain. Each handling unit is assigned a single identification number that uniquely identifies it across various processes. In cross-system logistics chains, this identification number often must be unique worldwide. A Serial Shipping Container Code (SSCC) number can be assigned to each handling unit to facilitate this.
Packaging Solutions
The image illustrates a flowchart depicting the packing instruction process. On the left are two main sections: Packing Instruction and Sub-Packing Instruction. Under Packing Instruction, there are elements labeled Load Carrier, Auxiliary Packaging Material, and Sub-Packing. Below is a visual representation of a grid-like pattern suggesting packed items. The Sub-Packing Instruction section has corresponding elements titled Load Carrier and Materials, with a square visual representing a separate packing unit. Connecting these sections is the Packing Instruction Determination box, which indicates the decision-making process for packing. An arrow points from this box to the Automatic Packing process, which leads to a representation of stacked load carriers on a pallet. This diagram emphasizes packing instructions' organization and categorization, leading to automated packing solutions. The visual aids in understanding the systematic approach to packaging logistics.

In SAP S/4HANA, different application domains have developed distinct methodologies for determining a packaging hierarchy, each tailored to specific logistics and management needs. Understanding these approaches is crucial for optimizing packaging and logistics operations within the system.

    Packing Instructions in Logistics General: Packing instructions are utilized within the Logistics module to define how items should be packed. Packing instructions serve as a template for the creation of a handling unit. The packing instructions define the materials and packaging materials to be packed in a handling unit. This enables you to reproduce specific customer packaging requirements in the system. You can also automate the packing process by proposing a handling unit based on packing instructions.
    Packaging Specifications in Extended Warehouse Management (SAP EWM): Packaging specifications have evolved from packing instructions and are employed within the Extended Warehouse Management module. Packaging specifications are part of the master data. The packaging specification defines all the necessary packing levels for a product in order, for example, to put away or transport the product. For a product, a packaging specification mainly describes in which quantities you can pack the product into which packaging materials in which sequence.
    Package Building in SAP Transportation Management: Package building is a feature offered in the SAP Transportation Management (TM) module and is utilized within EWM during the cartonization process.
        Given a set of product quantities, package building determines a packaging hierarchy to minimize the number of top-level packages
        Different Package Building modes:
            Rule-based package building: layer-based and volume-based
            Detailed mixed package building: optimizer (PBO) defines x/y/z positions and orientations
        Features: separator material, deep packaging hierarchy, incompatibilities between products, orientation profile, loading sequence per package, and so on. Considers material master, package building profile, and so on

The image presents a decision-making flowchart organized into three main columns: Extended Warehouse Management (EWM), Transportation Management (TM), and Logistics General (LO). At the top of the diagram, the question, How do you choose? is prominently displayed. Under each application column, several categories are listed. In the Extended Warehouse Management (EWM) column, there are two subcategories: Packaging Specification Processing and Packaging Specification Master Data. The Transportation Management (TM) column includes Package Builder Processing and Package Builder Master Data. Lastly, in the Logistics General (LO) column, the subcategories are Packing Instruction Processing and Packing Instruction Master Data. The flowchart structure is designed to assist users in selecting an appropriate packaging approach based on the specified applications. The layout emphasizes clarity and organization in presenting complex data related to packaging management systems.

While packing instructions and packaging specifications are rule-based and share many similarities, package building offers a very different approach, which isn’t based on rules but considers constraints and offers an optimization algorithm to build optimized mixed pallets. If a product is always handled and shipped in a certain packaging structure, this could be modeled very well by packing instructions or packaging specifications. Suppose the business involves transporting mixed pallets containing multiple products for one or even multiple customers. Package building may be more appropriate in that case as it minimizes the required mixed pallets.

As the integration of these components is driven by recent developments, consolidating/unifying the use of the three packing solutions has become a priority.
Unified Package Building
The image illustrates a flowchart that outlines the relationship between different packaging management systems. It features three main columns: Extended Warehouse Management (EWM), Transportation Management (TM), and Logistics General (LO). At the top of the diagram, the Applications category is presented. A blue box labeled Unified Package Building (UPB) connects the three application columns in the middle of the layout. Above this box is the UPB Test Cockpit, indicating a generic packing layer. Under each application column, there are two further subcategories. In the Extended Warehouse Management (EWM) column, the subcategories include Packaging Specification Processing and Packaging Specification Master Data. The Transportation Management (TM) column contains Package Builder Processing and Package Builder Master Data. Finally, in the Logistics General (LO) column, the subcategories are Packing Instruction Processing and Packing Instruction Master Data. The flowchart is designed to show the integration of the UPB across various packaging approaches and highlight how different systems interact within the packaging process. It emphasizes the organization and complexity of packaging management within logistics applications.

UPB aims to unify the previously diverse packaging methodologies across various applications in TM, EWM, and LO. Historically, these applications utilized different packing engines based on different packing rules and persistence approaches for resulting packaging hierarchies. Given the similar underlying requirements for packaging materials, SAP's long-term strategy is to align and unify these approaches.

The UPB component is a reusable component that allows the packaging of products by using one of the available packing engines (defined as UPB engines) and applying configurable rules (defined as UPB rules). Currently, the supported UPB engines are based on:

    Packing Instructions (PI)
    Package Builder (PB)
    Packaging Specifications (PS)

The UPB is currently supported by processes in the following applications:

    Transportation Management (TM)
    Extended Warehouse Management (EWM)
    Logistics General (LO)

During package-building, the system groups products into packages based on specific constraints while minimizing the total number of packages. The system can also determine each product item's exact position and orientation within the package. These constraints can be defined for various product combinations, business partners, equipment, and locations. When multiple constraints apply, the system always uses the most specific constraint.

In a nutshell, the UPB component receives input items corresponding to materials. It applies UPB rules (and returns a packaging hierarchy as a result).

Unified Package Building (UPB) in SAP S/4HANA represents a strategic advancement in packaging methodologies, integrating various approaches into a unified framework. UPB enhances efficiency, consistency, and optimization in packaging operations by aligning packaging processes across different applications.
Unified Package Building in the Planning Process

In Transportation Management (TM), the system can create packages through several methods, ensuring flexibility and efficiency in packaging operations. These methods include:

    Early in the Process: During Freight Unit Building. Unified package building can be utilized during the creation of freight units. This method is ideal when packages will be built on a per-freight-unit basis.
    Late in the Process: Based on Capacity Documents. Unified package building can be activated for capacity documents, such as road freight orders. This approach is particularly effective when building customer-mixed packages.

# Overview of Transportation Planning in SAP TM

This video introduces the topics covered in this unit. Please watch the video for a high level overview, or dive straight into the topic in the lesson below.
Role of Transportation Documents

Various business documents are relevant to planning, each with a specific purpose. These documents can be interconnected in different ways. Demand documents and their stages can be assigned to capacity documents. A capacity document can represent the transportation of one or multiple demand stages.

While a freight unit solely represents demand, freight orders and freight bookings represent pure capacities. Other documents can represent both demand and capacity simultaneously. Pure capacity documents and consignment orders can be subcontracted and serve as the foundation for execution. They may be created in advance to reserve a carrier's transportation capacity, which is then utilized by assigning demands.

The documents serve the following business purposes:
Business Documents in Transportation Management
	Freight unit	A freight unit represents an original transportation demand abstracting from forwarding orders, sales orders, or deliveries. It is transported through the complete transportation chain without splitting it on any transportation stage. As a pure demand, a freight unit consumes capacity.
	Package unit	

Package units represent demands transported together in the same packages, such as a pallet or carton.
	Consignment order	

A consignment order represents a logical grouping of one or multiple transportation demands with the same source and destination but doesn’t represent a physical capacity. A consignment order contains only one stage. It’s frequently used in communication, for example, for advanced shipping notifications between shippers and consignees, and can also be used for subcontracting purposes. Consignment orders can represent a demand but also consolidate demands.
	Container unit	A container unit models a demand transported in a container. You can consolidate multiple freight units into a container unit, which serves as capacity from the freight unit viewpoint. However, the container also represents a demand that must be transported. In an intermodal container transportation scenario from China to Europe, the container may have three stages assigned to a road freight order for pre-carriage within China, an ocean freight booking for the main carriage, and another road freight order for the subsequent carriage in Europe.
	Trailer unit	A trailer unit represents trailer demands transported by a road freight order.
	Railcar unit	Railcar units represent railcar demands transported by a rail freight order.
	Road freight order	Road freight orders represent transportation by road, which can be subcontracted or executed by a company’s fleet. This document represents a capacity and can consolidate multiple demands that consume the capacity.
	Rail freight order	In the same way as the road freight order, a rail freight order represents transportation by rail.
	Ocean freight booking	Ocean freight bookings represent subcontracted ocean transports. Like freight orders, a booking can consolidate multiple demands.
	Air freight booking	Like ocean freight bookings, an air freight booking represents transportation by airplane.
A flowchart illustrating the logistics process for freight management. At the top left, a Freight Unit is connected to a Package Unit. This is labeled as step 1. To the right are two types of orders: Consignment Order and Container Unit, which are part of step 2. An arrow points from the Freight Unit to these two orders. Below step 2 are two units: Trailer Unit and Railcar Unit, which are part of step 3. The Trailer Unit includes Road Freight Order and Air Freight Booking, while the Railcar Unit includes Rail Freight Order and Ocean Freight Booking. The legend at the bottom explains the color coding: dark blue represents a Demand Document, light blue indicates a Demand and Capacity Document, and the lightest blue signifies a Capacity Document. The flowchart visually represents the relationships and processes of managing freight logistics.

Assigning Transportation Documents: (Descriptions refer to the figure above)

Box 1: Freight units and package units can be assigned to the documents in boxes 2 and 3.

Box 2: Consignment orders and container units can be assigned to all capacity documents shown in box 3, except for consignment orders, which don’t allow the assignment to ocean and air freight bookings.

Box 3: While trailer and railcar units are specifically dedicated to the corresponding road or rail mode of transport, container units frequently involve multiple modes of transport across the different container unit stages. Freight orders represent the movements of trucks and locomotives. Freight bookings represent the subcontracted movement of vessels or airplanes. Without freight orders and freight bookings, neither freight nor transportation units can be transported. However, freight orders can represent transportation without transportation units and freight units; these represent empty moves, which may make sense in certain circumstances, although you usually attempt to avoid them.
Freight Order Structure

Freight orders and freight bookings result from planning and consolidating freight units onto a vehicle-booked capacity or scheduled means of transport. Once this has been completed, transport order execution can be triggered, and follow-on settlement processing can begin.

However, before creating freight orders or freight bookings, you must plan for stages at the freight unit level. This is because the freight orders that will be created relate to the individual stages of a split transportation chain.

Freight units can have one or more stages. Stages can be created in the freight unit to split the overall transportation chain, for example, based on the mode of transportation. A freight unit with a source in Germany and a destination in the US may be split into three stages to reflect the following:

    Pre-carriage from source to port-of-loading (PoL)
    Main-carriage from port of loading to port of discharge (PoD)
    On-carriage from port of discharge to destination

The image illustrates a flowchart comparing two delivery processes involving freight units and orders. It is divided into two main sections: No stage building and With stage building. In the No stage building section, a single freight unit labeled Freight Unit 1 is shown and used to move to goods from point A to point B using a single Freight Order 1. In the With stage building section, the process is more complex. It begins with Freight Unit 1 at point A, which leads to the creation of Freight Order 1. This section also includes Freight Booking 1, indicating a booking process that occurs between the Port of Loading (PoL) and the Port of Discharge (PoD). After this stage, it culminates in Freight Order 2 at point B. The diagram visually represents the flow of freight logistics, highlighting the differences in processes with and without stage building, emphasizing the additional steps and components involved in the latter.

In this way, the individual stages may be used to create separate freight orders/freight bookings for each stage to subcontract these different stages to three different business partners/carriers.
Freight Orders
The image presents a circular diagram divided into four quadrants, each containing key components related to transportation and logistics management. At the center of the diagram is a circular arrow, symbolizing the continuous flow of information. The top left quadrant includes items such as Planned means of transport, Stages, Subcontracting Steps, and Awarded Carrier. The top right quadrant focuses on Document Flow, featuring Planning Information, Subcontracting Info, Output Management, and Document Dependencies. The bottom right quadrant addresses financial aspects, listing Transportation Charges & Cost Distribution, Freight Charges, and Distributed Costs. The bottom left quadrant contains operational details, including Status Info, Blocking Info, Cargo Execution Info, and Customs relevance, along with Actual, Planned Quantities. Overall, the diagram highlights the interconnectedness of planning, documentation, financial distribution, and operational execution in the logistics process.

Freight orders and freight bookings contain the following information:

    Planning information, for example, planned means of transport and stages, routing, planned pickup and delivery dates, durations, and distances
    Document dependencies, as well as predecessor and successor documents
    Transportation charges and cost distribution
    Cargo information: quantities and weights, goods information
    Execution information
    Business partner information
    Output management
    Status information and blocking information
    Subcontracting information

# The Planning Processes
Woman planning transportation using the app Transportation Cockpit in SAP TM. SAP Anvil symbol in the background

The goal of transportation management is to provide customers with the ability to manually or automatically plan and optimize their transportation requests. This includes performing order consolidation, where a company can group orders with the same ship-from and ship-to locations for more efficient transportation quantities.

If multiple orders are being shipped within a predefined transportation zone, your company can try to efficiently schedule and route the various orders, and choose the appropriate carrier. The planning and selection can be determined using the most cost-effective and timely route from source to destination while considering real-world constraints, costs, and penalties. The optimizer can make multi-modal decisions such as sea, air, truck, train, and any combination thereof. The planning function can also perform multi-pickup and multi-drop options.

Within the optimization algorithm is the ability to use the appropriate resources regarding availability and capacity. The optimizer can consider incompatibility rules to restrict how freight orders are built, such as modeling material-specific transport requirements (for example, cooled products). In addition, carrier selection allows your company to determine the right combination of carrier assignments based on cost, equipment availability, priority, and business share goals.
Transportation Planning Scenarios

Transportation planning supports multiple variants. Several scenarios can be used, depending upon shipping requirements, as follows:

    Truckload shipments (FTL or LTL)

    Intermodal (IM)

    Direct shipments

    Multi-stop shipments

    Pooled distribution

Truckload Shipments (FTL or LTL)

Truckload shipments tend to be the simplest of the outbound planning scenarios. The transportation order received by the shipper is in a full truck load quantity, typically >= 35,000 lb, or 3,660 cubic feet, or 28 - 32 pallets. The shipment is from one source to one destination, so very little route planning is necessary, except for carrier selection. The ideal situation would be one product, but multiple line items can be supported. In TM, when orders are entered with a weight greater than 35,000 lb, the system can be set up to automatically plan, tender, and cost the freight order without additional user intervention. This is considered a one-step process.

Full Truck Load (FTL): In some industries, goods are ordered and delivered based on full truck load because that is an inexpensive option. Typically, this is used for cheap products where the transport costs are high compared to the value of the goods. This FTL scenario is also used extensively in bulk transport. If the order is for multi-line items, TM can perform truck load optimization planning for freight units. During planning, companies can perform carrier restrictions (a carrier is not permitted). Additionally, companies can perform carrier selection based on lowest costs if a default carrier is not maintained. Once planning is done, the transportation order is ready for tendering. Finally, bills of lading can be created with driver notes when the shipment is picked up.
Intermodal Shipment

Intermodal freight transport involves the transportation of freight in a container or vehicle that can use multiple modes of transportation (rail, ship, and truck) without any handling of the freight itself when changing modes. This method reduces cargo handling, improving security, reducing damages and losses, and allowing freight to be transported faster. This method reduces costs compared with road transport and is the key advantage when deployed for intracontinental use. However, the cost savings may be offset by reduced timing for road transport over shorter distances.

Intermodal transport is generally used for two purposes. One is to move goods relatively cheaply over long distances using ocean and rail transport. The second is moving goods over long distances quickly, for example, with air freight. Based on the requested delivery date, the carrier selection process determines whether to use intermodal or truck load as the means of transport. This is based on the transit time for each means of transport: intermodal container on flat car (COFC) with a four-day transit period or TL with a three-day transit period.
Multi-Stop Shipments

Multi-stop or pool shipment consolidates two or more orders into one or more shipments. Instead of making several (say 5) shipments and sending a separate vehicle to each customer, your company plans to have only one vehicle visit each customer. This is a truck load (TL) process, requiring some planning to ensure no constraints are violated. Be aware that in-transit stops are limited, usually three or fewer. As transportation volumes increase, optimized multi-stop planning improves operational efficiencies. Routes can be determined by pick-up and delivery windows at both shipping and receiving locations.
Pooled Shipment

Pooled distribution is prevalent in delivery/distribution scenarios, from distribution centers to customers. In the postal industry, it is also used to deliver mail to post offices or large customers and institutions. In general, this scenario also includes the collection of empty returnable packaging from customer sites.
International Transportation

When companies begin to transport goods across borders, the complexity of the logistics increases. Multiple modes of transportation may be needed depending on how the product gets to its destination. In addition, you have to consider the legal requirements necessary to import and export products to other countries.
The image shows a world map with icons representing different stages of an international shipping and logistics process. The process starts with material packing at a warehouse, followed by containers being transferred to the port of loading by truck. The main carriage involves ocean transportation via a pre-booked freight capacity on an ocean liner. The final delivery is done by truck from the port of discharge to the destination. The locations mentioned are Newark, New Jersey, USA; Rotterdam, Netherlands; and Düsseldorf, Germany. The image visually represents the global supply chain and logistics involved in international trade and transportation.
Standard Process Flow
The image is a diagram that illustrates the integration between an external SAP ERP/S4HANA system and various components related to order management, planning, execution, subcontracting, and charges & settlement. The key components shown include Sales/Purchase Order/Scheduling Agreement, Delivery, Freight Unit Building, Freight Unit, Planning/Optimization, Freight Order/Freight Booking/Transportation Unit, Subcontracting/Carrier Selection, Agreement, Calculation Sheet, Rate Table, and Scale. These components interact with each other to facilitate the overall logistics and transportation management process. The diagram highlights the flow of information and data between these components, enabling efficient order management, transportation planning, freight booking, and settlement processes within the SAP ERP / SAP S/4HANA system.

The standard planning process begins with creating freight units.

Planning relies on three distinct pillars, as follows:

    Master Data

    Master data objects such as the transportation network (locations, transshipment hierarchies, transportation zones, transportation zone hierarchies and transportation lanes) and resources are the basis for any planning activities in SAP TM.
    Selection Profiles

    Selection profiles specify what should be planned in a particular scenario. For example, selection settings specify the geography for which a transportation plan shall be created. This could be, for example, all freight units to be transported within California.
    Planning Profiles

    Planning profiles specify the "how" of the process. For example, a planner may only be allowed to schedule standard trucks and not a helicopter for emergency transports. This information dictates how the actual transportation is to be carried out. Which resources can be used, and at what cost is specified in the planning settings?

Short-Cut Process, Purpose and Application

Once created, freight units are used by manual or automatic planning activities to build freight orders, which can subsequently be used for carrier selection and/or tendering processes. The purpose of the short-cut process is to skip any planning activities because these may not be required in certain scenarios. For example, if the sales orders that a company receives already state the required truck size, the freight order could be created directly from the transportation demand (in this example, a sale order). Technically, this is done during freight unit building by selecting a freight order type instead of a freight unit type.
The image shows two process flows for transportation management: a standard process flow and a shortcut process flow. The standard process flow includes three main components: 1. Transportation demand, which includes various transportation requirements such as SO, PO, STO, DEL, FWO, OTR, and DTR. 2. Planning, which includes two sub-components: FU (Freight Unit) and FO (Freight Order). 3. Execution/Subcontracting, which is the final stage of the process. The shortcut process flow, on the other hand, skips the planning stage and directly connects the transportation demand to the execution/subcontracting stage. The image illustrates the differences between the two process flows, highlighting the importance of the planning stage in the standard process flow and the simplified approach of the shortcut process flow, which may be used in certain scenarios where freight units and planning are not required.

Watch the simulation Compare the Standard and Shortcut Process to learn more about the standard and short cut process flow.
Exercise
Start Exercise
The image shows three main sections: Planning Profile, Master Data, and Selection Profile. The Planning Profile section includes information about the planning strategy, planning horizon, capacity selection settings (vehicles, trailers, freight bookings, schedules), constraints and costs settings, optimizer settings (proposal settings, runtime, maximum number of transshipment locations), and incompatibility settings. The Master Data section covers the Transportation Network/Geography, which includes locations, transportation zones, transportation lanes, transshipment locations, and resources (means of transport, vehicles, vehicle combinations, and schedules). The Selection Profile section outlines the Geographical Selection Attributes (using any attribute of the locations or zones for transportation requirements), Time-Related Selection Attributes (pick-up and delivery time windows), and Additional Selection Attributes (additional selection attributes and additional flexible filters). The image provides a comprehensive overview of the key components and settings involved in transportation planning and selection within a logistics management system.
Selection Options
The image shows a diagram of selection profiles with three possible attributes: Geographical Selection Attributes, Time-Related Selection Attributes, and Additional Selection Attributes. The Geographical Selection Attributes section displays a globe-like icon, representing the geographical factors considered in the selection process. The Time-Related Selection Attributes section shows a clock icon, indicating that the selection process considers time-related factors. The Additional Selection Attributes section depicts a Venn diagram, suggesting that the selection process involves considering additional attributes beyond the geographical and time-related factors. The overall diagram provides a visual representation of the different aspects that are taken into account in the selection profile, highlighting the multifaceted nature of the selection process.

Selection profiles determine which items are brought up for planning in the transportation cockpit.
Selection Objects

Selections can be made on several objects, including those outlined in the following list:

    Freight Unit (Stages)
    Transportation Units
    Freight Orders
    Freight Bookings

Selection attributes include geographical selection (using any location or zone attribute) and time-related selection attributes, such as pickup and delivery windows.  

Additional selection attributes such as statuses (for example, planned or unplanned freight units) can be considered.  An example of an additional selection attribute might be the product's nature, such as freight unit type or dangerous goods.
Geographical Selection Attributes

In a company’s planning department, geography is often used to allocate planning responsibility.  For example, an individual or team might be responsible for a specific plant, distribution center, or group of customers in a geographical area.  The geographical selection attributes in the selection profile allow the team to limit their view so that they only see FUs or FOs for which they have responsibility. 
Time-Related Selection Attributes

You define the demand horizon in the time-related selection attributes that you assign to your selection profile. You can define a demand horizon for pickup and a demand horizon for delivery. The system chooses all freight units and freight orders whose pick-up date/time or delivery date/time lies within the relevant demand horizon.
Additional Selection Options

You do not have to use selection profiles, typically pre-defined, to select objects for planning. Suppose you need to plan on the fly without a selection profile. In that case, you can also choose freight units from a worklist or use the second entry screen of the transportation cockpit to define selection criteria. These selection criteria do not only include freight unit(s) (stages) but allow you to select other documents (like container units and freight orders) as well as capacities (like vehicle resources or schedules) and configuration (like the planning profile and page layout).
Profile and Layout Sets

    Profile and layout sets are used in several apps:
        Transportation Cockpit
        Carrier Selection
        Delivery Builder
    Profile and layout sets define
        Data to read (for example, freight units)
        Settings (for example, planning profiles)
        Page layouts

The profile and layout set (PLS) management applications enable an administrator to centrally create and manage PLSs for a team or organization and assign users to them. This approach simplifies working with PLSs by removing the need for individual users to create and maintain their own. When an administrator creates a PLS and assigns a user, the PLS is available for the user to select on the relevant application start screen.

When creating a PLS, the following recommendations should be considered:

    Transportation cockpit:

    You are recommended to enter a selection profile for freight units and a planning profile to which you have already assigned a selection profile for freight orders and freight bookings.

    Optionally, you can also specify incompatibility settings and settings for capacity selection. If you have already assigned incompatibility settings or settings for capacity selection to the specified planning profile, the system overwrites these settings with the settings you specified here.

    The system considers the profiles you specify in your PLS for all planning options available in the transportation cockpit.

    Note

    In the transportation cockpit, the user can use the Change Planning Settings function to temporarily change the planning and load planning settings in the selection profiles. The system discards these changes when you leave the transportation cockpit or change the profile selection.

    Carrier selection:

    You are recommended to enter a selection profile for freight orders, freight bookings, and carrier selection settings.

    Creating delivery proposals:

    You are recommended to enter a selection profile for freight units, freight orders, freight bookings, and a delivery profile.

# Transportation Activities
This diagram shows a road freight order's inbound and outbound processes. The order involves multiple stops with loading and unloading activities. Starting from the bottom left, the inbound process begins with a Drive step, followed by Prepare. Then, three freight units (FU3, FU4, FU5) are unloaded. This sequence represents the Last Stop of Road Freight Order. Moving upwards, the next level depicts an Inner Stop of Road Freight Order. Here, after Drive and Prepare, two freight units (FU1, FU2) are unloaded. The top part illustrates the First Stop of Road Freight Order. After a Drive step, the process involves loading three freight units (FU1, FU2, FU3) and concludes with Finalize. The outbound process, starting from the top right, consists of Finalize and Drive steps. The diagram uses horizontal arrows to indicate the flow of activities and vertical lines to separate different stops. Color-coded boxes represent various actions: green for Drive, yellow for Prepare and Finalize, and gray for loading/unloading freight units. A red dashed line separates the inbound process on the left from the outbound process on the right.

Scheduling in SAP TM involves the following activities:

    Drive / Travel
    Load
    Unload
    Prepare
    Finalize
    Couple
    Uncouple

The duration of the individual activities is defined in the transportation network (travel) and in the scheduling settings of the planning profile (load, unload, prepare, finalize, couple, uncouple).

Scheduling in the transportation cockpit or freight order considers the following constraints:

    Time windows for loading and unloading activities for your freight units
    Loading and unloading durations of your freight units
    Appointments for the freight order your freight units are assigned to
    Location sequence of your freight order
    Existing freight orders on resources
    Coupling and uncoupling durations
    Absences and non-working times of the involved drivers
    Downtimes and non-working times of the involved vehicle resources
    Calendar resources, as well as the calendars and capacities for the loading and unloading activities of handling resources
    Calendars of the involved vehicle resources and drivers for loading, unloading, transportation, coupling, and uncoupling activities
    Minimum and maximum goods wait times defined for transshipment locations

Transportation Cockpit
Business Example

John is a logistics coordinator at a shipping company, and needs software that will manage his company’s shipments. He needs the ability to view all of his customer’s domestic and international export orders, and consolidate them to ship as efficiently as possible. To accomplish this, he needs an easily managed dashboard to plan his orders. For some shipments, John uses automatic planning, but he still needs to verify the result of the optimizations. For other shipments, he needs to plan the transport requirements manually. Therefore, Depending on the scenario, he requires different information and functions to be available at different times. The specific and differentiated presentation of information possible in TM allows him to plan efficiently.
Transportation Cockpit
A screenshot displays a Transportation Cockpit on a computer screen. The cockpit provides a comprehensive view of transportation and logistics operations. The screen is divided into multiple sections: - The left side features two large tables displaying detailed information about freight orders, including order numbers, dates, times, and statuses. - The top-right quadrant shows a map with a plotted route marked with several stops. A sidebar next to the map lists various route details. - Below the map, a table presents data related to load planning, outlining details about the cargo and its distribution within a truck. - In the bottom-right corner, a 3D model of a truck visualizes the cargo load distribution. This interface allows users to monitor and manage transportation processes, track shipments, optimize routes, and analyze logistics data in real-time.

Amongst others, the transportation cockpit includes the following elements:

    Requirements list (freight units)
    Capacity lists (vehicle resources and schedules)
    Order list (freight orders, but may also contain freight bookings as transactional or agreed capacities)
    Order details

Tasks in the Transportation Cockpit

The transportation cockpit is a central element in the transportation planning process and facilitates numerous tasks.

The transportation cockpit can be used for the following tasks:
Transportation Cockpit Tasks

    Manual planning
    Creation of transportation proposals
    VSR optimization
    Load planning
    Carrier selection
    Triggering of a tendering process
    Creation of delivery proposals
    Creation of freight bookings

The cockpit requires users to enter multiple profiles that dictate the content of the generated result lists. The selection profile specifies which freight units or freight orders are relevant for a particular objective. The planning profile outlines how the selected freight units will be planned. Additionally, the capacity selection profile limits the planning run based on the transportation resources that are available for use.

Once the profiles are determined, planners can utilize the cockpit to create freight bookings or manage existing freight orders. The layout of the transportation cockpit offers flexible settings that control the information displayed and the available processing options. A combination of selection and planning profiles and a layout can be assigned to a specific profile and layout set. This ensures that each planning scenario is consistently shown in the designated layout, while another can utilize a different layout.

For instance, in one scenario, a planner might need to plan for liquids being transported in tank trucks and would need to see the volume of the product. In another scenario, the liquids might be in barrels on pallets, requiring the planner to see the pallet count instead. Switching between different layouts on the fly is possible, especially if a multi-step planning process leads to varying needs at each stage.
Transportation Cockpit: Standard Layout

In the standard layout, the main screen is divided into four quadrants (views). The maximum number of views in any layout is 6. The standard layout contains the following views:

    Freight units to be planned
    Available capacities that can be used for planning
    Freight order/booking list
    Freight order/booking details

Each view has processing options using menus and buttons within the views. Processing options include the following actions:

    Merge / split freight units
    Apply default routes to freight units 
    Remove resources from freight orders
    Cancel freight orders
    Schedule and check freight orders

Each menu or button can be personalized in the planning layout definition.

Watch the simulation Define Saved Searches and Views in the Transportation Cockpit to learn more about how you can navigate the transportation cockpit and adapt its views to your needs.
Exercise
Start Exercise
Freight Planning on Multiple Screens
A woman with shoulder-length brown hair sits at a desk facing away from the camera, working on a logistics and transportation management system. She is positioned between two large computer monitors and has a laptop in front of her. The left monitor displays a detailed spreadsheet with color-coded entries, likely representing freight orders and their statuses. A notebook screen shows a 3D model of a truck with cargo. The right monitor shows a map of the United States, with a route marked across several states, indicating a shipment's journey. The woman's body language suggests focus as she analyzes the information on the screens, highlighting the importance of technology in modern supply chain management.

If a user works with several screens, they can choose a separate layout for each screen. The transportation cockpit can be deployed in multiple windows on up to three screens.
Planning from the Cockpit
Automatic Planning

Both manual and automatic planning are provided for in the cockpit. In relation to automatic planning, transportation proposals can be generated automatically and the optimizer allows planners to plan requirements onto resources and freight bookings or orders. Optimizer planning also creates detailed log information that can be analyzed using the explanation tool.
Manual Planning

The following options exist for manual planning:

    Drag a freight unit onto a resource, thereby creating a new freight order. Add resources/MTrs.
    Drag a freight unit onto a freight booking, thereby adding the freight unit to this freight booking.
    Drag a freight unit onto a freight order, thereby extending the freight order.
    Command line planning and buttons provide additional options on top of the drag and drop functionality.

This video introduces the integration of Business AI in cloud-based ERP solutions with the example of conversational planning being integrated into SAP Transportation Management.

Conversational Planning with AI

Conversational Planning with AI* is embedded in the transportation cockpit (*some contractual requirements apply for use of AI-based functionality). AI-powered conversational planning can assist a planner in making manual planning decisions. The transportation cockpit user interface is enhanced with a natural language conversational interface that allows users to seamlessly perform UI actions, execute multiple commands, and retrieve planning context information (that might not be displayed in the cockpit).

Commands can be either typed or spoken, and contextual information available in TM data can be automatically retrieved. Data that is not available in TM, but only in an LLM, can also be used; an example of such commands is "Plan all products that need to be refrigerated and transported to the city of Berlin on the smallest truck".

This new way of working enables a completely new way of interacting with TM in the transportation cockpit, delivering flexibility, efficiency and broader accessibility.
Interactive Planning
Interactive Planning on the Map
A screenshot of a computer screen displaying a map of the eastern United States. The map shows a route from Louisiana to Michigan with several stops along the way. The software allows users to interactively plan freight shipments by assigning freight units and orders to resources, adding intermediate locations, and searching for nearby locations. Users can interact with the map using drag-and-drop functionality and context menus.

Interactive planning on the map allows you to:

    Assign freight units/freight orders to resources
    Add an intermediate location to a freight unit or a freight order
    Search by proximity
    Show related transshipment locations

Options

    Drag and drop
    Context menu

The map can be displayed in a separate screen area in the transportation cockpit or in full screen. However, having the map displayed in a separate screen area enables the planner to see the selected freight units, freight orders/bookings, transportation units, and resources on the map directly.
Display Options

When you display the map, you can choose whether all of the planning objects or only selected ones will be displayed. Furthermore, in a display profile, you can choose which planning objects will be displayed on the map, such as freight orders or freight units. You can call up the display profile with the toolbar.
Planning Functions

You can carry out your planning on the map. If, for example, you select unplanned freight units and start planning from the context menu, the system shows the possible assignments of the freight units to the resources. Select the assignments that you require.

You can also assign unplanned freight units or multi-relations containing unplanned freight units to resources using drag and drop. When you do so, you can either assign the freight units to the resource or the resource to the freight units. You can use the proximity search in the context menu to find unplanned freight and transportation units within a specific radius of a resource or location.

If you want to split a stage displayed on the map, you can assign an unplanned freight unit or multi-relation to a location using drag and drop. Once you have selected the required planning option, the system will add the chosen location to the freight unit stage and update the map accordingly. This process also applies to freight orders. You can also display transshipment locations that are not necessarily part of your planning activities. You display these locations by choosing Show Related Transshipment Locations from the context menu.

If a freight order does not have a vehicle assigned to it, you can assign it by using drag and drop. To do so, you assign the freight order to a single vehicle resource or a multi-spot containing at least one vehicle or passive vehicle resource and select the relevant planning option from the menu. You can use the proximity search in the context menu to find available resources within a specific radius. You can also specify the exact position of a resource at any time in the context menu of the map. The system displays all of your transportation planning activities on the map. When you leave the display of the map, your planning activities are also displayed in the table view of the transportation cockpit.
Context Menu Options
Address Search

You can use the context menu of the map to start the address search and display the search results on the map. The address search is based on the geocoding of the location. This allows you to perform several address searches and display the search results simultaneously on the map. You can use the context menu of the map to hide the search results individually or entirely.
Route Display

You can use the context menu of a connection line to determine a route display along actual street routes (georoutes). This function is dependent on the geographical information system available in the system. Alternatively, you can use a resource's context menu to display the connection lines of all freight orders assigned to this resource.
Gantt Chart: Display of Resources and Documents
A screenshot of a computer screen displaying a Gantt chart visualizing transportation logistics. The chart shows the usage and load utilization of trucks and trailers, downtimes, execution status of freight orders, and notifications for overload or time conflicts. The software provides time zoom functionality, aggregated and detailed views, hierarchical views, and single or dual view options (horizontal and vertical) for comprehensive analysis and planning of transportation operations.
Gantt Chart

Visibility:

    Usage of trucks and trailers
    Load utilization of trucks and trailers
    Downtimes and nonworking times
    Execution status and reported times for freight orders, trailer units, and their activities
    Notifications for overload, empty movements, and time conflicts

Usability & Flexibility:

    Time zoom in and out
    Aggregated and detailed view
    Hierarchical views
    Single and dual view (horizontal and vertical)

When performing transportation planning, a planner usually considers two main aspects: availability of resources and utilization of the used resources. With the conventional use of the transportation cockpit, the sequential order of freight orders using a particular resource and resource availability for a specific timeframe is not (graphically) shown. Using a Gantt chart, often used in project planning as well, helps to visualize the availability of resources and the sequential order of transports. The Gantt chart is fully integrated into the transportation cockpit.

Transportation planning can now also be done using a Gantt chart. In the Gantt chart, freight orders and vehicle resources are displayed as a time bar, and planners can manually plan transports using drag and drop.

The Gantt chart provides a visual platform for performing transportation planning. With an intuitive and graphical user interface, the Gantt chart enables you to perform transportation planning visually, interactively, and more efficiently.

The Gantt chart is a screen area in the transportation cockpit, which can be enabled in a page layout. All standard functionalities, such as positioning the Gantt chart anywhere on the transportation cockpit and maximizing the screen area to full screen, are available in a Gantt chart.

The Gantt chart displays planned and unplanned freight orders and resources in a time bar. It is configurable; additional sets of information should be displayed next to the time bar. The time bar itself shows the activities planned for the document and resource. Depending on the layout chosen, the planner can use a single view, which only indicates planned and unplanned freight orders or resources exclusively, or a dual view (as shown in the figure, Gantt Chart: Display of Resources and Documents) that displays two entities next to each other. Similar to the dual view in the transportation cockpit, the dual view can be configured vertically or horizontally. The scrollbars of both screen areas can be synchronized.

A zoom bar on top of the screen area can zoom in and out to see a more detailed view of a day or week or a more general view of a month.

An essential factor for transportation planning is the utilization of a vehicle. The utilization of the vehicle can be displayed with the utilization view, which can be enabled when needed. The utilization view shows the utilization of the vehicle over time in a graph. The graph is displayed in a detail line below the actual resource or document. In this case, the single-view option is chosen, which enables the user to see all the execution information on one screen. Multiple loading acts are only displayed as one item in the Gantt chart. This keeps the chart clean and easy to understand.
Gantt Chart: Interactivity and Planning Scenarios

The main benefit of this functionality is a good overview of the status of the trucks. Re-planning can be done by drag and drop. Freight orders can be fixed or unfixed by just clicking one button. Furthermore, navigating directly to the resources or trailer units is possible.

The main focus is the planning of road transport. The truck and trailer planning can be done easily. When execution events change the planning necessary, this can be immediately done via this overview.

Interactive planning can be performed in the Gantt chart using drag and drop. Unplanned freight orders can be assigned to resources. Likewise, resources can be assigned to freight orders. The freight order is dropped on the resource time bar. If the freight order is not dropped on the same date it was initially planned, the date where it was dropped is taken over into the freight order. Scheduling is only performed when requested using the Scheduling button on top of the Gantt chart. The dual-view can be selected to display unplanned freight orders on top and the available resources below. This enables the user to work with one window to plan freight orders. The dual view can either be displayed horizontally or vertically. The size of each area can be changed by dragging with the mouse.

The Gantt chart enables the planning of unplanned freight orders by dragging on vehicle resources and creating transportation units. When dragging and dropping the loading activity of one freight order into the time bar of another freight order, both freight orders are combined.

Overlap means a resource has been planned multiple times and is therefore not executable. For example, if a trailer is already scheduled and newly planned during the next step, an overlap is caused, which is displayed as a red line to the user.

Similar to the utilization view, an overlap view shows if several documents on a resource overlap. This overlap can be overcome by scheduling the resource.

Watch the simulation Perform Interactive Planning to learn more about interactive planning options in the transportation cockpit.
Exercise
Start Exercise
Driver Management Overview
A table illustrating different driver assignment types. The table highlights the relationship between the number of drivers required and the assignment type, showcasing how stages are managed in each scenario.

Drivers can get assigned to existing freight orders and vehicle resources. It is also possible to create freight orders to which the system assigns drivers automatically as soon as they are created. This function is available only for road freight orders and trucks. One or more drivers can be assigned to an existing freight order or to the individual transportation stages of an existing freight order. In a driver team, the individual drivers take turns driving—the person not driving sleeps.

A prerequisite of this process is that drivers are created as business partners with business partner role Driver. The properties of the driver are as follows:

    Home location
    Organizational Unit
    Validity Period
    Absences (for example, sickness, vacation)
    Non-working times (for example, shift sequences from Monday to Friday)
    Last planned location and availability time
    Qualifications

Automatic Assignment of Drivers

Automatic assignment of drivers to freight orders happens if the driver assignment is requested via the freight order type and the driver is assigned to the resource master data of the vehicle resource as the default driver. Other than that, manual assignment of drivers is possible in the transportation cockpit as follows:

    Drag and drop:

    It is possible to drag and drop drivers from the list of drivers in the transportation cockpit to the freight order being planned in the road freight order hierarchy or in the road freight order list. Suppose it has been specified in the freight order type that drivers have to be assigned per transportation stage. In that case, it is possible to drag and drop drivers in the road freight order hierarchy to the individual transportation stages.

    Manual creation and change:

    It is possible to enter or change drivers manually in the Driver column in the road freight order hierarchy or in the road freight order list. If specified in the freight order type that drivers have to be assigned per transportation stage, it is possible to enter or change drivers for individual transportation stages in the Driver column in the road freight order hierarchy. Suppose the driver assignment has been activated in the order details area in the layout of the transportation cockpit. In that case, it is possible to select a freight order in the road freight order hierarchy or in the road freight order list and manually enter or change a driver in the details for this freight order.

    Dialog box:

    Finally, it is possible to select a freight order in the road freight order hierarchy or in the road freight order list and choose the Assign Driver button. A dialog box appears in which drivers can be entered. Then, the user can decide in the dialog box whether to replace the currently assigned drivers with new drivers or add drivers to the existing ones.

# Transportation Proposal

A transportation proposal defines how a freight unit can be transported through a transportation network (which is defined by locations, transshipment locations, transportation zones, transportation lanes, vehicle resources, schedules, and bookings). The system determines a set of alternative transportation proposals for a given transportation demand (freight unit). Transportation proposal functionality serves two purposes.

The first and most obvious purpose is to help the user identify the different transportation options for a freight unit. In a complex network where end-to-end transportation requires several stages, transportation proposals are an easy way to make the different options transparent. Transportation proposals can differ in routing, means of transport, and time required. Each of these variables can increase or reduce costs, and the proposals thus provide the planner responsible with the necessary information to make an appropriate choice.

Secondly, transportation proposal functionality can be used from the freight unit to create the stages upfront, for example, to choose the option of ocean transport because this is the cheapest choice. In this use case, no freight orders are created based on the result of the proposal, but only the stage information is stored. This allows the task of planning the different stages to be assigned to different planners and completed at different times.
The image shows a world map with several locations marked, including Chicago, New York, Hamburg, and Munich. The locations are connected by blue lines, indicating transportation routes or connections. The map depicts a transportation network, with Chicago and New York in the west and Hamburg and Munich in the east. The blue lines connecting these locations suggest the movement of goods or services between these cities. The image also includes icons representing different modes of transportation, such as a ship icon near Hamburg, indicating a potential seaport or maritime connection. Overall, the image appears to be a visual representation of a transportation or logistics network, highlighting the interconnectedness of various locations and the potential for moving goods or services across these routes.
Entry Points for Transportation Proposal Determination

Freight Unit→Stages→Route→Transportation Proposal

Transportation Cockpit→Select Freight Unit→Transportation Proposal
Layout of the Transportation Proposal Result

The layout of the transportation proposal result screen can be configured in a way that is similar to the transportation cockpit layout. The results can be displayed in a table format or visualized on a map. In the table-based layout, each stage is shown in a separate line. In complex networks, there could be millions of routing options for a given transport, with only minor differences between them. Depending on the objective of the planner, results can be presented according to defined criteria, as follows:

    Lowest cost

    Shortest duration

    Carriers assigned

    Departure days

    Routes

Features of the Transportation Proposal

The features of the transportation proposal are as follows:

    Implicit definition of transshipment locations by schedules and freight bookings (simplified definition of transportation network)

    Mode of transport constraints on freight unit and freight unit stage level

    Fast determination of transportation proposals, yielding more alternatives according to predefined variation criteria (for example, route, carrier, departure date) and trade-off between time and cost (controlled variation according to predefined criteria)

    Consideration of preferences for locations, carrier, mode of transport, dates, and times

    Display of multiple solutions on the result map

    Rough planning (detailed planning on the main leg and rough planning for pre-leg and subsequent leg, based on rough definition of transportation durations)

Watch the simulation Assign Transshipment Locations and Generate Transportation Proposals to learn more about the definition of transshipment locations, the creation of transportation proposals, and how to compare them.
Exercise
Start Exercise
Vehicle Scheduling and Routing Optimizer
Business Example

In his role as an SAP transportation consultant, John has been requested to explain the benefits of freight orders and how they can be created using optimization criteria. John must describe the principles of vehicle scheduling and routing (VSR) optimization used in TM.

Freight orders represent a single shipment or load departing from one of your facilities (outbound scenario) or arriving in one of your facilities (inbound scenario). For example, the freight order can be created manually or automatically using the vehicle scheduling and route optimizer. Freight orders are the basis for carrier selection, tendering, and freight settlement processes. These topics are covered in separate lessons.

Note
A freight booking can also be created due to transportation planning, similar to a freight order. For the sake of simplicity, only the term freight order is used subsequently.
Freight Orders in Transportation Planning
The image depicts a diagram of three freight units shown at the left to be planned by the vehicle scheduling and routing optimizer shown in the center of the image. On the right side of the diagram, two freight orders are shown as a potential VSR optimizer result. It is suggested that the first freight order contains the first freight unit, while freight units two and three are combined to form a second freight order.

In a freight order, freight units from different transportation demands (SO/PO/DEL/OTR/DTR/FWO) can be consolidated. The VSR optimizer aims to find the lowest cost solution based on the freight units planned, the transportation network (as defined in master data), and, for example, the costs defined in the relevant planning profile.

As the name suggests, the vehicle scheduling and routing (VSR) optimizer considers routing and the sequence in which resources arrive at specific locations (as well as the scheduling of tasks running in parallel). It evaluates potential changes to the routing and the effect such changes would have on scheduling, helping to avoid the possibility of delayed deliveries and follow-on costs.

Essentially, the optimizer's goal is to assign freight units to vehicles/resources and determine the route and sequence of freight units per vehicle/resource so that all constraints are met and total costs are minimized. The optimizer achieves this goal by evolutionary local search, a population-based meta-heuristic that borrows selection principles from evolutionary algorithms and relies heavily on local optimization.

A more evident example of how the optimizer works is its approach to potential date changes. When a date change occurs, the optimizer applies this change to all freight units on the affected vehicle or resource and dependent freight units on any other resources. This method helps determine the best possible choice. The optimizer also considers multiple factors simultaneously for other variables, such as transshipment locations. This comprehensive analysis is essential for developing effective plans or improving existing ones.
Costs and Constraints

The total cost, which the optimizer is designed to minimize, is a weighted sum of the following items:

    Non-delivery/execution penalty (per FU)
    Earliness and lateness penalty (per FU)
    Fixed cost (per vehicle or tour)
    Travel-dependent costs (per capacity), for example, distance, duration, etc.
    Load-dependent costs (per capacity and tour)
    Sustainability costs such as CO2 emissions

Optimizer Constraints

The optimizer can consider various additional constraints, as follows:

    At some locations, a handling resource for loading or unloading may be necessary, with attendant breaks or delays.
    The transshipment time of an order at a specific location can be restricted by a minimum and maximum duration.
    There may be incompatibilities between orders, vehicles, (transshipment) locations, and so on, which must be considered.
    Driving times of vehicles may be restricted. For example, a planner can define that after 8 hours of travel, a driver needs a 2-hour break and that 10 hours is the maximum daily traveling time.

The image depicts a diagram that illustrates the various components and constraints involved in a Vehicle Scheduling and Routing (VSR) Optimizer system. Surrounding the central component of the VSR optimizer are various elements, including the Schedules Freight Bookings, Compartments, Vehicle Capacity, Vehicle Combinations, Depot Location, Pickup / Delivery Time Windows, (In-)Compatibilities, Scheduling Constraints, Handling Resources, Opening Hours of Locations, Min. / Maximum Storage Time at Hub, Preparation / Finalization Time, Loading / Unloading durations, Limits on Distance, Duration, Stopovers and finally ADR Points.

The VSR optimizer primarily operates based on freight units. When there are unplanned freight units, the optimizer searches for available capacity to transport them. As a result, it creates freight orders or freight bookings. If the VSR optimizer is tasked with maintaining existing freight orders but can modify them, guidelines must be provided on how these changes can be made. This process is known as incremental planning for freight orders.
Cost and Constraints Settings

The cost and constraint settings of the planning profile contain input for the optimization cost. These are internal costs and are not related to a particular currency. The following settings can be made:

    Non-delivery cost: This is (business-wise, not technical) a mandatory entry. The algorithm used in the optimization takes non-delivery into account. If there are no costs for non-delivery, the system will deliver nothing since this is the cheapest solution. Therefore, a cost setting for non-delivery must be maintained.
    Earliness and lateness cost: Sometimes, it is more cost-effective to deliver early or late if this means the route/trip can be completed. This setting controls the period for early or late pickup and delivery.
    Means of transport or resource-specific cost: This setting controls the cost concerning means of transport, and a break-even calculation can be made to determine the means of transport used. For instance, rail is cheaper than road for large volumes of weighty goods. These costs can be defined for individual resources (based on vehicle resource master data) or groups of similar resources (based on means-of-transport level).
    In the Costs and Constraints Settings, it is allowed to define the minimum target utilization of a means of transport to be considered when road freight orders are created during VSR optimization. Furthermore, whether this utilization is a hard or soft constraint can be specified. As a soft constraint, the target utilization may not be reached, and a warning will be issued in this case. This setting controls whether freight documents not meeting the desired target utilization are kept or deleted after the optimization run. As a hard constraint, the target utilization is always considered so that freight units may remain unplanned. Note that maintaining a minimum utilization is not a constraint in the optimization algorithm itself but rather a check performed on the result.

Incremental Planning

In incremental planning, the following options are available:

    The optimizer keeps the resource (truck or trailer).

    The optimizer keeps all stops of an incremental freight order.

    The optimizer keeps all freight units of such an incremental freight order.

    It is possible to specify whether additional new stops to an incremental freight order are allowed.

If more control over the incremental planning is required, there is a BAdI before the optimization call. Here, each freight order can be flagged separately for incremental planning. Additionally, there are the following options:

    Define time frames for how much change is allowed in rescheduling.

    Define if it is allowed to add stops as first or last stop or only between.

    Define which locations are potentially allowed to be inserted and which are not.

How incremental planning can be controlled is described in note 1866364.
Planning with CO2 Emissions as a Constraint
Planning with CO2 Emissions as a Constraint

Given this focus on environmental topics, and transportation's key contribution to an organization's carbon footprint, Transportation Management allows you not only to report on greenhouse gas emissions but also to consider them as a constraint during manual planning and vehicle scheduling as well as routing optimization for road transport.

This video introduces the importance of the topic of sustainability and how SAP Transportation Management enables the calculation of greenhouse gas emissions.

# Load Planning

You can plan the loading space of box trucks, trailers, semi-trailers, and containers in the transportation cockpit or directly in one of the following business documents:

    Road freight order
    Trailer unit
    Container unit

Planning is carried out at the level of business document items.

Note

Load planning returns an approximate calculation of how the available loading space can be optimally used, considering the maximum axle loads and the maximum weight of a vehicle resource. The calculation is based on the master data you enter for the resource. You must check the results calculated during load planning.
The image shows a diagram of a load planning system. The left side lists the system's key features, including loading pallets into trucks, trailers, and containers, as well as rules-based load optimization considering dimensions, axle weight constraints, stacking rules, and LIFO loading. The right side displays a 3D visualization of a load plan.

Take the following business scenario: Katie is working in the road department of a logistics service provider (ABC Company). She plans hundreds of road freight orders on trucks every day. Previously, the system has supported her by comparing the total weight and volume of the cargo and the truck. However, in some cases, cargo has been left at the warehouse because carrying it would contravene the guidelines of the truck (for example, axle weight distribution). Katie requires system support that optimizes the load plan regarding weight, dimensions, stackability, axle weight distribution, and further rules. This support would enable her to create a detailed load plan that could then be used in the warehouse to guide the loading of the truck. The load planning functionality of TM provides this support.
Load Planning as Part of the Planning Process
The image depicts a process flow for freight transportation, starting with a Forwarding Order/Delivery-Based/Order-Based Transportation Requirement. This leads to a Freight Unit Building (Rule-Based) step, which creates Freight Units. Transportation Planning (Manual or Optimizer) occurs, followed by Freight Order/Trailer Unit/Container Unit. Load Planning (Rules-Based Optimizer) determines the physical positions of the load in the truck/trailer/container. The image also notes that package building can be included, and the process respects weight and volume constraints.

When you plan a road freight order on a box truck, trailer, or semi-trailer, the system considers capacity restrictions regarding the height, width, length, and weight of the loading space. The same capacity restrictions also apply to planning a trailer unit on a trailer or semi-trailer. It also takes into account the maximum axle load of your box truck. Furthermore, in the system, you can add a split deck to your trailer or semi-trailer and plan two decks. When you plan a container unit on a container, the system also considers capacity restrictions in terms of the height, width, and length of the loading space, as well as the total and empty weight of the container. In both the transportation cockpit and the freight order, you can check the results of load planning as a 3D load plan or a table load plan in the form of a list of business document items. In the 3D load plan, you can show or hide individual objects and entire rows, columns, or stacks. The systems also provide information about the loading space's current load distribution and utilization.
Load Plan

The load plan is the result of load planning. It provides an overview of the current loading space available for transporting a business document. In both the transportation cockpit and the business document, you can display the complete load plan as a 3D or table load plan of business document items. You can show and hide grid lines in your decks in the 3D load plan. You can also show and hide individual objects and entire rows, columns, or stacks and fill them with different colors.

The load plan contains the following information about the business document item:

    Resource

    Item in the resource

    Loading sequence

    Row, stack, and level in the loading space

    Gross weight

    Height, width, and length

    Stackability

You also get information about the load distribution and additional statistical data about the current load on separate tab pages. This includes the following:

    Number of loaded business document items

    Used area on the lower deck of your double-deck trailer

    Utilization of the loading volume as a percentage

    Used area on the upper deck of your double-deck trailer

    Maximum weight for each axle group compared to the current weight for each axle group

    Maximum trailing load compared to the current trailing load

3D Visualization

The visualization gives the planner an enhanced overview of the truck's loading. The planner can rotate the view, hover the mouse over particular items to see more information about the items, and they can hide or unhide special items to get a complete impression of the current loading.

In the 3D load plan, you can adjust a load plan manually using buttons in the toolbar or keyboard shortcuts to move products and packages onto a truck. The status and the axle load are adjusted accordingly. You must have selected the Activate Manual Load Planning checkbox in Customizing for Transportation Management under Basic Functions→Load Planning→Define Layouts for 3D Load Plan. You can also define in this Customizing activity which combination of keys execute which command and how far an object should be moved (length of the movement increment).
Load Optimization Functionality
The image shows a forklift operator loading pallets in a warehouse. The text lists the common restrictions observed during load optimization, including weight, dimensions, stackability, axle weight distribution, further rules, priority of rules, location of unloading according to the First In Last Out principle, and which freight units belong together.
Load Planning Prerequisites concerning master data

You have specified capacity details in the Resource Master Data for the truck on which planning is to take place. The optimizer cannot perform the load planning if the relevant dimensions are not maintained. The optimizer and the 3D-Visualization for the load planning use the dimensions maintained here.

Concerning the last point, the following data is critical:

    Capacity

        Mass: Gross vehicle weight

        Internal length: length of loading space

        Internal width: width of loading space

        Internal height: height of loading space

    Physical Properties

        Tare weight: empty vehicle weight

        Cargo body distance: from the front of the truck to the beginning of the loading space

    Axle Group

        Axle type: single, tandem, triple, and so on

        Axle group distance: distance from front of truck to axle

        Dist. between axles: relevant in case of more than one axle

        Max weight on group: maximum weight on axle group

        Emp. weight on group: weight of empty vehicle on axle group

    The load planning settings and rules. In the load planning settings, you can maintain specific rules that the optimizer considers during the load planning run, such as height difference within a row, maximum deviation, and so on. You can set each rule as active or inactive and prioritize the list of rules.

Load Planning Settings
The image depicts a Planning Profile, which includes various settings and configurations related to Capacity Selection, Optimizer, Load Planning, Planning Cost, Incompatibility, Carrier Selection, and Manual Planning. Load Planning settings are highlighted, and details such as Optimizer/Algorithm Control Settings, Load Planning Strategy, and Load Planning Rules are listed.

The rules that the load optimization algorithm should observe are defined in the load planning settings of the planning profile.
Load Planning in the Transportation Cockpit

When entering the transportation cockpit, select the appropriate planning and selection profile. The example layout in the figure shows a list of all selected freight orders in the top area. You can see the Load Plan tab In the lower area. Choosing this tab for a selected freight order shows a list with all the main cargo items along with the 3D visualization of the vehicle. Only the main cargo items of a freight order are relevant for load planning, so if you have a pallet where products are assigned as sub-items, those products are not shown in the list, only the pallets. In the case of multi-items (the item type can be defined in the freight order type), the level below the multi-item is used for load planning.

Choosing the Load Planning button (above the freight order list) runs the load planning optimization. The load optimizer fits the cargo items onto the vehicle, considering their dimensions and ensuring that no rules are broken. Using the load planning function, the planner can see immediately how much space for further items is left on the truck.

Information about the planned load is displayed in the table to the left of the visualization image and includes information on the following points:

    Position in which the item is loaded (loading sequence) on the truck
    The stack, row, and level on which the item is loaded
    Weight
    Dimension

Watch the simulation Generate a load plan to learn how to check relevant resource master in the resource viewer and create and review a load plan in the transportation cockpit.
Exercise
Start Exercise
Load Consolidation

Load Consolidation is an extension of load planning. In load planning, the assignment of a set of packages to one truck, trailer, or container has already been decided before, and the decision to be made is on how to place the packages within the one truck, trailer, or container. The planning problem for load planning can be described as follows:

    Given a set of packages and multiple trucks, trailers, and containers, how do you assign the packages to the available trucks, trailers, and containers?

    How do you place the packages in the assigned trucks, trailers, and containers?

The image depicts a transportation process from Mannheim to Chicago. It shows the steps involved, including package building, load consolidation, vehicle scheduling and routing, and transportation between Mannheim, Hamburg, Newark, and Chicago. The key questions to be answered are: how many pallets and types are required, how to group the product quantities into pallets, how many containers and types are required, how to load the pallets into the containers, and how to transport the containers.

Load Consolidation offers the following:

    Optimizer-based, automated assignment of a given set of freight units to resource types

    Determination of the number of resources to be ordered / to be used

    Focus on planning the main route where no routing decision has to be made

Load Consolidation supports the following:

    Alternative resource types (for example, 20 ft, 40 ft, 40 ft High Cube Container)
    Limitation of the maximal number of available instances possible
    Minimization of total costs (based on defined fixed cost for usage of one resource type instance)
    Capacity Check based on given load dimensions (for example, weight and volume)
    Incompatibility between Freight Unit and Resource Type (for example, temperature condition)
    Incompatibility between Freight Unit and Freight Unit (for example, dangerous goods)
    Detailed Capacity Check (considering detailed pallet dimensions and loading space and stackability of pallets)
    Providing an exact load plan (as in load planning)

# Ocean Freight Bookings

Ocean transport has been the largest freight carrier throughout recorded history. Although the importance of sea travel for passengers has decreased due to the rise of aviation (it is still popular for short trips and pleasure cruises), it remains important for transporting goods. Freight transport by water is cheaper than transport by air. Sea or ocean transport can be over any distance - by boat, ship, sailboat, or barge, over oceans and lakes, through canals, or along rivers. Virtually any material that can be moved by water. Despite these benefits, ocean transport is less practical when speedy delivery is paramount.

Regarding ocean transport, 'general cargo' refers to goods packaged in boxes, cases, pallets, and barrels. In the 1960s, a "containerization" revolution altered how cargo was moved overseas. When a cargo is carried in more than one mode, it is said to be intermodal or co-modal.

Intermodal freight transport involves the transportation of freight in an intermodal container or vehicle, using multiple modes of transport (rail, ship, and truck), without handling the freight itself when changing modes. The method reduces cargo handling, improves security, reduces damages and losses, and allows freight to be transported faster.
The image depicts a workflow for ocean freight booking. The steps include: Create Ocean Freight Booking, Assign Schedule to Freight Booking, Send Freight Booking to Carrier, Receive Confirmation from Carrier, Confirm Freight Booking, and Freight Booking available as capacity.

Planning an ocean freight movement differs from planning a domestic freight movement insofar as the resources are often more scarce and tend to operate on fixed schedules. Schedules in TM can mimic the departure days, times, and frequency of ocean-going vessels.

One step in the ocean-bound process that is different from the domestic scenario is the use of a booking. The freight booking is intended to reserve capacity on a vessel (or aircraft). The difference between a (ocean) freight booking and a freight order is that a freight booking is equivalent to buying an airplane ticket; that is, you book capacity; a freight order is equivalent to checking in baggage and having it put aboard the plane.
SOLAS – Convention for the Safety of Live at Sea

Starting July 1, 2016, the International Maritime Organization (IMO) will enforce the Safety of Life at Sea Convention (SOLAS) requirements to verify the gross mass of packed containers.

"A packed container will not be allowed to be loaded on board vessels to which the SOLAS Convention applies unless the Verified Gross Mass (VGM) of the container has been provided to the ship’s master or his representative and to the terminal or its representative sufficiently in advance to allow for the edition of the loading plan."

VGM must be auditable.
Definitions and Explanations:

VGM (Verified Gross Mass) = The total weight of a container, including the weight of goods, packing material, and container tare.

The following two methods are allowed to determine the VGM:

    Weighing of the packed container
    Sum of weighted packages and cargo items (including the mass of pallets, dunnage, and other packing and securing material to be packed in the container) plus tare mass of the container

The VGM must be included in the shipping instructions. The company that has to report the VGM data to the carrier/terminal depends on the scenario. The verified gross mass of a packed container should be provided to the next party taking custody of the container.

Several use cases/processes are supported in SAP TM.
The image depicts a workflow for freight booking and forwarding. The steps at the LSP/Carrier include: Create forwarding order, Define cut-off date, Send confirmation and Update FWO with VGM data. The steps at the Shipper include: Create freight booking, Send freight booking (to LSP/Carrier), Receive confirmation (from LSP/Carrier), Update freight booking, Weigh container → VGM data, Update freight booking (with VGM data), Send shipping instruct. (including VGM data) to LSP/Carrier.

Watch the simulation Create an ocean freight booking to learn about the content of an ocean freight booking and how to create one.
Exercise
Start Exercise
Air Freight Bookings

Like ocean freight bookings, air freight bookings can be created in TM as capacity reservations with airline carriers. During transportation planning, they can be used as capacities. Before being shipped, air freight may be consolidated in one of two ways: gateway consolidation and business unit consolidation.
Gateway Consolidation

In the gateway consolidation scenario, the gateway (freight forwarder) receives freight from several business units or stations. The gateway is responsible for flight planning, capacity management, (de)consolidation, MAWB (Master Air Waybill) creation, and communicating directly with the air carrier. The gateway is also responsible for transfers to/from the airport. The business units consume the gateway's booking capacity. A business unit issues a HAWB (House Air Waybill) to the MAWB maintained at the gateway. As the gateway receives cargo from different business units, multiple HAWBs (forwarding orders) may be issued to one MAWB (air freight booking).
Business Unit Consolidation

With business unit consolidation, the business units have direct customer relationships and are consolidating cargo from multiple shippers. This might also include cargo from other business units. The business unit is responsible for flight planning, capacity management, consolidation, MAWB creation, and communicating directly with the air carrier. No gateway is involved (for export or import) in this scenario. The MAWB is the airfreight booking in TM, and the HAWB represents a forwarding order. In this scenario, the business unit issues both the HAWB and MAWB. In an internal co-load scenario, a booking (air or ocean) arranged by a certain business unit (BU1) is used by a separate, independent business unit (BU2) to ship their forwarding orders. The cargo (forwarding orders) of BU2 is co-loaded on the air freight booking of BU1.

# Carrier Selection Process
The image depicts the integration between an external SAP ERP/S/4HANA system and the Order Management, Planning, Execution & Subcontracting and Charges & Settlement components. It shows the key elements involved, including Sales/Purchase Order/Scheduling Agreement, Delivery, Order-based and Delivery-based Transportation Requirement, Freight Unit Building, Freight Unit, Planning/Optimization, Freight Order/Freight Booking/Transportation Unit, Subcontracting/Carrier Selection, Agreement, Calculation Sheet, Rate Table, Scale, Freight Settlement Document, and Purchase Order/Service Entry Sheet Settlement Document.

Once a freight order has been created, a shipper must choose (and communicate with) the business partner responsible for moving the product. We will refer to this as carrier selection.

The carrier is the business partner to whom you subcontract the freight order. The carrier can be different from the executing carrier, which is another business partner role that you can assign to your freight order if the carrier itself subcontracts the execution of the freight order to a third party. That way, you can differentiate between the party you contracted with and those executing the freight move.
Carrier Selection

Carrier selection is used to assign a suitable carrier to your subcontractable business documents (for example, freight or consignment orders) manually or automatically. The aim is to find a carrier with the lowest costs under consideration of the defined constraints.

In manual carrier selection, you manually assign the required carrier to your business documents. If you have configured a check against transportation allocations, the system considers this and checks the transportation capacities (transportation allocations) you have defined for the individual carriers. If, during the allocation, the system finds relevant transportation allocations without capacity or that specific rules are violated by the allocation, warning messages appear.

A separate optimization is available for automatic carrier selection. It considers selected optimization options when determining the most cost-effective carrier for all business documents you have chosen. If no carriers are available, the system does not assign any carrier to the relevant business documents.
The image depicts the Execute Carrier Selection process, which is part of the Freight Order/Booking, Transportation Cockpit, Carrier Selection, and 1-step Planning workflow. The key steps include determining carriers, checking incompatibilities, determining priority/TCM/internal costs, transportation allocations, business shares, continuous move, and Building a ranking list. This leads into another box below labelled Action, which contains the objects of Automatic Assignment, Tendering, and Manual Assignment, leading to the final step of Assigning Carrier to FOR/FB.
Strategy Options

The system takes strategies into account during the automatic carrier selection process. You define strategies either in the transportation lane or in carrier selection settings. Initially, the system considers the appropriate transportation lane for each freight order. This allows it to consider different settings in one run. Considering strategies and settings, the optimizer then creates a carrier ranking list containing the different carrier options. ​The strategy options supported are as follows:

    Cost and Priority
    Business Share
    Transportation Allocation
    Continuous Move

Costs and Priorities in Carrier Selection

In carrying out carrier selection, the system can put more weight on priorities or costs. In terms of priority, the system can determine the most favorable carrier based on your defined priorities. In effect, this means that the system chooses the carrier with the highest priority while considering the various restrictions that may be in place. Alternatively, the system can determine the carrier based on the lowest total cost. In this case, costs can refer to internal costs or charges calculated in charge management.
Carrier Selection Settings

The relevant constraints for the carrier selection process are defined in the carrier selection settings of the planning profile. Some of the decisions taken in the carrier selection settings can be delegated to the relevant transportation lanes if decisions should not be taken globally but are different for some geographical regions. The options selected here include strategies such as lowest cost, business share, and priority. Carrier selection can consider continuous move options and equipment allocations and can tender automatically based on the tendering strategy.
Business Share

Formalized firm relationships often exist with carriers in the form of contracts. These contracts can guarantee an amount of business to be allocated to a carrier. If the required allocation is not met, penalties may result. TM has the tools to track these relationships and to divide business appropriately between different carriers. This avoids dependency on a single vendor. The idea is to use a fixed percentage to dictate the assignment of jobs to specific carriers. When generating assignments, the system can also consider a carrier's capacity concerning specific routes or geographical areas.

When defining the business share context, you create business share buckets. These define the actual business share a carrier is allowed to have. Different buckets are available for business share creation - yearly, quarterly, monthly, weekly, and daily.

You can define tolerances and penalty costs concerning business share. As long as the business share for a specific carrier is within the tolerance limits, it does not affect the cost calculations during carrier ranking. However, penalties start to apply once the share allocation goes beyond a defined level. Tolerances are always defined in percentage terms. Penalties are maintained as numeric values. This number (the penalty) is multiplied by the deviation percentage (the amount outside the defined tolerance range) to arrive at the penalty cost.

Note

If you are working with carriers from multiple geographic locations with multiple currencies, the system uses the internal common currency (maintained in the carrier selection settings) for its calculations to arrive at the correct ranking. The currency displayed in the carrier ranking list is always the local currency of the carrier (the one maintained in the freight agreement).

All freight orders in a business share context are selected for the business share penalty calculations, although these freight orders are not selected during the planning run.
Business Examples

    Carrier A has a weekly bucket equating to 75% of the business share on the lane between Hamburg and Frankfurt between the validity period 03.01.2025 to 31.12.2025. In the same context, Carrier B can have a defined weekly bucket of 25%.
    A penalty of 1,000 is defined. An excess tolerance of 10% is also specified. During business share calculation, if the excess is 12%, the excess liable for penalty is 2%. This 2 is multiplied by 1,000 to arrive at the total excess penalty cost of 2,000.
    Assume that we have two carriers in a business share context: A and B. No tolerances have been defined. Carrier A is awarded 60%, and carrier B 40%. There are already ten freight orders awarded, of which carrier A is assigned six and carrier B is assigned 4. Now, let’s perform carrier selection for an 11th freight order. If carrier B is assigned this FO, carrier A will have a shortfall of business share. If the freight order is assigned to carrier A, carrier B will have a shortfall of business shares. Both options are evaluated by the system and ranked according to their suitability.

Allocation

Transportation allocations allow companies to assign defined capacity quantities to certain business partners. This includes set minimum or maximum capacity restrictions that regulate how much business is permitted with a specific carrier in a particular region for a certain means of transport. A separate business object is used to model these allocations.
Carrier Selection
Carrier Selection

When using automatic carrier selection, the system will create a carrier ranking list of the relevant carriers for a particular freight order/freight booking. Users can see various information that influenced the selection process for each relevant carrier. This could include the means of transport cost, delivery performance ratings, and others. After automatic carrier selection, the ranking list will be visible in the freight order.
The image shows three freight order/booking options with different truck illustrations and corresponding prices. Option 1 has a price of $1.100, Option 2 has a price of $1.150, and Option 3 has a price of $1.275.
Status Management in Subcontracting

The figure shows which statuses change during the subcontracting process.
The image shows the Subcontracting Process and Freight Order Statuses. The Subcontracting Process includes Carrier Assigned to Freight Order, Carrier Notification Sent, and Carrier Confirmation Received. The Freight Order (Subcontracting) Status evolves depending on the progress of the subcontracting process from No Carrier Assigned to Carrier Assigned, Sent, and finishes in Status Sent with a confirmation status Confirmed.

Watch the simulation Assign carriers to freight orders to learn about the carrier selection process.
Exercise
Start Exercise
Tendering
The image, already introduced earlier, depicts the Execute Carrier Selection process, which includes steps such as Determine Carriers, Check Incompatibilities, Determine Priority/TCM/Internal Costs, Transportation Allocations, Business Shares, Continuous Move, and Build Ranking List. The process leads to Automatic Assignment, Tendering, and Manual Assignment, culminating in Assigning Carrier to FOR/FB. For this lesson, the Action item of the Tendering activity is highlighted.

Once carrier selection has taken place, communication with the selected carrier must be initiated. This process is referred to as order tendering. Different tendering processes can be deployed depending upon the technology used by the carrier. You use this process to tender (offer) a freight order to one or more potential carriers. Tendering is a bidding process, in which you request one or multiple carriers to submit a quote for a transportation service that is defined in a freight order. You can select the carrier that you want to execute the transportation service by evaluating the quotes. The main characteristics of the tendering process are flexible configuration and the reduction of required manual interaction to support ease-of-use and lower total cost of ownership (TCO).
The image shows an example process for Tendering, which is part of the overall freight order management workflow. The steps include Freight Order, Carrier Selection and Ranking List, Freight Order Tendering with Request for Quotation (RFQ) creation and publishing, Carrier Quotation acceptance/rejection with quotation (FQ), and Freight Quotation Evaluation & Carrier Assignment, either automatically or manually with embedded analytics for decision support, leading to the final step of Freight Order Update & Sending to Carrier.

In general, there are two types of tendering. Long-term tendering is where contracts are negotiated for a longer period, for example, a year. Long-term tendering is a process that is covered in strategic freight management, which is also a functionality of TM, but not covered here. Short-term tendering is where tendering is executed based on specific orders. This is known as order tendering. TM supports the following short-term tendering scenarios:

    Peer-to-Peer Tendering
    Broadcast Tendering

The strategies for each are determined in tendering profiles in TM.
Parties and Roles in the Tendering Process

At least two parties are involved in the tendering process - a customer who wants to subcontract a transportation service that is defined in a freight order, and a supplier or carrier, who potentially carries out the transportation service. There are two roles on the customer side of the tendering process. The first is a transportation dispatcher, who is responsible for the transportation service, that is, the freight order. The second is the tendering manager, who is responsible for configuring and executing the tendering process and acquiring an acceptable quote from a carrier to perform the transportation service.
Manual and Automatic Tendering

When a transportation dispatcher initiates the tendering process, they have two options: manual process configuration or automatic tendering. If they want to tender only a single freight order, the transportation dispatcher can choose between the two options. If they initiate a tendering process using manual configuration, the tendering manager must configure and start the tendering process manually. If the transportation dispatcher wants to tender more than one freight order, they must initiate automatic tendering and use the automatic tendering configuration in the system.
Peer-to-Peer and Broadcast Tendering
The image depicts a freight order process with two main components: Peer-to-Peer and Broadcast. The Peer-to-Peer component shows a list of carriers, including Carrier ABC, Carrier XYZ, Carrier 123, Carrier DEF, and Carrier 789. The Broadcast component shows a list of carriers, including Carrier ABC, Carrier XYZ, Carrier 123, Carrier 456, and Carrier DEF. The freight order is connected to both the Peer-to-Peer and Broadcast components through RFQ (Request for Quotation) links. Additional details are explained in the following paragraphs

Peer-to-peer tendering is a process whereby freight orders are tendered sequentially or "offered" to preselected carriers. Peer-to-peer tendering involves the sequential sending of freight requests for quotation (freight RFQs) to each proposed carrier. The system waits until the carrier sends a freight quotation (FQ), or until the maximum response time has passed. If the carrier does not send a quote within the maximum response time, the peer-to-peer tendering process continues, and the system sends a request for quote to the next carrier. If peer-to-peer tendering ends without an acceptable quote, the tendering process continues with the next tendering process step that you have configured. If the carrier sends a quote before the maximum response time has elapsed, the system evaluates the quote and can either accept or reject it. In the case of rejection, a new RFQ is sent out. The process continues until at least one acceptable FQ has been received. The system awards this a Quotation Acceptable evaluation result and the process ends successfully. There are two types of peer-to-peer tendering: response required and no response required.
Broadcast Tendering

Broadcast tendering is a tender process whereby freight orders are simultaneously tendered (offered) to preselected carriers. All carriers have to respond within a given maximum response time. There are two types of broadcast tendering: best offer and first acceptable offer. Depending on which one of these is being used, either the first acceptable quote wins or, after the maximum response time, the system evaluates all the acceptable quotes and selects the carrier that has submitted the quote with the lowest price. If broadcast tendering ends without an acceptable quote, the tendering process continues with the next tendering process step that you have configured.
Freight Collaboration with SAP BN4L
Tendering Profiles

The tendering profile contains basic tendering data and is a prerequisite for automatic tendering. You can use a tendering profile when you manually create a tendering plan. Within the profile, you can define multi-step tendering. This allows a company to mix tendering types. For example, you can first use peer-to-peer tendering, and if this is unsuccessful you can use broadcast tendering. In a tendering profile, you can make settings in relation to the following options:

    Choose from tendering types — peer-to-peer, broadcasting (best offer, first acceptable offer)

    Choose from tendering processes — direct or RFQ-based
    Choose fully or semi-automatically rules-based tendering (response time and price limits, automatic retendering)
    Configure the tendering process and RFQ publishing
    Set up web-based, e-mail, B2B tendering communication
    Set up authorization-based RFQ processing and data visibility (carrier authorization to change the price and delivery dates, view tender price limit, stop date and rejection code reasons, support of free text and attachments)
    Make settings in relation to currency

Communication Methods

There are several communication methods that support the tendering scenarios. First, SAP S/4HANA Transportation Management natively supports e-mail. Requests for quotation (RFQs) can be received by e-mail and quotations can be submitted without the need to access a TM system at all. In this case, an RFQ is sent to a carrier by e-mail message. The carrier responds to the e-mail using a regular e-mail client on a PC or mobile device. The e-mail is then converted (using PI) into a quotation. Carriers can accept RFQs directly, reject them with a specified reason or accept them with changes.

If a subcontractor is more technically advanced, EDI (electronic data interchange) message communication can be used. In this situation, a copy of the freight order is created for the carrier (the tendering manager or system administrator can control what is included in the copy that is visible to the carrier). The copy is persisted in the system to retain what was communicated to the carrier. A freight request for quotation (tendering request) is sent via PI and received as a forwarding quotation in the supplier’s TM system. The carrier can accept the order directly or, if the first carrier rejects the order, the freight order will be sent to the next carrier. Finally, a quotation confirmation is sent back to the customer and is converted into a quotation (tendering response) in the customer’s TM system. The change controller allows you to react to changes in the FO, for example, by stopping tendering when there are major changes in the FO.

In addition, SAP offers SAP Business Network, a cloud service with global coverage built to connect logistics business partners; to collaborate across companies and jointly manage transactions, exchange documents and data, and share insights.

SAP Business Network Freight Collaboration supports end-to-end collaboration in logistics processes from contracting to settlement. It also allows carriers to respond to tendering requests for quotation (broadcast or direct tendering) and process freight orders through web portal applications or integrate via API to process freight orders in their frontend of choice. Each carrier in the network is provided with their own user IDs and passwords, and the relevant authorizations to restrict visibility to the loads that have been tendered to them.
The image depicts a freight order process involving a Shipper, the SAP Business Network, and Web Portal Applications. The Shipper sends a Freight Order, which is then processed through the SAP Business Network. The SAP Business Network facilitates B2B Integration via API, as well as Email and EDI Message communication channels.

While the standard web portal applications in SAP Business Network Freight Collaboration are delivered by SAP and can be used out of the box, the use of API requires custom integration.

With regards to tendering, the process works as follows. The request for quotation (RFQ) message is triggered from the shipper’s TM system. Post receiving the message and persisting the request for quotation in SAP Business Network Freight Collaboration, the RFQ is sent to one or more carriers. The carriers respond to the tendering and the quotation is sent back to the shipper’s TM system. Award notifications are again distributed via SAP Business Network Freight Collaboration.

If shippers work with several carriers through SAP Business Network, they only must integrate once to collaborate across the logistics processes and share their freight orders, requests for quotation, freight bookings, freight documents for invoicing, … with their network. This simplifies an otherwise tedious process of integrating with each carrier individually.

# Service Items and Service Orders

Cleaning containers, fumigating, and performing security services or documentation are typical examples of services that can occur for items of a freight order or freight booking. Depending on whether the carrier selected in the freight document or a third party is tasked with the execution of the service, the service is either added as an item to the freight document or created as a separate service order.
The image shows two freight orders, Freight Order 1 and Freight Order 2, both associated with Carrier ABC. Freight Order 1 contains Package 1 with Product A, Product B, and Service item X, as well as Package 2 with Product A, another Service item X, and Product B. Freight Order 2 also contains Package 1 with Product A and Product B, and Package 2 with Product A and Product B. Additionally, the image shows two Service Orders, 102, assigned to Product B of package 1 and 103, assigned to Product A of package 2. Both service orders are associated with Provider XYZ and Service X. More details will be explained in the following paragraphs.

In the first scenario, one or more service items are added in the item hierarchy of the freight order or freight booking. Service items can be added on any level of the item hierarchy depending on the item, the service relates to. For example, a fumigation service would relate to a container and therefore added underneath the container position, whereas a labeling service would be added on package or product level depending on what has to be labeled. In this case, the service is executed by the same carrier, that the freight order of freight booking is subcontracted to.

The service order is used to account for and track services, calculate charges, and enable settlement of the charges for services that have been provided for individual items in a freight document or for the entire freight document, if a third party (other than the carrier of the freight document) is tasked with the execution of the services.

You can create service orders in the following two ways:

    Create service orders from freight documents or freight document items. With such a service order, you can:

        Enter service items related to the freight booking, freight order, freight booking item, or freight order item.

        Add service items that are not related to the freight booking, freight order, freight booking item, or freight order item. You can do this using the Add Service action without marking another item.

    Create standalone service orders without reference to any freight document or freight document item. You can use the Create Service Order function to create a service order by entering the service order type.

Structure of Service Order

A service order contains the following information:

    General data including the service provider, service order type, and status of the service order

    An item overview that contains the following information:

        Link to the freight booking or freight order for which the service order was created. (Applies only for service orders created from freight bookings, freight orders, freight booking items, or freight order items).

        IDs of the original freight booking items or freight order items for which services are to be carried out, for example, containers or products. (Applies only for service orders created from freight bookings, freight orders, freight booking items, or freight order items).

        Services to be carried out.

        The location at which the services are to be executed and the time period in which they are to be executed.

    Transportation charges

    Document dependencies, predecessor, and successor documents (document flow)

    Other information such as the following:

        Notes

        Attachments

        Change documents

        Administrative data

        Output management information

# Overview of Monitoring Transportation Execution
Delivery Creation

The delivery document controls, supports, and monitors numerous sub-processes for shipment processing, such as picking, packing, loading, and posting the goods issue. In addition, the delivery document can be used as a reference document for creating other shipment documents, such as a bill of lading.
The image illustrates the integration between SAP S/4HANA Order and Delivery integrated to TM. The left side of the diagram shows various order types such as a Sales order, Customer return, Scheduling Agreement, Purchase order, Stock transport order, Returns purchase order, Returns stock transport order, and Scheduling Agreement. The right side of the diagram shows the corresponding delivery types, which are either an Outbound delivery or an Inbound delivery.

Outbound and inbound deliveries are created in SAP S/4HANA or SAP ERP. In a side-by-side scenario, they are integrated into TM and stored as delivery-based transportation requirements. They can act as a starting point for TM processes or be created during transportation. A delivery document can be created in SAP ERP / SAP S/4HANA or TM.
Triggered in SAP ERP / SAP S/4HANA

When the delivery is created and considered relevant for transportation management, it triggers the creation of a freight unit. In a side-by-side scenario, the delivery is sent to TM as a Delivery-Based Transportation Requirement (DTR).
Triggered in TM

The second scenario is one in which the creation of deliveries is triggered from TM, for example, based on transportation planning performed in TM. This solution offers the possibility of combining and planning multiple orders in TM and creating a single delivery and transport.
The image illustrates the integration between SAP ERP/SAP S/4HANA and TM (SAP S/4HANA, SAP TM). On the left side, the diagram shows that SAP ERP/SAP S/4HANA can create orders, such as sales orders, purchase orders, stock transport orders, and scheduling agreements. On the right side, the diagram shows the corresponding TM processes, including creating OTR, creating freight units, performing transportation planning, creating delivery proposals, and adapting freight units' transportation planning.
Delivery Creation Triggered in TM

TM can generate proposals for delivery creation in SAP ERP / SAP S/4HANA based on dates and quantities according to transportation planning results and considering transportation constraints such as resource availability and transportation durations. TM can also trigger the creation of deliveries before transportation planning. TM can send these proposals to SAP ERP / SAP S/4HANA to trigger the creation of deliveries.

After the delivery proposals have been created and sent to SAP ERP / SAP S/4HANA, the system creates an entry in the application log. The application log entry includes the delivery proposals sent to SAP ERP / SAP S/4HANA (in side-by-side scenarios). Furthermore, the freight units for which a delivery proposal is sent to SAP ERP / SAP S/4HANA are marked with a send timestamp.

SAP ERP / SAP S/4HANA creates the deliveries when it receives the request to do so. SAP ERP / SAP S/4HANA may split the proposed deliveries further, for example, based on additional split criteria. However, SAP ERP / SAP S/4HANA will not change TM's proposed dates nor consolidate proposed deliveries. Once the deliveries have been created, SAP ERP / SAP S/4HANA sends a confirmation to TM and a request to create a delivery-based transportation requirement in TM.

TM creates an entry in the application log. The application log entry includes the system messages created in SAP ERP / SAP S/4HANA during delivery creation and the numbers and document IDs of deliveries created in SAP ERP / SAP S/4HANA. TM generates an alert if an error occurs during SAP ERP / SAP S/4HANA delivery creation. When a confirmation is received, TM sets a confirmation timestamp in the relevant freight units. The timestamp monitors whether SAP ERP / SAP S/4HANA has responded.

Note
For error-handling purposes, the following two additional worklists are available (in side-by-side scenarios):

    One for all OTRs for which delivery creation has been triggered but no response has arrived from SAP ERP / SAP S/4HANA

    One for all OTRs for which delivery creation has been triggered and the confirmation has arrived from SAP ERP / SAP S/4HANA, but for which an error occurred during delivery creation (and for which the delivery creation must be triggered again)

Methods for Delivery Creation

    Background Report

    Interactive Delivery Creation

Background Report

Delivery proposals can be created using a background report (report /SCMTMS/DLV_BATCH). The user can enter selection criteria or use a selection profile. In both cases, the user can also enter a delivery profile. Delivery profiles include settings for delivery creation. The system selects the documents, creates the delivery proposals, and sends them to SAP ERP / SAP S/4HANA (in a side-by-side scenario).
Interactive Delivery Creation

    Input Selection with Profiles Using the Delivery Builder App:

    The user specifies one or more profiles according to which the system selects and displays a list of documents. The user can then select the relevant documents in the list and trigger the creation of a delivery proposal. The user can review the delivery proposals before processing them.

    For Specific Documents:

    The user can trigger delivery creation for specific business documents from worklists. The system automatically processes the proposals to create deliveries. It also displays the proposals before sending them. The following are worklists from which delivery creation can be triggered:
        OTR Worklist
        Freight Unit Worklist
        Freight Order Worklist
        Ocean/Air Freight Booking Worklist

    The user can also trigger the creation and sending of delivery proposals for a specific freight order in the freight order UI.

    After Planning:

    The user can trigger delivery creation for specific documents after planning in the transportation cockpit. The system displays the delivery proposals, which users can review before processing.

Data Sources

TM considers data for delivery creation from the order / order-based transportation requirements and the assigned freight units, freight orders, and freight bookings. Based on the chosen input, TM creates delivery proposals. A proposal consists of groups of freight units that can be delivered together.
Data Collected by TM

    Dates:

    TM uses dates from the freight order or freight booking. If the freight unit is not planned, no freight order or freight booking exists, and then TM uses dates from the freight units.

    Quantities:

    TM uses quantities from the freight units.

    SAP ERP Document References:

    TM retrieves document references (such as order document number) from the order / order-based transportation requirement.

Consolidation

If order-based freight units have been planned, and freight orders or freight bookings exist for the transportation demands, TM uses only one freight order or one freight booking for each delivery proposal. Only freight units from the same freight order or freight booking can be consolidated into a single delivery proposal. This way, freight units from various order-based transportation demands can be consolidated into a single delivery proposal if they belong to the same freight order or freight booking. Suppose freight units from a single order-based transportation demand are distributed across multiple freight orders or freight bookings. In that case, multiple deliveries are proposed for the freight units of this one order-based transportation demand.

If order combination is not allowed for an order-based transportation demand, TM does not group freight units from this transportation demand together with freight units from other order-based transportation demands. Suppose freight units for such order-based transportation demands have been consolidated into the same freight order or freight booking during planning. In that case, TM does not include them in the same delivery proposal but creates multiple delivery proposals instead.

In addition, freight units can only be consolidated into the same delivery proposal if the following data is the same:

    SAP ERP system from which the order was received (only in side-by-side scenarios)

    Source location

    Destination location

    Incoterms

    Shipping conditions

    SAP ERP document type, such as purchase order or sales order

    Start stop (if planning has already been done)

    Destination stop (if planning has already been done)

Order- or Delivery-Based Transportation Process

The decision about whether to start the transportation process with either the ERP order or the ERP delivery depends on the customer requirements and guidelines concerning transportation planning and execution. If shipping activities other than transportation planning are involved before the transportation process, the process based on the ERP delivery is more likely to be used. The ERP order is the basis for transportation planning if goods are sold with all shipping activities considered.

There is no significant difference to subsequent process steps on whether an OTR or DTR (in side-by-side scenarios) or order- or delivery-based freight units (in an embedded scenario) are used as a starting point. There is no difference in the continuation of the process between transportation requirements based on an ERP order and those based on ERP deliveries.

# Warehouse Integration

With SAP S/4HANA, there are various ways to model the execution process. This depends on the complexity of your warehouse processes. SAP offers solutions for warehouse execution, from simple (none) warehouse processes to full-scale warehouse setups. All of them are integrated via the delivery to SAP Transportation Management.
Ways to Handle Stock

    Inventory Management
    Inventory Management with Handling Unit Management
    Stockroom Management (former LE-WM)
    Extended Warehouse Management (SAP EWM)

Warehouse Integration Options

The most straightforward way to model a process for transport execution is without a dedicated warehouse setup. Therefore, the transportation demand represents the delivery in logistics execution. This leads to a freight unit that can be planned on a freight order, and the transportation execution can be started.
Inventory Management
A diagram showing the relationship between different components in a sales and delivery process. The image is divided into two main sections: SAP S/4HANA Core at the top in orange and SAP TM at the bottom in blue. In the S/4Core section, there's a hierarchy starting with Sales Order at the top, connected to Delivery below it with a 1:N relationship. Delivery is connected to an optional Handling Unit box on the right. In the TM section, Freight Unit is connected to Delivery from the upper section and then linked to Freight Order at the bottom. All vertical connections show 1:N relationships. The diagram illustrates the flow from sales order to delivery and freight processes.

Note that Handling Unit Management (HUM) is optional and could be used to create deliveries with handling units or take care of the items themselves, for example, if you want to model a lean process and do not have to take care of which item is shipped on what load carrier system-wise.
Stockroom Management

For small to medium warehouse setups, there is an option available called Stockroom Management. Stockroom Management is integrated directly into the LE Delivery, and the warehouse transportation orders are triggered as a subsequent task to the LE predecessor documents.

Stockroom Management is a specific offering for installed base customers to continue running their light warehouse management implementation in the context of SAP S/4HANA. The license is included in the SAP S/4HANA Enterprise Management component.

The main reason for creating the Stockroom Management offering is to allow existing LE-WM customers to keep these warehouses untouched, which do not benefit immediately from moving to embedded EWM. Stock room management is the ECC warehouse management component (LE-WM) without capabilities supporting more complex warehouses. It is relevant for small warehouses with manual operations (storage bin management).
The diagram illustrates the integration between SAP S/4HANA Core and TM. The diagram on the left shows a Sales Order with a 1:N relationship to Delivery and an optional Handling Unit. On the right side, the diagram shows Stockroom Management with a 1:N relationship to a Warehouse Transport Order and a Package Item. In the middle, the diagram shows a Freight Unit with a 1:N relationship to a Freight Order connected with the package item.

: No innovations are planned in stockroom management, and extended warehouse management remains the strategic product.

Hint
For additional information, also refer to the SAP Note 2577428.
SAP Extended Warehouse Management

SAP Extended Warehouse Management (EWM) is designed to fulfill the requirements of complex warehouse setups, including requirements such as automated guided vehicles (AGVs), complex conveyor techniques, and high turn-over.

There are two ways to integrate TM and EWM:
TM and EWM Integration Methods
Integration Method	Basic License	Advanced License
Based on Freight Orders - Advanced Shipping and Receiving (ASR)		
Based on Transportation Units - Extended Warehouse Management (EWM)	 	
The image shows a diagram that illustrates the integration between SAP S/4HANA Core and TM and the integration with EWM. The diagram on the upper left side shows a Sales Order with a 1:N relationship to Delivery. In the middle, the diagram shows a 1:1 relationship between Delivery and Delivery Request in EWM, which also has a 1:N relationship to Handling Unit. On the lower left side, the diagram shows a Freight Unit with a 1:N relationship to a Freight Order in the Shipping & Receiving module of TM.

The process based on advanced shipping and receiving (integration based on freight orders, starts with the creation of the LE delivery, which is propagated to EWM (to create an outbound delivery order) and TM (to create a freight unit). Depending on whether the process is transportation-driven or warehouse-driven, one of the documents will be blocked until the other application has finished its process.
Extended Warehouse Management (Advanced)

There is also an advanced integration between SAP EWM and TM that requires an advanced license. In this scenario, you use more planning capabilities by creating deliveries already on a plan made based on sales orders in TM and handing over a load plan from your TMS system to the WMS system for execution. Therefore, the transportation unit is needed in SAP EWM. The transportation unit in this scenario is created based on the Freight Order in TM.

Hint
For additional information about TM EWM integration with the advanced license, please refer to SAP Notes 1984252 and 2269324.
The diagram illustrates the integration between SAP S/4HANA components. On the left side, the diagram shows a sales order and a delivery with a 1:N relationship to a freight unit, which has an optional 1:N relation to a transportation unit or resource. This relates 1:N to a freight order, which relates 1:1 via a direct update with a specific transportation unit. The delivery from the top of the image also has a 1:1 relationship with a delivery request shown on the right side of the screen. This delivery request has a 1:N relation to the Handling unit(s), which results at the bottom in a 1:1 relation to the transportation unit, which relates 1:1 to the freight order from the left side of the image.
Classic TM-EWM Integration based on Transportation Units

In TM, you can plan your transportation activities based on an outbound delivery and send your freight orders to SAP EWM. In SAP EWM, you can carry out the steps relating to the warehouse, such as loading. Because the two systems are directly integrated, TM informs you that the truck in SAP EWM has been loaded and whether there are any discrepancies, such as quantity deviations.
The image shows a diagram that illustrates the integration between TM, SD/LE, and EWM components. On the left side, the TM component includes processes such as creating freight units, performing transportation planning, creating freight orders, receiving DTR, consuming OTR, updating freight units, and updating freight orders. The SD/LE component in the middle includes creating sales orders and outbound deliveries. On the right side, the EWM component includes outbound delivery requests, outbound delivery orders, TU/vehicle activity, check-in, staging, loading, goods issue, and check-out. The diagram also shows the side-by-side transportation change management process. The main steps of this complex integration are explained in the following paragraphs.

The main steps of an outbound process based on the classical TM-EWM integration based on transportation units are described as follows. The description assumes that there is only one transportation stop. If your freight order comprises several transportation stops, the process is repeated for each stop if the stop contains loading locations relevant to SAP EWM. Note, however, that multiple pickup and multiple delivery scenarios are not supported:

    You create a sales order in SD.
    Freight units get created, transportation is planned, and freight orders are created in TM.
    When transportation planning is based on sales orders, you trigger delivery creation from TM.
    You create outbound deliveries in SAP S/4HANA and send them to TM and EWM. In TM, a delivery-based transportation requirement is automatically created along with the associated freight units. EWM creates an outbound delivery request and an outbound delivery order automatically.
    You set the load plan status of the freight order to Load Plan Finalized. TM automatically sends a loading instruction to EWM with the message LoadingAppointmentRequest.
    When the LoadingAppointmentRequest message is received from TM, EWM automatically creates a transportation unit, and the outbound delivery orders are assigned to the TU activity.
    Perform the warehouse activities related to the outbound delivery orders, such as picking, packing, staging, and loading the goods. The system can create handling units automatically. All warehouse activities except loading can be performed before the TU arrives at the door.
    The warehouse workers post the goods issue (optional).
    The warehouse workers post the departure of the truck. EWM sends the LoadingAppointmentNotification message to TM. At the same time, the outbound delivery is automatically updated in ERP.
    When the data is updated in ERP, the delivery-based transportation requirement is automatically updated in TM.
    When the LoadingAppointmentNotification message is received, TM updates the freight order and sets the execution status to In Execution. The cargo receipt status at the item level is automatically set to Shipped. If the item is to be unloaded at the next transportation stop, the handling execution status is automatically set to Not Unloaded. The system also updates the associated freight units.
    You complete freight order execution.

Advanced Shipping and Receiving

The objective of Advanced Shipping and Receiving is to ensure suppliers and customers can access the same data in their systems, using standardized data structures and facilitating communication through EDI messages. One of the essential EDI messages is the advanced shipping notification (ASN), which provides detailed information about upcoming shipments sent by the supplier. Another crucial message is the bordero, which assists in managing transportation-related documentation and is usually sent by the carrier. Using both information, the ASN from the supplier and the bordero from the carrier, the customer has everything he needs to facilitate an efficient goods receipt process.

Integrating TM and EWM into SAP S/4HANA has improved efficiency and streamlined operations. With Advanced Shipping and Receiving (ASR), it is possible to embed warehouse management functionalities, allowing for seamless maintenance of warehouse requests and handling units within the freight order. Importantly, this integration eliminates data redundancies between the old EWM transportation unit and the transportation management freight order.

A freight order replication service achieves synchronization between shipping and receiving and extended warehouse management in the standalone version. This service ensures that the code line remains the same while providing a partial view of the freight order in the Extended Warehouse Management instance, specific to each warehouse.
The image shows two diagrams illustrating the integration options between SAP S/4HANA, TM, and EWM components. The left diagram shows that TM has Freight Units, Freight Orders, and Shipping and receiving. These are connected to a Warehouse Request and a Handling Unit in EWM. The right diagram shows a similar structure, with Freight Units, Freight Orders, and Shipping and receiving. This time, Shipping & Receiving is also available in EWM and connected to a Warehouse Request and a Handling Unit, again.

One significant advantage of ASR is the ability to load and unload across multiple warehouses. This means you can integrate loading and unloading processes with EWM, stockroom management systems, and IM-managed warehouses on the same truck. This consolidation of operations results in faster processing times and reduces the need for multiple transactions across different warehouses.

Advanced Shipping and Receiving functionality also improves integration with business partners. Full EDI support for consignment and bordero, using globally-recognized standards, such as the global DESADV and IFTSTA, is supported. This ensures a smooth flow of information throughout the transportation process, covering every level of truck and shipment. As a result, error handling becomes more efficient, and the need for full mapping between different systems is minimized. Another noteworthy feature is the support for multi-pick, multi-drop scenarios. Creating separate business objects for inbound and outbound processes is no longer required. Instead, you can have a single freight order with multiple stops, allowing loading and unloading at the same location. This optimization improves transport capacity utilization, lowers costs, and enhances efficiency.

Two new objects have been introduced to facilitate these advanced shipping and receiving capabilities. The consignment represents a group of freight or deliveries with the same source and destination locations. On the other hand, the loading point serves as a shared master data object for both EWM and non-EWM warehouses. It enables grouping doors within a warehouse or across different warehouse types, such as EWM warehouses and stockroom management or IM-based warehouses.
The image shows a diagram that illustrates the flow of freight orders and consignments between a Carrier, Supplier, and Customer. The Carrier has a Freight Order that contains two Consignments, each with multiple Freight Units (FU). The Supplier has a Freight Order that contains two Consignments, each with multiple Freight Units. The Customer has a Freight Order that contains two Consignments, each with multiple Freight Units. The diagram shows the flow of the Freight Order and Consignments from the Supplier to the Customer, with the Carrier facilitating the transportation.

The consignment, in particular, serves as the basis for the communication between suppliers and customers, allowing for better alignment and collaboration throughout the logistics process. Importantly, the freight order serves as the object to be sent by the carrier to the customer, with the respective consignment references. With that, the supplier, customer, and carrier systems have a full data structure.

What does the transportation-driven process look like based on deliveries? The starting point of the process is a sales order, or SD scheduling agreement creation, and the outbound delivery creation.

The outbound delivery order is initially blocked for execution until the entire transportation planning is done on the TM side. This can be done with the transportation cockpit, as well as with the optimizer. With the transportation planning, the consignment order is created. However, the consignment order is only created as a local consignment order because only after the complete transportation planning and warehouse execution is the consignment order extracted.

With the status "Ready for Warehousing" set, the outbound delivery order in EWM is unblocked for execution. With that, picking, packing, and staging can start. After setting the "Ready for Shipping" status, the actual package information is sent to the TM freight unit and freight order.

From this point, truck check-in can be done at the shipping point. The truck can be docked to the door at the loading point. The EWM functionality with the RF loading can start. After Loading Finished is set, an outbound delivery order could split. In that case, or at the latest, the automatic consignment order creation must happen.

With the triggering of the goods issue, the warehouse stock goods issue is posted or performed, and there is an update to the freight unit, freight order, and the consignment.

The ASN can be sent based on the consignment order, which is also the same in the DESADV message. The next process step is that the bill of lading can be printed. The truck can depart from the door at the loading point, report checkout at the shipping point, and send the freight order information to the carrier, which then sends the freight order information with the consignment references to the customer so that the customer has the complete information, the complete data structure.
The image shows a diagram that illustrates the integration between TM, SAP S/4HANA, and EWM components. In TM, the process includes creating freight units, freight orders, and local consignment orders. The freight units have been updated and set to be ready for warehousing. The freight order has been updated with dock-to-door loading point information. In SAP S/4HANA, the process includes creating sales orders, outbound deliveries, and updating freight units and freight orders. In EWM, the process includes creating outbound delivery orders, picking, packing, staging, loading trucks, and performing warehouse stock goods issue. The outbound delivery order is updated based on the activities. The diagram also shows the Customer, Carrier, and Supplier interactions throughout the process.

Detailed setup guides are available for the configuration of ASR scenarios via SAP notes:

    3225241 - Advanced Shipping and Receiving - Setup Guide
    3271412 - Advanced Shipping and Receiving with Global Trade Service Integration - Setup Guide

# Loading and Unloading Freight Orders
Loading and Unloading Freight Orders

As part of the advanced shipping and receiving process, the Load or Unload Freight Orders app allows you to process shipping and receiving activities. With this app, you can:

    Handle deliveries that are managed in Extended Warehouse Management (EWM) and Inventory Management

    Assign or unassign loading points, unloading points, and doors to inbound or outbound deliveries

    Indicate whether inbound deliveries are ready for warehouse processing

    Indicate whether goods arrive at, or depart from, doors

    Indicate whether goods are loaded or unloaded

    Indicate whether goods are loaded or entirely unloaded on stop level

    Indicate the staging area, staging area group, and staging bay of the goods on product level and stop level

    Post a goods issue or a goods receipt

    Process loading and unloading activities for a single warehouse visit

Posting Goods Issue and Goods Receipt

The goods issue of an outbound delivery can be triggered as soon as the execution of a freight order starts. You can use transportation-related events to control and trigger the execution of goods movements automatically. Goods issue for an outbound delivery can only be associated with the execution of a freight order covering the first stage of the transport. You can control the goods issue of a freight order using transportation-related events such as Loading Begin, Loading End, or Departure. An additional prerequisite for posting goods issue is that all delivery items that are relevant for picking have been picked.

For inbound deliveries, goods receipt can be triggered once the execution of a freight order ends. It can be associated with transportation-related events like Arrival at Destination, Unloading Start, or Unloading End. Goods receipt for an inbound delivery can only be related to the execution of a freight order covering the last stage of the transport.
Intelligent Goods Receipt

In Transportation Management in SAP S/4HANA Cloud Private Edition, you can use Document Information Extraction with generative AI technology to analyze delivery documents attached to a consignment order, extract their header data, item data, and item reference data, and insert it into a consignment order. This allows you to reduce manual checks at the gate and improve operational efficiency at goods receipt.
The image shows a diagram that illustrates the process of automated document information extraction in the SAP S/4HANA Cloud Private Edition. Details are explained in the following paragraphs.

In TM, you upload your delivery documents, such as PDF documents, to a consignment order. If you created a consignment order based on an advanced shipping notification (ASN), it might already have the delivery documents attached. You send your attachments to the extraction service. You can monitor the processing status directly in Document Information Extraction. Since Document Information Extraction doesn't send success messages, you retrieve your extraction results by refreshing the consignment order. The system compares the extracted data to existing data for your consignment order. The data is filled into your consignment order based on the extraction and comparison results. During the process, you might run into errors. You can view and resolve any document errors related to this process on the Document Errors tab of the consignment order. Depending on the error solution, you can continue with the consignment order data or the extracted data. You have to resolve all document errors before the system can determine the correct requirement documents to continue.

The following steps describe in detail an example process of how to automatically process data from delivery documents that are attached to consignment orders:

    You scan a delivery document and attach it as a PDF document to a consignment order.
    You submit your attachment to the extraction service using the Extract Attachment Data function. Your consignment order is blocked for planning.
    Document Information Extraction receives the data from the attachment and starts the extraction.
    While the extraction is running, you check the processing status in Document Information Extraction.
    You refresh the consignment order and see that the extraction is done.
    The system retrieves the extracted data and enters it in your consignment order.
    The extracted data is compared to the data in the system.

    You are notified that an item mismatch creates a document error. You can view the error message on the Document Error tab.

    The data comparison results show that one of the items in the consignment order is missing in the extracted data. You can check the information in the attachment and find a typo in the corresponding item in the delivery document. Because of the typo, the extraction service couldn't read the data correctly. On the Document Error tab, you choose Delete to delete the error and continue with the consignment data.
    The processing block for the consignment order is removed.
    The system determines the correct requirement documents based on the extracted data.

# Generating Document Outputs for Print and Digital Delivery
Output Management

In this lesson, you learn how to configure settings to enable the printing of documents in the freight order.
Output Management Capabilities

In general, output management provides the following capabilities based on the business document:

    Automated (backend), rule-based dispatching of outbound communications in response to business events, such as the creation of an order, saving a document, and so on
    Preview of output and manual (front end) outputs in the user interface (UI)
    Archive output dispatched concerning business documents
    Mass output from a worklist

Output Management
The image shows a diagram that illustrates the functionality of an Output Management Adapter. The adapter is connected to various outputs, including printing documents such as bills of lading, shipping instructions, and labels. It also handles Workflow, A2A/B2B scenarios, Direct Outputs, and Fax/Email communication. The adapter is a central component for managing and processing these various outputs.

Before, during, and after execution, each user and party involved must be notified when a task is required to be executed or a report on a recent activity is made. Users must view the result of business process activities and generate output in response along the process. Output management automates the output of business documents, such as printouts, mail, or fax to specific events.

TM has several standard output types, such as external communication and alert notification. Several other tools and methods may also be used. Your business can use standard printing, fax, and e-mail for external communication with a document preview option. For internal communication, alert management options are available, and a workflow can pass requirements from one business process step to another. Communication with B2B systems is also available in situations such as tendering freight orders when a bidding or purchasing activity is present.

BI data uploads can be executed to provide management reporting on various documents like freight units, freight orders, and freight bookings. Various order events can trigger communication to event management systems to make cross-system activities transparent. While TM has its own internal status, when integrating with systems such as SAP ERP or EWM, cross-system communication is necessary to gain visibility of the big picture.
Output Types
The diagram illustrates the integration between SAP S/4HANA and SAP EWM (Extended Warehouse Management). SAP S/4HANA has various business documents, such as purchase orders, sales orders, and stock transfer orders. These documents are integrated with the Delivery/Movement (LE/IM) component. The Freight Unit is a key element that connects SAP S/4HANA with the Transportation Operations (Freight Order) and Charge Management/Settlement components, which results in the carrier invoice. Integrating SAP EWM allows for various output options, including Printout, Fax/Mail, A2A/B2B, and Workflow. The diagram shows the flow of information and the key integration points between the different components of SAP S/4HANA and SAP EWM.

The output management in TM is available for all documents.

To understand what happens when documents are printed, you must understand the Post Processing Framework (PPF). It is configured in the backend system, with the following customizing path:Cross-Application Components→Process and Tools for Enterprise Applications→Reusable Objects and Functions for BOPF Environment→PPF Adapter for Output Management→Maintain PPF Settings. Here, you manage the action profiles. An action profile is the smallest set of action definitions that can be investigated during one call of the action determination of the PPF.
Post-Processing Framework (PPF)

As a framework, you can imagine the PPF as a way to answer the following three questions:

    What (should be done in the activity)?
    Why (is the activity done)?
    When (is the activity done)?

Post-Processing Framework (PPF) Answers Three Questions
What	Why	When
Send the whole shipping list via EDI	Shipping list has been created	Next batch job
Send whole shipping list via mail	Shipping list has been changed	When saving the document
Send shipping list changes via fax	Business object is in the state In Process	When saving the document

Generally, it is essential to note that PPF actions can only process information already saved to the database. This prevents you from accidentally sending preliminary transportation labels to a spool in the warehouse, for example.
Output Management Adapter
The image shows two diagrams: a BO (Business Object) Model at the left and a Post-Processing Framework (PPF) at the right. The BO Model diagram illustrates the relationship between a Business Object, a Node, and an Action. Each Business Object can have one or more Nodes, and each Node can have one or more Actions. The diagram indicates that one or more PPF action profiles can be assigned to any BO node instance. The Post-Processing Framework (PPF) diagram shows the components of the framework, including the PPF Action Profile (Context Definition), PPF Action Definition (Trigger Type), PPF Processing Type, Starting Condition, and PPF Scheduling Condition. The diagram demonstrates the structure and relationships within the BO Model and the Post-Processing Framework, highlighting the key elements and their interconnections. Further details are described in the following paragraphs.

You can connect the PPF at the level of the individual BO nodes. When you select the application /SCMTMS/TRANSPORTATION in customizing, you can manage the action profiles assigned to this application. An action profile is the smallest set of action definitions that can be investigated during one call of the action determination of the PPF.

Each action profile contains a set of multiple action definitions (1:n). An action definition defines all possible realizations. The realizations are modeled in the so-called processing type. The processing type represents the technical realization of an action definition, for example, the start of a workflow, sending out a PDF form by fax or mail. The action definition determines whether business partner data is required for the execution and the business partner to which the data relates. An action definition, therefore, has the character of a business task and defines "what" should be done with this action (mail, fax, and so on).

: The conditions are checked if the system has identified the action definition from the action list. There are two important types of conditions for the PPF/Output Management:

    The first one is the scheduling condition. This condition is checked during the PPF action determination. It decides whether an action should be executed or not. The scheduling condition is identified from the assignment to the configured action definition. The scheduling conditions define the "why"; for example, the lifecycle of the predecessor document is X, or the document is canceled.

    The second important condition is the starting condition. This condition is checked just before the execution of an action starts. These conditions should only influence the point in time when an action will be executed. They define the "when"; for example, they define that the message is sent "on save", or "one day before pickup", and so on.

# Monitoring the Execution of the Freight Documents
Freight Order Execution

The logistics/transportation process involves activities and procedures spread across different business partners and often across several distributed systems. From a tracking perspective, this increases the challenges of successfully monitoring the progress of individual process parts. In this lesson, you will learn how your company can overcome these difficulties by using tracking solutions from SAP:

    SAP Business Network Global Track and Trace
    SAP Event Management

SAP Business Network Global Track and Trace and SAP Event Management allow you to make processes, assets, and performance visible across the supply chain. Extensive tracking and tracing functions allow process monitoring, automated exception resolution, proactive alerting, and extensive reporting in a single solution.

The key difference between both solutions is that SAP Business Network Global Track and Trace is a cloud solution that needs to be licensed separately. SAP Event Management is also available on-premise and can be run on the same SAP S/4HANA system with TM.
Event Management in SAP TM

The event management system is designed to work with several SAP ERP instances, if necessary. It can communicate with SAP CRM, where sales orders may be received, and this communication is processed back to the customer to support order fulfillment. SAP Advanced Planning and Optimization (APO) may create the replenishment plan. SAP ERP or SAP Manufacturing Execution may be responsible for communication and tracking progress on the shop floor. SAP EWM (Extended Warehouse Management) may be responsible for the picking and packing as part of the logistics execution.

SAP Event Management offers visibility processes to monitor transportation execution in SAP TM. The transportation execution visibility processes enable users in roles such as transportation dispatcher, shipper, or ordering party to track and monitor planned events or to report an actual event.

Tracking and tracing is provided for the following business document types in SAP TM:

    Freight unit

    Freight order

    Freight booking

    Transportation unit

    Resource

    Instruction execution for standard operating procedures

In each case, the goal is to manage by exception, reduce time to action, and spend less time firefighting.
The image shows a diagram that illustrates an adaptive process framework described in more detail in the next paragraph.

Monitor, notify, analyze, and adjust are the four cornerstones of SAP Event Management, which contribute to an adaptive solution. The monitoring process collects data from the various source systems. Notifications can be set up to be triggered, with alerts sent to the parties responsible if a process deviates from its anticipated course. The appropriate parties can simulate adjustments and make necessary changes based on the alerts. Finally, concerning analytics, SAP Event Management can be tied into the SAP BW environment to support transportation management reviews.
Event Types
The image shows a diagram that illustrates an operational system's real-world operations and the process lifecycle. Details are explained in the following paragraphs.

SAP Event Management is capable of processing several different types of events. Within a given process, you have events that you expect to happen and events that happen. Typically, you want to compare the actual event against what you expected, as follows:

    Regular Event

    The first type of event is an event that you expect to happen within a particular time frame, and it happens as expected. This is a regular event.
    Overdue Event

    This is an event that you expect to happen within a particular time frame, and it occurs outside the scheduled time frame. An overdue event can cause a subsequent event to be rescheduled or recorded as an overdue event.
    Unexpected Event

    The third type of event is unexpected. This could be a truck breaking down or a malfunction in a piece of equipment, potentially affecting subsequent events, causing something to be rescheduled, or taking another action.  An unexpected event could trigger an alert or another type of notification.
    Unreported Event

    In this case, you expect an event to occur within a particular time frame, but it is not reported for whatever reason. It is possible that something still needs to happen following this event, so you could set a time limit that sends a message or triggers something to happen when the event is unreported for a specific period.

Event Management Integration

Transportation operations is an area in which transparency is crucial, especially in those cases where lengthy transportation times have to be considered, such as when shipping overseas. To ensure customer satisfaction, keeping complete control of what is happening is more important than ever, even if parts of the business process may run outside your company’s sphere of influence.

Visibility processes for transportation management offer preconfigured, out-of-the-box content for transportation operations, supporting you in tracking relevant activities within and beyond the confines of your company. You can monitor different processes and business documents, such as freight units, orders, and bookings.
The image shows a diagram that illustrates the integration between SAP TM (Transportation Management) and SAP EM (Event Management) systems. Details are described in the following paragraphs.

The Event Management Integration figure shows a typical scenario in which the SAP EM and TM systems are updated to accurately reflect a freight order's real-world progress.

During the loading process, SAP ERP or SAP EWM may send a signal (notification) that there is a delay in the loading process. This can trigger an alert. The transportation planner may have to adjust the schedule to ensure the container makes it to the ship on time. Once the ship has left the departure port, GPS updates may indicate it has not reached its midway point. This could be due to weather or mechanical issues. The customer service agent can be notified and contact the customer to inform them of anticipated delays.

Due to the alert system, the planning team does not have to watch over every order. They can spend most of their time managing exceptions.
Global Track and Trace

SAP Business Network is a cloud service with global coverage specifically built to connect logistics business partners – to collaborate across companies and jointly manage transactions, exchange documents and data, and share insights. You onboard to the network once and are set to connect and collaborate with many!  
The image shows a diagram of the SAP Business Network, with you as a shipper at the center. As the shipper, the SAP Business Network connects you with various stakeholders, including carriers/freight forwarders, logistics service providers, other stakeholders, and customers/suppliers. The diagram illustrates the interconnected nature of the SAP Business Network, where you, as the shipper, can collaborate and interact with these different parties to facilitate logistics and supply chain operations.

SAP Business Network Global Track and Trace is integrated with SAP S/4HANA Transportation Management to synchronize business objects and milestone updates. It captures, processes, and stores tracking information about logistics business processes with out-of-the-box visibility connectivity. In addition, it allows business users to achieve real-time transparency in executing those processes, conduct impact analysis, and manage exceptions.
The image shows the global track and trace benefits of leveraging a multi-modal network of logistics service providers. The key benefits are described in more detail in the following paragraphs.

Business benefits from SAP Business Network Global Track and Trace are derived from the global logistics visibility that the solution provides. There are three:   

    Enhanced risk mitigation through data-driven decision-making.

    Analyzing routes, events, and statuses for individual in-progress shipments alone can provide valuable insights into supply chain operations. By combining detailed transportation insights with the higher-level business context of a Sales Order, Purchase Order, or Stock Transport Order, natively integrated into a company’s ERP, provides supply chain managers with critical inputs into strategic decisions, such as supplier sourcing, route optimization, and inventory allocation, leading to improved business performance and competitiveness from a more resilient supply chain.
    Improved operational efficiency, including better inventory management.

    Logistics visibility allows companies to optimize their transportation and distribution processes by identifying inefficiencies, streamlining routes, and consolidating shipments to minimize delays, improve resource utilization, and drive cost savings. Detailed logistics visibility enables more precise inventory management, enabling businesses to accurately monitor the movement of goods in real-time and with sufficient granularity to forecast inventory levels to avoid stockouts and unplanned long lead times or excess inventory and spoilage.
    Better customer service through faster problem resolution.

    With detailed visibility into shipment routes and events, businesses can provide more accurate and timely updates to customers regarding the status and location of their shipments. When, or even before, issues arise during transit, such as delays, damages, or lost shipments, transportation planners can take action. Transportation planners can act upon predictive or reported status to pinpoint the location and situation of affected units and take immediate corrective actions, such as rerouting shipments or initiating investigations. This transparency then allows customer service personnel to enhance customer satisfaction by reducing uncertainty, improving responsiveness, and enabling better communication, which enhances customer loyalty.

SAP Business Network Global Track and Trace in SAP S/4HANA Transportation Management

SAP Business Network Global Track and Trace is integrated with SAP S/4HANA to track order fulfillment progress and goods in transit. Objects such as sales or purchase orders, freight units, tracking units, or shipments created in SAP S/4HANA are synchronized via IDOC interface to SAP Business Network Global Track and Trace along with planned and actual milestones such as arrival, departure, goods issue, goods received, … 
The image illustrates the integration between a backend system, SAP S/4HANA, and the SAP Business Network Global Track and Trace. More details are described in the following paragraphs.

To provide shippers (solution owners) a holistic multi-modal view into order fulfillment and goods in transit, SAP Business Network Global Track and Trace allows logistics service providers to integrate via public API or EDI 213 and 214 to receive order tracking requests for the respective tracked processes and share order events.

Optionally, additional licenses can be purchased to add visibility providers as an additional layer and reduce the integration efforts of individual logistics service providers. As visibility providers might have different expertise in different regions or modes, SAP Business Network Global Track and Trace can help distribute tracking requests to business partners.
The image shows a diagram that illustrates the integration between SAP S/4HANA, the SAP Business Network Global Track and Trace, and a Logistics Service Provider. More details are provided in the following paragraphs.

As the tracked processes are populated with actual events, solution owners can understand the impact of deviations from the plan as events on the shipment level are correlated to deliveries or orders, and there is an impact analysis available for shipments ‘running late’ or being ‘delayed.’

Further, stakeholders can be kept in the loop as logic is built in to determine recipients and respective notification content through event-to-action scripts.
SAP Business Network Global Track and Trace Standard Application

There are standard applications tailored to different roles. For transportation planners, there is the Track Shipment app; for shipping specialists the Monitor Outbound Deliveries app and for internal sales representatives and purchasers there are the Track Sales Order Fulfillment app and the Track Purchase Order Fulfillment app, which includes stock transport orders. In addition, we support receiving specialists via the Monitor Inbound ASN app.

User attribute authorization allows solution owners to define who can see which shipment or tracked process.
The image shows five icons representing different functionalities within the SAP Business Network Global Track and Trace solution. The following paragraphs provide more details.

However, SAP Business Network for Logistics is more than the above standard applications. Solution owners can utilize the flexible and extensible setup, which supports customer-defined fields, event types, and event-to-action scripts to extend standard applications or build custom scenarios from scratch.
SAP Business Network Global Track and Trace Example Scenario

Let’s look at an example tracked process for sales order fulfillment that utilizes standard and custom events and scripts (in the graphic below, black items need to be custom configured, and grey items are part of the standard delivery).

For each sales order, the following predefined milestones (planned events) and corresponding action are relevant:

    Goods issue – triggering a notification
    Proof of Delivery – triggering a notification
    Quality Inspection – triggering notification in case of quality KPI NOT fulfilled
    Goods Receipt – send customer survey

Additional actual events that might be received are:

    Confirmation of execution of sales order – notify customer
    Delay – update expected time of arrival in SAP S/4HANA Transportation Management

# Managing Charge Calculation Master Data
Overview of Transportation Costs and Charges
Freight Agreements
Freight Agreement Overview

A Freight Agreement is like a master contract between a company that must ship goods (shipper) and a company that provides transportation services (carrier). It outlines the terms, conditions, and pricing for transportation services over a specific period.

Components of a Freight Agreement (in hierarchical order):

    Freight Agreement (FA): This is the top-level document containing all the contract details.
    Calculation Sheets: These are attached to the freight agreement and define how transportation charges are calculated. Multiple calculation sheets can be linked to a single freight agreement.
    Rate Tables: These are part of the calculation sheets and contain the actual prices for transportation services. Rate tables use scales to define pricing based on various factors.
    Scales: These are the building blocks of rate tables. Scales define the dimensions or parameters that affect pricing, such as weight, distance, or volume.
    Charge Types: These are used within calculation sheets to classify different charges, such as base rates, surcharges, or discounts.

How they relate:

    A freight agreement can have multiple calculation sheets to cover different scenarios or service types.
    Each calculation sheet contains multiple charge types and refers to one or more rate tables.
    Rate tables are built using scales to define how prices change based on different factors.
    Scales provide the foundation for creating flexible and detailed pricing structures within rate tables.

The image shows a digital freight agreement document with various elements such as calculation sheets, charge types, a rate table, and scales on a tablet or smartphone screen.

Think of it like this: The freight agreement is like a book that contains the terms of your shipping contract. Calculation sheets are the chapters in this book, each dealing with a specific type of shipment or service. Charge types are the different categories of fees mentioned throughout the book, and rate tables are the detailed price lists. Scales are the rules that determine how prices in these lists change based on factors like weight or distance. This structure allows for a flexible and detailed way to manage complex pricing and terms for transportation services while keeping everything organized under a single agreement.
Integration of Charge Management

When shipping products to customers via a third party, an organization must account for and recognize the costs of moving goods.

TM provides a broad and flexible calculation process. With the integration of MM, integration to the Financial Accounting (FI) and Controlling (CO) applications allows an organization to perform payment, execute billing transactions, and trigger the settlement process to accrue the proper transportation charges to financial accounts.
The image appears to be a diagram of a freight transportation system. It shows the flow of information and processes between different components, including the Freight Settlement Document, Freight Order, Transportation Charge Pre-Processing, Transportation Charge Management, and TCM Master Data and Configuration. The system also includes several outputs, including the Freight Settlement Document, Freight Booking, and Purchase Order. The diagram also references various calculations, rate tables, and scales used in the system. Additionally, the image mentions Service Masters, FI/CO Account determination, Accruals, Invoice verification, and Self-Billing as part of the overall system.
Transportation Charge Management Master Data

The master data elements required for charge calculation are freight agreements, calculation sheets, rate tables, and scales. For all of them, you can create templates to minimize the effort when new master data is required.
The image illustrates the relationship between various components of the transportation charge management master data. The following relationships are shown from the bottom to the top: (1) Scales are created based on scale templates. (2) Rate tables are created based on rate templates and relate 1:n to scales. (3) Calculation sheets are created based on calculation sheet templates. The calculation sheets relate 1:n to charge types, which point to a specific rate table. (4) Finally, freight agreements are based on freight agreement templates and relate n:n to calculation sheets.
Freight Agreements

Freight agreements (FAs) represent a long-term contract between a shipper or LSP and a carrier or supplier. Freight agreements can be determined based on purchasing organization and carrier. (Additional preconditions can also be defined if necessary). Each agreement can point to one or more calculation sheets (CS). The freight agreement is connected to a CS, and the costs (freight charges and advice fees) used in the assigned CS are visible in the FA.

Freight agreements (FAs) are the basis for calculating transportation charges. You use FAs to calculate transportation charges billable to you by your carrier.
Freight Agreement Structure

The system determines the agreement based on organization, business partner, validity period, and preconditions. In the freight agreement type customizing activity, you can configure whether one or multiple partners can be entered into the agreement. That is if you have one freight agreement with a carrier that is valid for numerous purchasing organizations,

Agreement Structure Overview:
The image illustrates the components of an agreement header and an agreement item in a business context. The agreement header section includes information such as validity dates, currency, notes and attachments, version, status, general terms (scope, preconditions), and output management. The agreement item section contains details about validity, calculation sheets, preconditions, allocations and business shares, general terms (payment terms, scope), dimensions (relevant for CEP), capacities, commodities, and transit time (relevant for DSO).

Watch the simulation Explain a Freight Agreement to learn about the content of a freight agreement.
Exercise
Start Exercise
Charge Calculation Sheets

Depending on how a shipment will be transported, various charges may be incurred for different means of transport. In TM, companies can create calculation sheets that reflect all possible charge elements for a given carrier. These charges essentially mimic the terms of the freight contract.

The calculation sheet is a hierarchical table used to calculate transportation charges. The calculation sheet combines the charge types permitted for a document and the sequence in which the system considers these charge types during the calculation. The system uses the calculation sheet to specify which transportation charges to calculate and how to calculate them. This helps to pay suppliers or carriers for subcontracted transportation services. The calculation sheet points to charge items, and each charge item can result in a calculated amount.
Calculation Sheet Maintenance

Calculation sheet maintenance is a step in the process of setting up master data in the Transportation Charge Management (TCM) component. It is integrated with agreements, rate tables, and scales. You can use the master data cockpit to access an overview of the charge management master data per organizational unit, business partner, and charge type. The system also shows the relationship between the different types of charge management master data.

You can use a template to create a calculation sheet and calculation sheet line items. The calculation sheet includes transportation charge elements, subtotals, and totals.
The image outlines the different components of a calculation sheet, the central component that integrates these various data elements to perform calculations and manage the overall terms and conditions related to a business agreement or service contract. It is divided into four main sections: (1) General Data: This section includes information about the charge usage (customer or service provider) and the status. (2) Hierarchy Items: This section lists the instruction, rate table/charge type details, and rate table details and instructions. (3) Administrative Data: This section includes the created/changed by information. (4) Precondition & General Terms: This section covers the conditions (such as trade lanes or partners or BRF conditions), payment terms, and general terms (shipping type, service level, transportation mode, service level).

It provides for a calculation schema showing the steps and the specifications for the charges. The resulting charges, sub-totals, and totals can be displayed in the documents based on the calculation sheet.
Calculation Sheet Items

The calculation sheet items have the following attributes:

    Charge Type
    Rate

    Rates contain details of the rate table for each standard charge item. It is also possible to enter fixed rates or percentages of other lines in the calculation sheet.
    Dimensional Weight Profile

    The system uses the dimensional weight factor in the dimensional weight profile to convert a product's gross volume into dimensional weight. The system then uses the dimensional weight to apply the correct rate. Note that a dimensional weight profile at the line item level of a calculation sheet has priority over a dimensional weight profile in an agreement.
    Calculation Resolution Base (for example, root, container, product, and stage)

    During charge calculation, the system determines the calculation resolution base by the origin of the data upon which the charge aspect is based. You can define the charge aspect in the resolution base objects, such as container, product, and stage.

        Root: This is the document's header, which includes the freight order or the freight booking.

        Stage: To utilize stage attributes such as distance between the shipper location and the port of loading.

        Container: When the container's gross weight will be used for the calculation.

        Product: When product attributes like product quantity, weight, or volume need to be used.

    For example, you want to determine the freight rate based on the gross weight of the order. To do this, you must use the calculation resolution base of root. If, however, you want to calculate the freight per package, the calculation resolution base should be package.
    Resolution Base Grouping Rule (for example, destination location, weight, volume)

    The rule the system uses to group selected input data, for example, destination location, weight, and volume. You use the grouping rule and the resolution base to group charge lines using the calculation base specified in the Group By field of the grouping rule.
    Calculation Method (for example, standard or break-weight)

    The calculation method defines how the rates determined from the rate table will be interpreted. The break weight calculation method compares and selects the lower rate from either the actual or lower end of the following rate range. With clipping, the system works through the pricing scale level by level. The calculation results from each scale level are then summarized to produce the overall result.

Charge Types

A charge type is the classification of a charge line that plays an important role in how the system calculates the transportation charges for the charge line, for example, a base rate, surcharge, or discount. A charge type can result in a positive or negative value for a charge line. You can also specify whether a charge type can be an amount or a percentage value.
The image overviews a transportation or logistics system's charge categories, subcategories, and charge types. The Charge Category section lists two main categories: Basic Freight (004) and Accessorial Charges (011). The Charge Subcategory section further breaks down these categories into more specific subcategories, such as BAF (100000) and Sea Freight (101021). The Charge Types section maps specific charge types, such as HAUL (004, 101021) and ZS01 (011, 100000), to the corresponding category and subcategory. The Usage of Charge Categories and Subcategories section illustrates how the charge types, charge categories, and charge subcategories are interconnected and used within the system. It shows the relationships between the Charge Type, Charge Category, Charge Subcategory, and ECC Service Material components.

Charge types can be grouped into charge categories. A useful code list is the UN/EDIFACT code list 5237. All three entities are freely definable in Customizing. You can use the charge subcategories of charge types to group and categorize charge types more granularly than charge categories. A suitable example is the code list resulting from UN/EDIFACT Recommendation 23: "FREIGHT COST CODE # FCC Harmonization of the Description of Freight Costs and Other Charges".

Charge categories and subcategories can be assigned in the charge type customizing activity and used to determine the service material during settlement.

When defining charge types, you can use the following settings:

    Specify whether a charge type can result in a positive or negative value.
    Specify whether a charge type can be an absolute or a percentage value.
    Specify whether you want to set the charge type as an absolute or a percentage value each time you assign the charge type.
    Assign a charge type to a charge category and charge subcategory.
    Indicate if the charge is a tax.
    Specify if and how the system rounds a value.
    Assign a default calculation base to the charge type so you do not need to assign a calculation base each time you create a calculation sheet line item.

Watch the simulation Explain a Calculation Sheet to learn about the structure and content of a calculation sheet.
Exercise
Start Exercise
Rate Tables

A rate is a price for a certain transportation service that applies only during its validity period. In TM, rates are listed in a rate table.
The image appears to be a table displaying freight rate information based on destination zones and weight ranges, with the origin being Plant Chicago. The table shows the freight rates for various destination zones (TX, IN, KY, CA, FL, LA, CO, GA, WA) and different weight ranges (<=100 kg, <=500 kg, <=1000 kg, <=5000 kg, <=20000 kg). The freight rates are provided in US dollars. The validity period for these rates is from 01.01.2025 to 31.12.2025, and the status is indicated as Released.
Rate Table Elements

You can define the following elements in the rate table:

    Charge Usage

    You can define the charge usage as relevant to paying your carrier.
    Charge Type

    The system only assigns rate tables to a charge item in a calculation sheet if the charge types match. You can use this field to search for a rate table.
    Dimensions

    You add each dimension on which you want your rate to be defined and looked up. For example, if you wish the rate to be defined based on destination location and weight, add a dimension for destination location and weight.
    Calculation Base (for each scale)

    You can define the calculation base for the scale. The calculation base is the actual base or the factor on which the rate retrieval is performed.
    Relevance for Calculation Method

    If you select this checkbox, you define whether you want the system to apply a special calculation method, such as break weight or clipping, to the rate table on the level of a charge item.

Rate tables also contain the freight rates for transportation services and allow you to maintain rates for certain validity periods. A rate table can contain up to 14 dimensions for rate maintenance. The rates are reusable and can be referred to in multiple calculation sheets. The rates can be imported or exported using Microsoft Excel.

Example of rates include the following:

    Weight/volume rates
    Volumetric rate calculation (bulkiness factors)
    Distance rates
    Freight of all kinds and commodity rates
    Various origin and destination point classifications such as point-to-point, point-to-zip, point-to-state, zip-to-zip, and state-to-state
    Rates based on equipment (container type or size) or packaging class
    Handling charges: Terminal handling, cross-docking costs, loading and unloading, empty handling, document handling, AMS filing, canal due, security surcharge, and so on

Rate Table Integration with Microsoft Excel
The image depicts the process of creating rate tables. It shows that an Excel template is downloaded and then used to upload rate tables. The rate tables are created through a mass creation process, and the uploaded rate tables are then added with details. The image also includes a sample rate table showing freight rates based on destination zones and weight ranges, with the origin being Plant Chicago.

You can maintain a large rate table, with or without scale items, using Microsoft Excel. You can enter the rates and scales into a Microsoft Excel file and upload the file to your TM system. Alternatively, you can define an empty reference rate table with validity periods in TM and download it to Microsoft Excel. You can then maintain the rate table in the Microsoft Excel file and upload it to your TM system.

Watch the simulation Work with Rate Tables to learn how to create rate tables and change rates using the Update Rate function and Excel download and upload.
Exercise
Start Exercise
Scales

While a rate is a price for a certain transportation service that applies only during its validity period, a scale represents a dimension of the rate. In effect, a scale defines a parameter that then defines a rate. For example, if a rate depends upon distance and weight, you must define a separate scale for distance and weight. The distance and weight scales are then used to define the rate.
The image displays a freight rate table showing the origin of the Chicago plant. It is divided into three scales: Dest Zone, Weight, and Location. The Dest Zone scale has a Scale Base of TRZONE, a Scale Type of Same Scale, and a Calculation Type of Absolute. The Weight scale has a Scale Base of WEIGHT, a Scale Type of To Scale, a Scale Unit of Measure of Kg, a Rounding Profile of 0005, and a Calculation Type of Relative. The Location scale has a Scale Base of LOC, a Scale Type of Same Scale, and a Calculation Type of Absolute. The freight rates are provided for different destination zones (TX, IN, KY, CA, FL, LA) and weight ranges (<=100 kg, <=500 kg, <=1000 kg, <=5000 kg, <=20000 kg) and maintained in US dollar.

Scale maintenance is a prerequisite for maintaining rates, as scales are the dimensions of rate tables. You maintain scales independently of the agreement and the rates and can reuse them in multiple rate tables. A scale has a scale base, essentially a database field tied to an attribute of the freight order. The scale base defines how the system interprets the scale. For example, a rate based on distance has to have the distance calculated.

Possible scale bases include the following:

    Product quantity
    Package type
    Weight
    Volume
    Means of transport
    Location
    Distance
    Business partner

Each scale is based on a scale type. The scale type controls how the scale levels are defined. It indicates whether the specified scale values represent the scale levels' upper or lower boundaries.

Depending upon the scale base, a scale unit of measure can be defined. This is a mandatory field if the unit of measure is relevant for the scale base. Weight, for example, requires a unit of measure.

Concerning calculation type, you can choose between absolute and relative. For non-numeric scales, you can only choose absolute. The system uses the calculation type on the scale level as the proposed value for rate table maintenance.

You can also assign rounding profiles. Before the system accesses the scale to look up a rate in a rate table, it rounds the input value based on the rounding profile to determine the right scale level.
Calculation Base

A calculation base identifies the actual base or factor with which the system calculates the charges for the scale.
The image shows a freight rate calculation system that uses two different calculation bases: DESTLOC and GROSSWT. The DESTLOC base determines the calculation based on the destination location of the freight order/booking, while the GROSSWT base calculates based on the total weight of the freight order. The image also includes a Helper Assignment section that provides freight rates for BAF/Container dry shipments from Newark, Portland, and Miami based on different weight ranges (up to 5 tons, up to 10 tons, and up to 20 tons).

There can be various scenarios in which the system must calculate a charge for different weights, such as gross and net weights.

In this case, gross and net weights correspond to the scale base Weight, whose dimension is mass. However, by definition, gross weight and net weight are two entirely different charge aspects. Therefore, they have two different calculation bases, for example, "W1" for gross weight and "W2" for net weight.

To follow the scenario given here, you define a calculation base for every scale base. This calculation base is the final element in the charge determination. This means that the calculation base is used to determine the charges.

In the figure, Calculation Base, the charges depend on weight and the destination location. The scale has the scale base Location. This scale base defines the scale as using locations only. The scale base can be used for both the source and destination location. The calculation base DESTLOC determines the destination location of the freight order used. Technically, in customizing the calculation base, you define which field to use and which program or class the system will call to determine the field value.

If the resolution base in the calculation sheet points to the freight order stage, the system will derive the values from the specific stage and use them in the calculation.

# Calculating Charges in Freight Documents
Charge Calculation

Freight Agreements (FAs) are the basis for calculating transportation charges. In this section, we look at how agreements are determined.

The system determines the agreement based on organization, business partner, validity period, and preconditions. Suppose that several matching agreements exist, which can be determined from the freight order/booking data. In that case, it is possible to have a leading charge type (defined in charge type Customizing), and the first agreement where the defined leading charge type can be calculated is picked. Besides using leading charge types, it is possible to maintain priorities. If the system finds multiple matching agreements during agreement determination, the agreement priority defines the sequence in which the subsequent determination is executed. The agreement priority can be maintained on the General Data tab in the details section.
Built-in Preconditions in Agreement Items

In an agreement, there are two ways of using preconditions for the agreement items (calculation sheets):

    Built-in preconditions

    BRFplus preconditions

It is possible to define a BRFplus condition or a BAdI to check if a certain calculation sheet is to be processed in a certain business context. The result of this rule is a true or false decision. If the response from BRFplus or the BAdI is true, the calculation sheet is considered for charge calculation. Some built-in preconditions are available on the agreement item level.
The image shows a diagram illustrating the concept of Built-In Precondition and BRF+ Precondition in an agreement. The Built-In Precondition includes three elements: Trade Lanes, Partners, and Item Precondition. The BRF+ Precondition is presented as a separate component in the diagram, indicating it is an additional precondition beyond the built-in ones. The diagram also shows two Agreement Item elements, suggesting the preconditions are associated with specific items within the agreement.
Manual Agreement Selection

Often, logistics service providers (LSPs) have multiple FAs with the same carriers and purchasing organizations. This is because an LSP may strike deals with carriers at various levels, for example, on a country, regional, and global basis.

Normally, the larger the contract, the better the rates. However, if a country business partner (BP) pushes a lane to increase market share, the LSP could get better rates. Therefore, having a different contract with the country BP, or even multiple contracts, makes sense.

If there is no rule available to define in a unique way which agreement should be used for the calculation, manual agreement selection is also possible. Manual agreement selection offers additional capability for automatically selecting minimum or maximum agreement items through calculation profile control settings.
Charge Calculation Customizing
The image shows a diagram depicting the relationship between the main elements of a calculation profile and a charges profile and the determination of the business partner (carrier) and the purchasing organization. Details are explained in the following paragraphs.
Calculation Profile

The calculation profile provides a central location to define the settings you want the system to use when calculating transportation charges. The following are examples of settings you can define in a calculation profile:

    Specify the data type the system uses for the basis for the rate, exchange rate, agreement validity, and ultimately the charge calculation. (For example, the order date, the invoice date, or the expected end date of the main carriage.)
    Specify the level at which the system calculates the charges, for example, at the header, item, or stage level.
    Specify the determination rule that the system uses to determine the agreement and the calculation sheet.
    Specify the default dimensional weight profile for the organizational unit and the condition the system uses to determine the dimensional weight profile.

In the Define Calculation Profile Customizing activity, you define the settings you want the system to use when calculating transportation charges. You find it in Customizing at Transportation Management→Basic Functions→Charge Calculation→Basic Settings for Charge Calculation→Define Calculation Profiles.
Charges Profile

You can enable charge calculation for a purchasing organization by assigning a charges profile to the purchasing organization (see the PPOMEtransaction). The charges profile groups the general settings for charge calculation, such as the calculation profile you want the system to use when calculating transportation charges.

To activate charge calculation in any freight document, you must enable charge calculation in the corresponding freight document type customizing activity.
Freight Order Charge Calculation Process
This image shows the Freight Order Charge Calculation Process.

During freight charge calculation in the freight order, the following steps occur:

    The data is collected from the following TM core objects:
        Transaction business object: freight order, freight booking, service order, stage, item, container
        Configuration objects
        BRF+ conditions
        Master data
        Any BAdI implementation
    The freight agreement is determined.
    The calculation sheet within the freight agreement is determined.
    The values of each charge type in the calculation sheet are calculated.
    The log file of the calculation run is held, and so on.
    The calculated results are shown in the freight order.

# Settling Freight Charges
Freight Settlement Documents
This image shows Freight Settlement Processing.

A freight settlement document (FSD) is a business document that is posted to MM to create a purchase order and service entry sheet in order to verify an invoice received from a supplier or carrier. When the invoice is received, it should be checked against the data from the freight settlement document. If performing an evaluated receipt settlement, the automatically generated invoice is based on the data from the freight settlement document.

The transportation charges are calculated in TM based on a freight order, or freight booking. The actual invoice verification takes place in MM. You can create an individual FSD for one freight order, or freight booking. You can create a collective FSD for multiple freight orders or freight bookings. You can also create multiple FSDs at the same time.

The settlement includes the following:

    Assigning and transferring transportation costs to Financial Accounting to generate accruals, and assigning costs to a CO object.
    Settlement of costs with the carrier: posting payables by canceling the accruals.

You must have entered and accepted the services provided before you can transfer costs to Financial Accounting. The system automatically creates the service entry sheet based on a purchase order for external services. Before you can settle costs with the carrier, you must create an invoice using manual invoice verification or create a credit memo using the credit memo procedure.

You can create an individual FSD for one freight order, service order, or freight booking. You can create a collective FSD for multiple freight orders or freight bookings. You can also create multiple FSDs at the same time.
Freight Settlement Document Overview
The image depicts four key areas related to the Freight Service Document (FSD): General Data, Business Partner, Orders, and Charges. General Data includes document type, invoice date, purchasing organization, payment terms, net amount, document currency, and invoice amount verified. Business Partner includes invoicing party, payee, and additional business partners (partner determination, manual editing). Orders lists the business documents or business document items that are being settled with the FSD. Charges shows that charges for each FSD item are determined automatically or manually. The central circular element indicates the interconnectedness between these four areas in the context of the FSD.

An FSD contains the following information:

    General data: Document type, the purchasing organization, payment terms, document currency, and so on.
    Business partner information: Invoicing party, payee, additional business partners, which can be entered manually or automatically determined by the system.
    Orders: The business documents or the business document items that are being settled using the FSD.
    Charges: For each FSD item, the Charges tab page has the charges relevant for settlement with the carrier.

Freight Settlement Document Creation
The image shows a diagram centered around the Freight Service Document (FSD). The FSD is connected to several other elements, including a Freight Order Worklist (Individual & Collective), a Freight Booking, a Freight Booking Worklist (Individual & Collective), a Freight Order and a Batch Report.

The FSD can be created in the following ways:

    You can create an individual FSD for one freight order, or freight booking, or a collective FSD for multiple freight orders, or freight bookings. To do this access freight orders, or freight bookings from the worklist, in the relevant document overview, or in the freight settlement overview. The system automatically creates the FSD based on the data in the freight orders, or freight bookings and calculates the transportation charges.
    You can create FSDs directly out of the freight booking or freight order apps.
    You can create multiple freight settlement documents using the mass creation of FSD report.

Freight Settlement Document Creation - Configuration
The image depicts the process of creating a Freight Service Document (FSD) from a Freight Order or Freight Booking. The Customizing Settings section shows that the FSD Type is assigned to the Freight Order Type. The FSD Creation section explains the steps involved: 1) The FSD type is determined from the relevant FOR (Freight Order) type. 2) The settlement profile is determined from the relevant charges profile via the purchasing organization in the freight order document. 3) The applicable charges are determined from the freight agreement-related master data (calculation sheet, rate table, etc.). The final step is the Create FSD action, which generates the FSD based on the information gathered from the previous steps. The Freight Settlement Profile is assigned to the Charges Profile, which is then assigned to the Purchasing Organization.

When the FSD creation is triggered for a freight booking/freight order (FB/FO), the corresponding document type is used to determine the FSD type used.

The purchasing organization specified in the FB/FO is used to determine the settlement profile. All of this information is then used to create FSDs for the selected FO/FB.
Posting Freight Charges
Supplier Freight Processing - Process Flow
The image depicts a process flow related to freight transportation and invoicing. It includes the following key elements: (1)TM (Transportation Management): Handles Freight Unit, Transportation Planning, and Freight Order/Freight Booking. (2) MM (Materials Management): Handles Purchase Order, Service Entry Sheet, and Invoice verification. (3) Carrier/Supplier: Receives Order and issues Invoice. The process involves the Purchasing Organization, which determines the Freight Agreement and Charges and creates a Freight Settlement Document. The Invoice is verified, and Self-billing (ERS) is used to generate a Credit note and Invoice.

As you can see in the figure, Supplier Freight Processing - Process Flow, the typical freight settlement process flow is as follows:

Based on a delivery, the planner carries out several planning steps and creates a freight order or a freight booking to subcontract to a carrier.

On settlement, the system creates a Freight Settlement Document (FSD). This document contains all relevant logistical data, charges, and other commercial data. The charges can be copied from the freight order or booking (most commonly), or another charge calculation can be triggered based on the freight agreement between the purchasing organization and the carrier. It is possible to change charges in the FSD manually. FSDs can be created online or in batch. It is possible to do a collective settlement (several freight orders or bookings are settled with one FSD). The FSD can then be posted to MM.

A purchase order and a service entry sheet are created in MM. This constitutes the worklist for invoice verification. You also have the option of self-billing.

Note
The purchase order and service entry sheet are only used for technical purposes to post accruals. The service entry sheet comprises a list of services a vendor performs based on a purchase order, containing service descriptions and details of quantities and values. The descriptions of planned services deriving from the purchase order are default descriptions in the service entry sheet.

You can add charges to an invoiced FO, but removing them is impossible. In the latter case, a credit memo must be created based on the FSD.
Invoice Verification
Purchase Order and Service Entry Sheet
The image depicts a process flow related to purchasing in an organization. It includes the following key elements: (1) Purchase Order: The initial document that triggers the process. (2) Reference to: This step refers to the Purchase Order. (3) Service Entry Sheet: A document that records the service acceptance. (4) Service acceptance: This step involves accepting the service. (5) Transfer to Financial Accounting: The information is then transferred to the financial accounting system. (6) Accruals: The final step involves recording accruals in the financial system. The image also shows various organizational entities involved in the process, such as the service agent, purchasing organization, purchasing group, and plant item category.

Each service entry sheet is based on an external service order. Determining a valid purchase order is required for transfers to Financial Accounting and for settlements. Important criteria for the service order include carrier, purchasing organization, purchasing group, plant, and item category.

When the system has automatically determined a valid purchase order, a service entry sheet is created that refers to the purchase order. During posting, you accept services and, in Financial Accounting, an accounting document for generating accruals is created.

During account assignment, the system determines the correct G/L account in Financial Accounting for each cost item and the assignment for Controlling. Account assignment can be carried out at different levels, depending on the level of detail at which you want to track costs.

The transfer to Financial Accounting to establish accruals requires entering and accepting the services rendered. The system automatically creates a service entry sheet. Using the credit memo procedure, also referred to as the evaluated receipt settlement (ERS) procedure, you can settle the freight costs with the carrier without having received invoices. You can choose from different settlement periods. You transfer the calculated freight costs to Financial Accounting. The carrier verifies the invoices. In case the carrier discovers variances, you can post these variances as subsequent debits or credits.

If you receive invoices from the carrier, you can verify them manually and create them manually. Invoice verification can be done with reference to the freight order, carrier, bill-of-lading, air waybill, flight number, and voyage number.

Watch the simulation Create and Post a Freight Settlement Document and Verify the Invoice to learn how to create and post a freight settlement document and verify a freight invoice.
Exercise
Start Exercise
Dispute Management
Dispute Management for Freight Settlement

As a requester of transportation services, such as a shipper, you can have one of the following freight settlement processes in place with a provider of transportation services, such as a carrier:

    Self-billing:

    Your service provider does not submit an invoice. Instead, you settle automatically based on the information in your freight order. Self-billing is also called evaluated receipt settlement (ERS).

    Submission of an invoice by the service provider:

    You pay the service provider the amount contained in the invoice.

The image depicts a swim lane diagram covering the steps associated with the Carrier, the Shipper´s TM, and the Shipper´s MM. Details are explained in the following paragraphs.

In both processes, there can be differences and potential disputes between what you expect to pay and what the service provider expects to be paid. To keep good business relationships, you must work closely with your service provider to resolve these differences collaboratively. It would be best to clarify the differences and agree with the service provider on resolving them.

In TM, you can use the invoice submission settlement process with enterprise services. You are a shipper who requests transportation services from your service provider. You can enable your service provider to use enterprise services to submit invoices for the freight orders the service provider executes. The service provider creates an invoice document in their external system and uses enterprise services to send you the invoice. You use the external invoice to create a carrier invoice in TM.

Your service provider may have included additional unplanned freight costs or may have charges different from what you expect to pay in your freight order. Your TM system automatically evaluates the external invoice. It automatically creates a dispute case when your service provider submits an invoice with values different from what you expect. The system captures these differences in a dispute case. The system captures the individual differences in charges as dispute items.

On the dispute case screens, you, as a shipper, can approve or reject a dispute case. If you approve a dispute case, the system updates the freight order with information for the charge type, such as rate and quantity information. However, the system does not update logistics information, such as gross weight, gross volume, and total distance of the freight order.

When you resolve disputes early, you have the following business advantages:

    Inclusion of changes and unplanned costs in one invoice

    Accuracy in payment to the service provider

The following are the typical steps that can happen in a dispute case:

    Your service provider uses enterprise services to submit an invoice in line with the terms you have agreed with your service provider. TM creates a carrier invoice in the shipper's system. The carrier invoice captures the invoice details submitted by your service provider. TM produces a dispute case if your service provider submits an invoice with charges that differ from those in the original freight order. The system links the dispute case to the carrier invoice.

    You work closely with your service provider and either accept or reject the dispute case for the carrier invoice. When the carrier invoice is successfully posted to Materials Management (MM), the lifecycle status of the carrier invoice is set to Accepted.

        You reject the carrier invoice when you disagree with the service provider on the carrier invoice. If the carrier invoice has an associated open dispute case, the system closes the dispute case when you reject the carrier invoice. You can add a note to the carrier invoice to record the reason for your rejection.

        The lifecycle status of the carrier invoice is set to Rejected.

        You accept the dispute case for the carrier invoice.

        TM updates the freight order with the new or changed charges in the carrier invoice. You can use the background processing function Creation and Transfer of Freight Settlement Documents to update the new or altered charges for the freight orders to MM.

    You use the background processing function Posting of Carrier Invoices to transfer the carrier invoices ready for posting to Materials Management (MM). The system creates an incoming invoice in MM. The system posts the carrier invoices to MM for posting only when the following conditions are satisfied:

        No dispute case exists, or the dispute case has a lifecycle status of Resolved.

        The carrier invoice has a lifecycle status other than Rejected.

        All the freight orders associated with the carrier invoice have the invoicing status Completely Invoiced.

        All the freight settlement documents associated with the freight orders have the lifecycle status Accruals Posted.

        The carrier invoice has a block status of Not Blocked.

        The carrier invoice has a consistency status of Consistent.

Freight Settlement - Updates

There can be late changes in the freight order requiring changes to logistical data, which may result in a change in the charges (an increase or decrease). These changes can occur when the old values have already been transferred to settlement documents and/or the settlement documents have also been transferred to financials.

Business example:

Accruals are posted when the financial liability is known (for example, departure or confirmed freight pickup by the carrier). However, there can be mid-execution changes (for example, diversions (consignee changes), loss of cargo (in transit), unavailability of cargo, unplanned costs due to detention, demurrages, loading and unloading activities, tolls, and so on).

These changes may only be known after execution or during the invoicing process (when the carrier sends the invoice). The configuration of the FSD change process is done in the Settlement Profile. When an order changes and the invoicing status changes to Over Invoiced, the system automatically applies the reverse and repost strategy.

# Distributing Freight Costs
Cost Distribution

Freight costs incurred by the organization must be allocated to individual cost or profit centers so that profitability can be properly assessed. In this lesson, you examine the steps performed by the system in assisting the allocation of freight costs.

To compute true profitability for any manufacturing organization, all operational costs must be computed correctly. Most organizations would like the freight costs for material procurement to be included in the material cost. Similarly, for customer deliveries, the freight cost for the delivery must be considered for margin and profitability computation. TM can distribute each of the charges used in the freight cost calculation to the item level of the delivery. The item level cost can then be processed when the accrual is posted for the supplier freight invoices.

Various scenarios are supported, including the following:

    Transfer freight costs for inbound deliveries and stock transfers into material valuation.
    Post distributed costs to CO so that material-relevant costs can be tracked at the profit center level. (In such cases, material valuation is not impacted.)
    Post freight costs back to CO-PA for the customer outbound delivery to be accounted during profitability analysis.

Cost Distribution Concept
The image depicts a process flow related to freight settlement and invoice management. The process involves creating and managing freight-related documents and invoices and distributing costs across different stages of the freight management workflow. Details are explained in the following paragraphs.

The figure, Cost Distribution Concept, shows the data flow. Deliveries are the starting point for this process. These create freight units, which are later planned to create freight orders or freight bookings. In addition to the charges in the freight order/booking, the calculated charges are distributed to the delivery items contained in the freight order/booking. Afterwards, freight settlement documents are created. When the FSD and distributed costs are posted, a purchase order and service entry sheet are created in MM for a subsequent invoice verification process. Also, a settlement document is created to post the entries to CO-PA, CO, or material valuation.
Cost Distribution Configuration
The image depicts the key elements of the cost distribution configuration in the context of freight cost management. (1) Distribution Method includes Direct and Hierarchical options. (2) Distribution Profile includes Distr. Method, Distr. Level, and Distr. Rule. (3) Distribution Level is specified as ERP Item. (4) Distribution Rule includes Gross Weight, Gross Volume, Net Weight, Distance x Weight, and BAdI. (5) Enable Cost Distribution is influenced by FSD Type and FO/FB Type. The image provides an overview of the factors and configuration options involved in distributing freight costs.

Cost distribution must be enabled in the document type Customizing. Further settings for cost distribution include distribution profiles, methods, rules, and levels. The distribution profile is assigned to the organizational unit for charge calculation via the charges profile.

Cost distribution profiles are used to identify the rules for distributing freight costs. A profile consists of distribution methods, distribution rules (basis for distribution), and distribution levels.

TM provides two methods for cost distribution, as follows:

    Direct:

    This method is normally used when all charges incurred can be distributed to individual line items of a delivery based on gross weight or volume. Normally, the charge elements may be calculated at the header or individual item level.
    Hierarchical:

    This method may be used when the resolution base may include other levels, such as containers or rail cars. In such cases, there may be charges for the individual container or rail car, in addition to other charges. So, other charges must be distributed to the container level first and then the final distribution should take place to allocate the cost to the line item level.

If necessary, you can add your own distribution methods.

TM supports the following rule basis to be used for cost distribution:

    Gross Weight
    Gross Volume
    Net Weight
    Distance times Weight

The distribution level specifies the target level to which the system allocates transportation charges for a freight order or freight settlement document.

Posted data can be viewed using the transaction code WLFLTM2 or via Display Cost Distribution Documents. Distribution data can be searched using the FSD number as the reference document number.
Billing Freight Costs

When you sell your products to a customer, you may also take responsibility for delivering these products to that customer. You incur costs for transportation, for example, through a carrier. You can pass on these costs to your customers.

You integrate sales orders and deliveries to facilitate transportation planning and execution in TM. TM creates or updates freight units directly for sales orders or deliveries. You plan transportation for these freight units by creating orders that you subcontract to the carrier. The freight order determines the freight costs to be paid to the carrier. You configure TM to distribute the freight costs in the freight order according to delivery items. Next, you can add the distributed costs for each delivery item to the final amount in the billing document to be sent to your customer.

This involves the integration of the following processes:

    Freight orders in TM

    Pricing in SD

    Billing in SD

The image depicts a process of billing freight costs from a Transportation Management (TM) system to customers in a Sales and Distribution (SD) system. It includes two sales orders, each with multiple items. The freight units associated with these sales orders are also shown. Billing documents, including each item's net prices and transport costs, are generated based on the freight order. The freight settlement document consolidates the freight costs, which are then distributed to the customers. The key elements include Sales Orders, Freight Units, Freight Orders, Billing Documents, Transport Costs, and Freight Settlement.

Note

You must integrate SD with an internal TM component to include the freight cost in the billing document for all product deliveries.

You can only include the freight cost in a billing document when you have one freight order document for the delivery and the freight order has only one currency in which you calculate the cost.
