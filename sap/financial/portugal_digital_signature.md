# Portugal Digital Signature (ATCUD) Configuration Log

## 1. Create Number Range [VN01]
Create the dedicated number range for Portuguese billing documents.
- **Transaction:** `VN01`
- **ID:** `Z1`
- **SPRO Path:**
    > Sales and Distribution > Billing > Billing Documents > Define Number Ranges for Billing Documents

## 2. Assign Billing Type to Number Range [VOFA]
Link the billing type `F2` to the new number range `Z1`.
- **Transaction:** `VOFA`
- **Action:** Set Number Range for Internal assignment to `Z1`.
- **SPRO Path:**
    > Sales and Distribution > Billing > Billing Documents > Define Billing Types

## 3. Assign VAT Registration No. (Contribuinte) [OBY6]
Define the VAT Registration Number (NIF) in the global company code parameters.
- **Transaction:** `OBY6`
- **Action:** Enter the "VAT Registration No."
- **SPRO Path:**
    > Financial Accounting > Financial Accounting Global Settings > Global Parameters for Company Code > Enter Global Parameters

## 4. Map SAF-T Invoice Type (Table Maintenance) [SE16]
Map the number range/series to the SAF-T Invoice Type (e.g., `FT`).
- **Transaction:** `SE16` / `SM30`
- **Table:** `SIPT_NUMBR_SD`
- **Action:** Locate entry and set **Invoice Type** to `FT`.

## 5. Update Validation Code [GLO_PT_SVC]
Enter the validation code received from the AT authorities for the specific series.
- **Transaction:** `GLO_PT_SVC`
- **Context:** SD Billing
- **Action:** Select the Series ID and update the **Validation Code** field.