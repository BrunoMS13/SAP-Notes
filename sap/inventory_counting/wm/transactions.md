# WM Inventory Counting (Bin Level)

## Path
Logistics -> Logistics Execution -> Internal Whse Processes -> Physical Inventory -> In WM


## Core Transactions (The 4-Step Process)
- [LI01N]: **Create Document** - Create a Physical Inventory document for specific Bins.
- [LI11N]: **Enter Count** - Input the physical quantities found in each Bin.
- [LI20]: **Clear WM** - Clear differences at the Warehouse level (removes Bin blocks).
- [LI21]: **Clear IM** - Post the differences to Inventory Management (updates Stock/Finance).

## Combined & Shortcut Transactions
- [LI12N]: **Change Count** - Correct a count that was already entered but not yet cleared.
- [LI14]: **Start Recount** - Trigger a recount for specific items within a WM inventory document.
- [LI13N]: **Display Count** - View the entered quantities for a specific inventory document.

## Reporting & Quality Control
- [LX03]: **Bin Status Report** - See which bins are "blocked" for inventory counting.
- [LX17]: **Difference List** - Shows the inventory differences in WM before you clear them.
- [LX22]: **Inventory Overview** - Dashboard to monitor the status of all WM inventory docs.
- [LX25]: **Inventory Status** - View the inventory progress for a specific Storage Type.

## Special & Batch Procedures
- [LX15]: **Annual Inventory** - Selection screen to create docs for all bins for year-end.
- [LX16]: **Cycle Counting** - Create inventory documents based on WM cycle counting settings.
- [LI15]: **Evaluation** - Analyze the accuracy of warehouse counts over time.