# Inventory Counting

## Path
Logistics -> Logistics Execution -> Internal Whse Processes -> Physical Inventory -> In IM

## Core Transactions (The 3-Step Process)
 - [MI01]: **Create Document** - Create a new Physical Inventory Document for specific materials/plants.
 - [MI04]: **Enter Count** - Input the actual quantity found on the shelf into the system.
 - [MI07]: **Post Difference** - Adjust system stock and financial accounts to match the count.

## Combined & Shortcut Transactions
 - [MI08]: **Count/Difference** - Enter the count and post the difference in one screen.
 - [MI10]: **Doc/Count/Diff** - Create document, enter count, and post differences in one step.
 - [MI09]: **Enter w/o Doc** - Enter a count for items not originally on a document (creates doc automatically).

## Reporting & Quality Control
 - [MI20]: **Difference List** - Report showing the variance (quantity/value) before you post.
 - [MI24]: **PI List** - Status overview of all documents (to see what is still "Open").
 - [MI11]: **Recount** - Create a new document if the initial count is suspected to be wrong.
 - [MI21]: **Print** - Print the physical count sheets for the warehouse staff.

## Special & Batch Procedures
 - [MICN]: **Cycle Counting** - Batch create inventory documents based on material ABC indicators.
 - [MI31]: **Batch Input** - Create a large volume of inventory documents for an entire plant at once.
 - [MI35]: **Set Zero Count** - Mass-set the count to zero for items found to be completely out of stock.