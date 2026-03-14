# Retail Documentation Outdated Analysis Report

**Date:** 2026-03-14
**Scope:** `content/en/docs/retail/` — focused on oldest, screenshot-heavy, and early-2024 docs
**Source repo checked:** `navipartner/npcore-partners` (public partner fork of npcore)

---

## Executive Summary

Analysis of 12+ retail documentation articles against the npcore-partners codebase reveals **3 Critical**, **4 High**, **3 Medium**, and **3 Low** priority findings. The most severe issues involve entire modules (Service/Repair Module, Stock-Take/Physical Inventory) that have been moved to `__Obsolete (NOT SUPPORTED)` in the codebase while their documentation remains live and gives no indication of deprecation. Additionally, several docs reference obsolete terminology (Pepper Integration, Payment Type POS, Item Cross Reference) and contain outdated table/page references.

---

## CRITICAL Priority Findings

### 1. Service Module / Customer Repair — ENTIRE MODULE OBSOLETE
**Files affected:**
- `content/en/docs/retail/service_module/reference/customer_repair_flow/index.md` (2023-09-12)
- `content/en/docs/retail/service_module/how-to/setup/index.md` (2023-07-11)
- `content/en/docs/retail/service_module/intro.md` (2023-07-11)

**Evidence from code:**
All Customer Repair tables and objects are in `Application/src/__Obsolete (NOT SUPPORTED)/Repair/`:
- `CustomerRepairSetup.Table.al` → `ObsoleteState = Removed`
- `CustomerRepair.Table.al` → `ObsoleteState = Removed`
- `CustomerRepairJournal.Table.al` → `ObsoleteState = Removed`
- `ItemRepair.Table.al` → `ObsoleteState = Removed`
- `ItemRepairLog.Table.al` → `ObsoleteState = Removed`

**Impact:** The entire service_module section (6 docs) documents a feature that has been **removed** from the codebase. The docs reference:
- `Customer Repair Setup` administrative section (removed)
- `Customer Repair Card` (removed)
- `Finalize Repair` shortcut (no code match found)
- Report IDs 6014502, 6014504, 6185131-6185134 (likely removed)
- Page ID 6185133 for RUNPAGE action (likely invalid)
- Table 6014504 references in email/SMS setup (removed)

**Recommendation:** Add prominent deprecation/removal notices to all service_module docs, or remove the section entirely. If the functionality has been replaced, link to the replacement.

---

### 2. Physical Inventory / Stock-Take — MODULE MOVED TO SEPARATE APP
**Files affected:**
- `content/en/docs/retail/physical_inventory/reference/stocktake_template/index.md` (2024-01-11)
- `content/en/docs/retail/physical_inventory/how-to/stocktake_template/index.md` (2024-01-11)
- `content/en/docs/retail/physical_inventory/how-to/stocktake_worksheet/index.md` (2024-01-11)
- `content/en/docs/retail/physical_inventory/how-to/stocktake_config/index.md` (2024-01-11)
- `content/en/docs/retail/physical_inventory/how-to/item_journal_template/index.md` (2024-01-11)
- `content/en/docs/retail/physical_inventory/how-to/transfer_post_stocktake/index.md` (2024-01-11)
- `content/en/docs/retail/physical_inventory/explanation/stocktake_dimension/index.md` (2024-01-11)

**Evidence from code:**
All Stock-Take tables are in `Application/src/__Obsolete (NOT SUPPORTED)/StockTake/`:
- `StockTakeTemplate.Table.al` → `ObsoleteReason = 'Object moved to NP Warehouse App.'`, `ObsoleteTag = '2023-06-28'`
- `StockTakeConfiguration.Table.al` → `ObsoleteReason = 'Object moved to NP Warehouse App.'`
- `StockTakeWorksheet.Table.al` → in `__Obsolete (NOT SUPPORTED)` folder
- `StockTakeWorksheetLine.Table.al` → in `__Obsolete (NOT SUPPORTED)` folder

**Impact:** All 7 physical inventory docs describe functionality that was moved to a separate "NP Warehouse App" since 2023-06-28. Users following these docs in the core NP Retail product will not find these features.

**Additional obsolete reference in docs:**
- The stocktake_template reference doc mentions **Item Cross Reference** as a barcode translation table — this BC concept was renamed to **Item Reference** in Business Central 2021 Wave 1. The code shows the old `Item Cross Reference` record in upgrade codeunits only.
- The **Alternative No.** table referenced in the docs is also in `__Obsolete (NOT SUPPORTED)/Alternative Number/`

**Recommendation:** Add clear notices that Stock-Take has moved to NP Warehouse App. Either redirect users to that app's documentation or update docs to reflect the new location. Fix "Item Cross Reference" → "Item Reference" terminology.

---

