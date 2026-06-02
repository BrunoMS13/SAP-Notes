# Inventory Counting Flow

# 1. Standard Flow
    Create ———> Count ———> Post
    (MI01) ———> (MI04) ———> (MI07)

# 2. The "Recount" Flow
    Count ———> Review ———> Recount ———> Post
    (MI04) ———> (MI20) ———> (MI11) ———> (MI07)

# 3. The "Shortcut" Flows
    Create + Count: MI01 ———> MI08 (Combines MI04/MI07)
    The "Express": MI10 (Combines MI01/MI04/MI07 into one click)

# SAP Inventory Transaction Reference
|       Stage        |  T-Code  |                   Description 
| **Step 1: Create** | **MI01** | Create the Physical Inventory Document (The "Snapshot").
| **Step 2: Enter**  | **MI04** | Input the actual quantity found on the shelf.
| **Step 3: Post**   | **MI07** | Post the difference to adjust stock and Finance.
| **The Review**     | **MI20** | Difference List - View variance before you commit to posting.
| **The Fix**        | **MI05** | Change an incorrectly entered count quantity.
| **The Restart**    | **MI11** | Create a Recount Document for a specific item.
| **Shortcut A**     | **MI08** | Enter count and post difference in one screen.
| **Shortcut B**     | **MI10** | Create document, enter count, and post in one screen.
| **Shortcut C**     | **MI09** | Enter count for an item not yet on a document.
| **Reporting**      | **MI24** | Physical Inventory List (The status tracker).