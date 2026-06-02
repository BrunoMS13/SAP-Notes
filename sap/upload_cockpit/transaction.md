# SAP LSMW (Legacy System Migration Workbench)

**Transaction:** `LSMW`

LSMW is a standard SAP tool used to transfer data from legacy systems into SAP. It provides a structured, step-by-step process for mapping, converting, and loading data through a series of defined stages. It is commonly used for one-time or periodic data migrations such as master data uploads, stock transfers, or configuration loads.

---

## The 13 Steps of LSMW

---

### Step 1 – Define Object Attributes

Define the **Object Type** and **Import Method** that LSMW will use to load data into SAP. This is the most critical configuration decision as it determines how data is posted.

**Available Import Methods:**

- **Standard Batch/Direct Input**
  A pre-built SAP migration object that uses a standard batch input program. SAP ships these for common objects (e.g. material master, vendor master). The program directly writes data into the database using function modules without creating a batch input session. Simpler to use when a standard object exists for your data type.

- **Batch Input Recording**
  You manually record a transaction in SAP (similar to a macro recording) and LSMW replays that recording for each data row. Useful when no standard object exists or when you need to post via a specific transaction (e.g. `MM01`, `XK01`). Flexible but sensitive to screen layout changes.

- **IDoc (Intermediate Document)**
  Data is transferred via IDocs — SAP's standard electronic document format used for EDI and system integration. The IDoc is created from the source data and then processed by the standard IDoc inbound processing. Good for scenarios where the data flow already uses IDocs or when integrating with external systems.

- **BAPI (Business Application Programming Interface)**
  Uses a standardised SAP function module (BAPI) to post data. BAPIs are stable, well-documented interfaces that handle business logic and validation internally. Recommended when a suitable BAPI exists, as it is the most robust and upgrade-safe method.

---

### Step 2 – Define Source Structures

Define the **structure(s)** of your source (legacy) data — essentially describing how your input file is organised. A source structure represents a grouping of fields that correspond to one record type in your input data (e.g. a header record or item record).

---

### Step 3 – Define Source Fields

Define the **individual fields** within each source structure created in Step 2. Each field corresponds to a column or value in your legacy data file. You specify the field name, description, type (character, numeric, etc.) and length to match what is present in the source.

---

### Step 4 – Define Structure Relations

Map (relate) your **source structures** to the corresponding **target structures** in the SAP object. This tells LSMW which source structure feeds which SAP target structure (e.g. mapping your header source structure to the SAP material header structure).

---

### Step 5 – Define Field Mapping

Map individual **source fields** to the corresponding **SAP target fields** within the related structures.

- Use **Extras → Auto Field Mapping** to automatically map fields where source and target field names match — this saves time on large structures.
- Fields that cannot be auto-mapped must be mapped manually.
- You can also assign **constants** to target fields directly here (i.e. hardcode a value that applies to every record, such as a plant, company code, or unit of measure).

---

### Step 6 – Define Fixed Values, Translations, and User-Defined Routines

This step allows you to define reusable conversion logic that can be referenced in your field mappings:

- **Fixed Values:** Assign a static value to a field globally (alternative to setting constants per field in Step 5).
- **Translations:** Define value mapping tables — convert a legacy code to an SAP code (e.g. legacy material type `"RM"` → SAP material type `"ROH"`). Useful when legacy and SAP use different code sets.
- **User-Defined Routines:** Write custom ABAP code snippets to handle complex field transformations that cannot be handled by simple mapping or translation (e.g. date format conversion, string manipulation, conditional logic).

---

### Step 7 – Specify Files

Assign the **file paths** for the input and output files used during the migration run.

- **Legacy Data (Source File):** The flat `.txt` file extracted from your Excel or source system containing the records to be uploaded. This is assigned in the next step (Step 8).
- **Imported Data File:** Typically named with the pattern `*.lsmw.read` — the raw read output after Step 9.
- **Converted Data File:** Typically named with the pattern `*.lsmw.conv` — the output after conversion in Step 11.

> **Note on the Converted Data File:** This file may require a **logical file path** to be configured if a physical path is not directly accessible. If required, create the logical file path in transaction **`FILE`**:
>
> 1. Create a **Logical File Path** (e.g. `ZMASS_UPLOAD_LP`) with the corresponding physical path on the application server.
> 2. Create a **Logical File Name** linked to the logical path, with:
>    - **Application Area:** `WM` (or as appropriate)
>    - **Data Format:** `BIN`
>    - **Physical File Name:** the `.lsmw.conv` filename used in your LSMW project.

---

### Step 8 – Assign Files

Physically **assign the source `.txt` file** to the source structure defined in Step 2. This is where you browse to and select the legacy data file that LSMW will read in the next step.

---

### Step 9 – Read Data

LSMW **reads the source file** assigned in Step 8 and parses it according to the source structures and fields defined in Steps 2 and 3. The data is stored internally in the imported data format (`.lsmw.read`).

---

### Step 10 – Display Read Data

Allows you to **review and verify** the data as it was read from the source file before conversion. Use this step to confirm field values were parsed correctly and records are complete.

---

### Step 11 – Convert Data

LSMW **applies all field mappings, fixed values, translations, and routines** defined in Steps 5 and 6 to transform the source data into the SAP target format. The result is stored in the converted data file (`.lsmw.conv`).

---

### Step 12 – Display Converted Data

Allows you to **review the converted data** before posting it to SAP. Use this to verify that transformations and mappings produced the expected SAP values.

---

### Step 13 – Create Batch Input Session / Run Import

The final step — **posts the converted data into SAP**.

- If using **Batch Input** method: a batch input session is created. Ensure the **"Create Batch Input Session"** option is ticked. The session can then be processed via transaction `SM35`.
- If using **Direct Input, BAPI, or IDoc**: the data is posted directly without creating a session.
- Review the run log after execution to identify any errors or records that failed to post.

---

## Quick Reference Summary

| Step | Action |
|------|--------|
| 1 | Define object type and import method |
| 2 | Define source structures |
| 3 | Define source fields |
| 4 | Map source structures to SAP target structures |
| 5 | Map source fields to SAP target fields (+ constants) |
| 6 | Define fixed values, translations, custom routines |
| 7 | Specify file paths (configure logical path in `FILE` if needed) |
| 8 | Assign the source `.txt` file |
| 9 | Read source data |
| 10 | Display and verify read data |
| 11 | Convert data using defined mappings |
| 12 | Display and verify converted data |
| 13 | Create batch input session / run import |