### 3. EFT Docs Reference Obsolete "Pepper Integration" Terminology
**Files affected:**
- `content/en/docs/retail/eft/how-to/eft_bin/index.md` (2023-11-22)

**Evidence from code:**
The doc states: *"In most Terminal Integrations (other than **Pepper Integration** and External Terminal)..."*

The entire Pepper integration is in `Application/src/__Obsolete (NOT SUPPORTED)/EFT/Pepper/`:
- `PepperLibraryTSD.Codeunit.al` → `ObsoleteTag = '2023-06-28'`
- `PepperTerminal.Table.al` → `ObsoleteTag = '2025-06-13'`, `ObsoleteReason = 'No longer supported'`
- All Pepper objects are marked obsolete

**Impact:** Referencing Pepper Integration as a current integration option is misleading. The doc should only reference currently supported integrations (Adyen, NETS BAXI, NETS Cloud, External Terminal).

**Recommendation:** Remove Pepper references. Update the introductory text to only list current supported EFT integrations.

---

## HIGH Priority Findings

### 4. EFT BIN Group Doc — Partially Outdated Table References
**Files affected:**
- `content/en/docs/retail/eft/how-to/bin_group/index.md` (2023-08-07)

**Evidence from code:**
- The doc references **EFT Mapping Group Payment Links** — the old table `NPR EFT BIN Group Paym. Link` (6184512) has been marked `ObsoleteReason = 'Replaced by "NPR EFT Bin Group Payment Link"'`. The old page `NPR EFT BIN Group Paym. Links` is also obsolete, replaced by `NPR EFT BIN Group PaymentLinks`.
- The doc says to provide **DAN** in the **Payment Type POS** field. However, the `Payment Type POS` table (`NPR Payment Type POS`, 6014402) has `ObsoleteState = Removed`. The field still exists on the EFT BIN Group Payment Link table but the standalone table is gone.
- The doc uses the old **Lightbulb icon** search method (Tell Me has evolved in newer BC versions)
- Screenshot `eft_bin_group.PNG` likely shows old UI

**Field names still valid in code:** `Card Issuer ID`, `BIN From`, `BIN To`, `BIN Group Priority`, `BIN Group Code`, `EFT AID Mapping List`, `Registered application provider ID`, `ApplicationID` — all confirmed present.

**Recommendation:** Update table/page name references for the Payment Links. Verify "Payment Type POS" terminology vs current "POS Payment Method" naming. Update screenshot. Remove or clarify Pepper reference.

---

### 5. POS Posting Setup / Accounting Entries — 23 Screenshots Likely Outdated
**Files affected:**
- `content/en/docs/retail/posting_setup/explanation/accounting_entries/index.md` (2023-08-16, **23 images**)

**Evidence from code:**
- The POS Posting Setup page and table (`NPR POS Posting Setup`, table 6150618, page 6150657) are **still active** in the codebase.
- Field references `Include In Counting`, `Bin for Virtual-Count`, `Fixed Rate`, `Bank Rate` are confirmed in code.
- The document references **POS Payment Method Card** which exists as `NPR POS Payment Method Card`.
- Page/table structure appears largely intact.

**Primary concern:** With 23 screenshots dated to August 2023, the UI shown almost certainly does not match the current Business Central interface (BC has had multiple visual updates since). Even if the conceptual flow is correct, outdated screenshots cause confusion.

**Secondary concern:** The doc mentions "compress the entries" and "double entry" during virtual counting — this workflow logic should be verified against current EOD process which has been updated.

**Recommendation:** Re-capture all 23 screenshots against current BC version. Review EOD virtual counting workflow for accuracy. This is a major effort but the doc is a key reference for posting setup.

---

### 6. Item Add-On Docs — Screenshot-Heavy, Partially Outdated UI
**Files affected:**
- `content/en/docs/retail/pos_processes/how-to/custom_configurations_item_addons/index.md` (2023-08-18, **20 images**)
- `content/en/docs/retail/pos_processes/how-to/item_addon/index.md` (2023-07-11, **15 images**)

**Evidence from code:**
- The **Item AddOn Card** (`NPR NpIa Item AddOn`) is confirmed active in code
- **Item AddOn Line** table (6151126) is active
- **Before Insert Function** field and **UnitPriceFromMaster** function are confirmed present
- **RUN_ITEM_ADDONS** POS action (enum value 150) is confirmed active
- **NPR Properties** section on Item Card page extension is confirmed
- **Per Unit**, **Fixed Quantity**, **Mandatory**, **Copy Serial No.** fields — likely still present (part of the AddOn Line table)

**Primary concern:** 35 combined screenshots across both docs are from 2023 and show old BC UI. The *burger menu example* in custom_configurations doc is extensive (15 images for that section alone) and very likely shows outdated POS and BC screenshots.

**Secondary concern:** The docs reference **Item AddOn Line Setup** accessed via "Manage" > "Before Insert Setup" — this navigation path should be verified against current UI.

**Recommendation:** Re-capture screenshots. The functional flow appears mostly correct based on code analysis, but the visual representation is stale. Consolidate the two docs if possible to reduce maintenance burden.

---

### 7. Self-Service Profile Doc — Multiple Outdated References
**Files affected:**
- `content/en/docs/retail/pos_profiles/how-to/ss_profile/ss_profile.md` (2024-02-19, **9 images**)

**Evidence from code:**
- **POS Named Actions Profile** — confirmed active (table field `POS Named Actions Profile` on POS Unit, page `NPR POS Named Actions Profile`)
- **SS-START-POS**, **SS-ITEM**, **SS-PAYMENT**, **SS-IDLE-TIMEOUT** — all confirmed as active POS workflow enum values
- **TEXT_ENTER** — not found in quick search, may need verification
- **POS View Profile** fields (`Initial Sales View`, `After End-of-Sale View`, `POS Theme Code`) — all confirmed active
- **End of Day Type** `MASTER_SLAVE` and **Master POS Unit No.** — confirmed active
- **POS Security Profile** `Lock Timeout` — needs verification

**Outdated references found:**
1. The doc references **codeunit 6150702 NPR POS UI Management** — this codeunit exists but the label names mentioned (`Sale_TimeoutTitle`, `Sale_TimeoutCaption`, `Sale_TimeoutButtonCaption`) should be verified as label names can change.
2. The doc references **Table 6014406 - Sale Line POS** — the table `NPR POS Sale Line` still has ID 6014406, so this is correct. However, the field numbers (12 = Qty, 6 = Number) need verification as these may have changed.
3. The doc mentions **Major Tom** kiosk mode configuration — Major Tom reference found only once in the codebase (a logging-related codeunit). The "Configuration view of Major Tom" section may describe UI that has changed significantly.
4. The doc links to "creating POS themes" but the link target `[creating POS themes]` is broken (no href).
5. Screenshots show old POS UI and Business Central pages.

**Recommendation:** Verify all field numbers. Fix broken link for POS themes. Update Major Tom section. Re-capture 9 screenshots. Verify TEXT_ENTER action name.

---

## MEDIUM Priority Findings

### 8. SQL Statements for Lookup POS Action — Potentially Stale Action Name
**Files affected:**
- `content/en/docs/retail/pos_layout/reference/sql_pos_action/index.md` (2023-09-12)

**Evidence from code:**
- No direct match for a POS action literally called `LOOKUP` was found. The current action appears to be `ITEM_LOOKUP` (codeunit `NPR POS Action: Item Lookup`).
- The SQL filter syntax described is standard Business Central filter syntax and remains valid.
- Screenshot `pos_action_sql_filter.png` shows old UI.

**Recommendation:** Verify whether the action is still called `LOOKUP` or has been renamed to `ITEM_LOOKUP`. Update the action name reference and screenshot.

---

### 9. Data Archives Docs — References Standard BC Feature, Minor Issues
**Files affected:**
- `content/en/docs/retail/eft/how-to/create_data_archive/index.md` (2023-08-07)
- `content/en/docs/retail/eft/explanation/data_archives/index.md` (2023-11-22)

**Evidence from code:**
- Data Archive functionality exists in code as `NPR Reten. Pol. Data Archive` (codeunit 6059927) integrated with BC's Retention Policy framework.
- The **Data Archive List** is a standard BC page, not NP-specific.
- The docs describe a manual archiving process while the code suggests the current approach uses **Retention Policies** for automated archiving.

**Specific issues:**
1. The explanation doc has a broken link: `../howto/create_data_archive.md` — should likely be `../../how-to/create_data_archive/index.md`
2. The how-to describes a fully manual "Start/Stop Logging" workflow that may not reflect the current retention policy-based approach.
3. The docs are categorized under `eft/` but Data Archives apply more broadly.

**Recommendation:** Update the data archive docs to reflect the retention policy integration. Fix the broken cross-reference link. Consider moving these docs to a more general section.

---

### 10. Responsibility Center / Take Photo — Minor Staleness
**Files affected:**
- `content/en/docs/retail/pos_processes/how-to/responsibility_center/index.md` (2023-11-22)
- `content/en/docs/retail/pos_processes/how-to/take_photo/index.md` (2023-11-22)

**Evidence from code:**
- **CHANGE_RESP_CENTER** — confirmed active (enum value 132), parameters `Fixed Resp Center` and `Lookup Resp Center` confirmed in code
- **TAKE_PHOTO** — confirmed active (enum value 19)
- **POS Entry Media Info List** — confirmed active
- **POS Parameter Values** — confirmed active concept

**Issues:**
1. Both docs use old navigation: "Click **POS** in the Role Center's ribbon, followed by **Open POS**" — this navigation path may have changed in newer BC versions.
2. The Take Photo doc references **POS Entry Factbox** with an "Images Exist" field — should be verified.
3. The Take Photo doc embeds a YouTube video (`XmVeUrNa42U`) that may show old UI.
4. No screenshots in Responsibility Center doc (actually a positive — less to maintain).
5. The Take Photo doc has one screenshot showing old POS UI.

**Recommendation:** Verify navigation paths against current BC. The core functionality appears intact in code, so these are lower priority than the obsolete module docs.

---

## LOW Priority Findings

### 11. EFT BIN Mapping Doc — Functional but Stale Language
**Files affected:**
- `content/en/docs/retail/eft/how-to/eft_bin/index.md` (2023-11-22)

**Evidence from code:** All referenced entities (EFT Transaction Requests, Card Number, Card Application ID, Card Issuer ID) are confirmed active in code. The workflow described appears valid.

**Issues:**
1. References Pepper Integration as an exception (obsolete — see Critical #3)
2. Uses **Page Inspection** (Ctrl+F1) workflow which is still valid in BC but somewhat niche
3. No screenshots (positive for maintenance)

**Recommendation:** Remove Pepper reference. Otherwise low priority.

---

### 12. Create Data Archive How-To — Uses Old Lightbulb Icon
**Files affected:**
- `content/en/docs/retail/eft/how-to/create_data_archive/index.md` (2023-08-07)

**Issue:** References "Click the ![Lightbulb](Lightbulb_icon.PNG) button" — while Tell Me (the lightbulb/search) still exists in BC, newer docs typically use different phrasing. Very minor.

**Recommendation:** Low priority standardization update.

---

### 13. Physical Inventory Reference Doc — Dense but Architecture Valid (If App Exists)
**Files affected:**
- `content/en/docs/retail/physical_inventory/reference/stocktake_template/index.md` (2024-01-11)

**Issue:** The reference doc is thorough and well-structured. If the NP Warehouse App still uses these same concepts, the content may be reusable. However, it's currently misleading as it implies these features are in the core retail product.

**Recommendation:** Move to NP Warehouse documentation or add clear redirect.

---

## Screenshot Impact Summary

| Document | Images | Last Updated | Priority |
|----------|--------|--------------|----------|
| accounting_entries/index.md | 23 | 2023-08-16 | HIGH |
| custom_configurations_item_addons/index.md | 20 | 2023-08-18 | HIGH |
| item_addon/index.md | 15 | 2023-07-11 | HIGH |
| ss_profile/ss_profile.md | 9 | 2024-02-19 | HIGH |
| service_module/how-to/setup/index.md | 1 | 2023-07-11 | CRITICAL (module obsolete) |
| service_module/intro.md | 1 | 2023-07-11 | CRITICAL (module obsolete) |
| sql_pos_action/index.md | 1 | 2023-09-12 | MEDIUM |
| take_photo/index.md | 1 | 2023-07-12 | LOW |
| bin_group/index.md | 1 | 2023-08-07 | HIGH |
| **TOTAL** | **72** | | |

---

## Recommended Action Plan

### Immediate (Sprint 1):
1. **Add deprecation banners** to all Service Module docs (6 files) — module is `ObsoleteState = Removed`
2. **Add deprecation/redirect banners** to all Physical Inventory docs (7 files) — moved to NP Warehouse App
3. **Remove Pepper Integration references** from EFT docs

### Short-term (Sprint 2):
4. **Update EFT BIN Group doc** — fix obsolete table names, update Payment Links references
5. **Verify and update Self-Service Profile doc** — fix broken link, verify field numbers, update Major Tom section
6. **Update SQL POS action doc** — verify LOOKUP vs ITEM_LOOKUP action name

### Medium-term (Sprint 3-4):
7. **Re-capture screenshots** for accounting_entries (23), custom_configurations_item_addons (20), item_addon (15), and ss_profile (9) — **67 screenshots total**
8. **Update Data Archive docs** — align with retention policy approach, fix broken links
9. **Review navigation instructions** across all docs for current BC version compatibility

---

## Methodology

- Read all specified documentation files from the docs repo
- Searched `navipartner/npcore-partners` codebase via GitHub code search for:
  - Table names, page names, codeunit names mentioned in docs
  - Field names and POS action codes
  - Obsolete markers (`ObsoleteState`, `ObsoleteReason`, `ObsoleteTag`)
  - Code file locations (active vs `__Obsolete (NOT SUPPORTED)` vs `__Legacy (STILL SUPPORTED)`)
- Cross-referenced doc terminology against code captions and field names
- Checked for broken internal links and outdated cross-references
- Assessed screenshot freshness based on file dates and BC version evolution
