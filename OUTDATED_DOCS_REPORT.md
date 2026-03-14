# Outdated Documentation Report

**Report Date:** 2026-03-14  
**Docs Repo:** navipartner/docs  
**Code Repo:** navipartner/npcore-partners (public source-available)  

---

## Executive Summary

After cross-referencing documentation content against the `navipartner/npcore-partners` codebase, this report identifies **significant outdated documentation** across all analyzed focus areas. The most critical findings are:

1. **Three entire provider integrations documented are OBSOLETE** — Pepper, Flexiiterm, and MobilePay V10 all reside in `__Obsolete (NOT SUPPORTED)` in the codebase
2. **Bulgarian fiscalization docs reference wrong POS action codes** that no longer exist
3. **All 13 troubleshooting docs** haven't been updated since mid-2023 and reference potentially outdated UI flows
4. **Self-service profile doc** references "Major Tom" and "FLEXI Outdoor Kiosk" which have no presence in current code

---

## CRITICAL Priority Findings

### 1. Pepper Integration — ENTIRE SECTION IS OBSOLETE
- **Files affected:** All files under `content/en/docs/providers/pepper/`
  - `pepper_terminal/index.md` — Set up a Pepper terminal
  - `pepper_package_import/index.md` — Import Pepper package  
  - `new_terminal_type/index.md` — Create new terminal type
  - `pepper_params/index.md` — Pepper parameters
  - `pepper_card_types/index.md` — Pepper card types
  - `pepper_install_button/index.md` — Pepper install button
- **Evidence:** ALL Pepper code files in the codebase are located under `Application/src/__Obsolete (NOT SUPPORTED)/EFT/Pepper/` — including `PepperTerminalCard.Page.al`, `PepperTerminalList.Page.al`, `PepperConfigList.Page.al`, etc.
- **Impact:** Users following these guides are setting up a deprecated integration. No active code exists for Pepper outside the obsolete folder.
- **Recommendation:** Add deprecation banners to all Pepper docs, or remove them. Point users to active EFT integrations (Adyen, NETS BAXI, NETS Cloud, Planet PAX, Vipps MobilePay, Verifone VIM).

### 2. Flexiiterm Integration — ENTIRE SECTION IS OBSOLETE
- **File:** `content/en/docs/providers/flexiiterm/how-to/setup/index.md`
- **Evidence:** All Flexiiterm code files are under `Application/src/__Obsolete (NOT SUPPORTED)/EFT/NETS PSAM (Flexiiterm)/` — including `EFTFlexiitermProt.Codeunit.al`, `EFTFlexiitermInteg.Codeunit.al`, `POSActionEFTFlexiiterm.Codeunit.al`.
- **Impact:** Doc describes setting up integration with "older NETS PSAM terminals, e.g., Ingenico IPP350 terminals" — this entire integration is no longer supported.
- **Recommendation:** Mark as deprecated. Redirect users to NETS BAXI (native) or NETS Cloud integration.

### 3. MobilePay V10 Setup — OBSOLETE, REPLACED BY Vipps MobilePay
- **File:** `content/en/docs/providers/mobilepay/how-to/setup/index.md`
- **Evidence:** 
  - MobilePay V10 code is under `Application/src/__Obsolete (NOT SUPPORTED)/EFT/MobilePay V10/`
  - New integration exists: `Application/src/POS Payment/EFT/Integrations/Vipps Mobilepay/`
  - New workflow enum value: `VIPPS_MOBILEPAY` (value 202)
  - Doc references `MOBILEPAY_V10` as the EFT Integration Type
- **Impact:** Doc tells users to select `MOBILEPAY_V10` which is deprecated. The replacement is `VIPPS_MOBILEPAY`.
- **Note:** A newer Vipps MobilePay doc exists at `content/en/docs/providers/mobilepay/how-to/vipps_setup/index.md` (dated 2024-03-19) which is current. However, the OLD MobilePay V10 setup doc is still published without deprecation notice.
- **Recommendation:** Add deprecation banner to old MobilePay V10 doc. Cross-link to Vipps MobilePay setup.

### 4. Bulgarian Fiscalization — WRONG ACTION CODES
- **File:** `content/en/docs/fiscalization/bulgaria/how-to/setup/index.md` (2023-12-01, 5 images)
- **Evidence:**
  - Doc references action code `BG_FISCALPRINTER_MGT` → Code has `BG_SIS_FP_MGT` (enum value 190)
  - Doc references action code `BG_FP_CASHIER_MGT` with parameter `setCashier` → Code has `BG_SIS_FP_CASHIER` (enum value 195)
  - Neither `BG_FISCALPRINTER_MGT` nor `BG_FP_CASHIER_MGT` exist in the POSWorkflow enum
- **Impact:** Users following this guide will not be able to create the required POS actions for fiscal printer management and cashier management — the action codes simply don't exist anymore.
- **Additional concern:** 5 screenshots showing old UI that likely reflects pre-rename state.
- **Recommendation:** Immediately update action codes from `BG_FISCALPRINTER_MGT` → `BG_SIS_FP_MGT` and `BG_FP_CASHIER_MGT` → `BG_SIS_FP_CASHIER`. Retake screenshots.

---

## HIGH Priority Findings

### 5. Self-Service Profile Troubleshooting — Multiple Outdated References
- **File:** `content/en/docs/troubleshooting/ss_profile.md` (2023-07-18)
- **Issues found:**
  - References "Major Tom" (step 17: "Configure Major Tom for self-service") — no `Major Tom` reference found in current codebase
  - References "FLEXI Outdoor Kiosk" (step 18) — no `FLEXI Outdoor` reference found in current code
  - References configuring "POS View" with JSON file editing (step 7) — this may be outdated if POS views are now managed differently
  - References "SS-POS" actions and "POS Named Actions Profile" — these exist in code but the specific workflow may have changed
  - References "SSP (Adyen - EFT)" payment type setup (step 14) — Adyen integration exists but setup flow may have changed
- **Recommendation:** Full rewrite needed. Verify each step against current codebase and setup wizard flows.

### 6. Credit Memo Troubleshooting — Potentially Outdated POS Flow
- **File:** `content/en/docs/troubleshooting/credit_memo.md` (2023-07-18)
- **Issues found:**
  - References "Other function (menu)" → "Return (menu)" → "Cash Sales Reverse" POS navigation flow
  - `Cash Sales Reverse` returns 0 results in the codebase — this specific action name/flow may have been renamed or restructured
- **Recommendation:** Verify the current POS return/credit memo flow and update navigation steps.

### 7. EOD Report Troubleshooting — "Profiles" Section Reference May Be Outdated
- **File:** `content/en/docs/troubleshooting/eod.md` (2023-07-18)
- **Issues found:**
  - Step 1 says "Open one of the POS units... navigate to the **Profiles** section" — POS Unit Card layout may have changed
  - Step 2: "Open the **End of Day Profile** dropdown list, and click **New**" — the profile creation flow may differ in current versions
  - References `Master & Slave` terminology for End of Day — while `POS End of Day Profile` exists in code, the terminology may have been updated
- **Recommendation:** Verify current POS Unit Card layout and EOD profile creation flow.

### 8. France Fiscalization Setup — Specific Codeunit Reference
- **File:** `content/en/docs/fiscalization/france/how-to/setup/index.md` (2023-07-06)
- **Issues found:**
  - Step 13 references codeunit `6184851 "NPR FR Audit Arch. Workshifts"` — the codeunit exists in code as `FRAuditArchWorkshifts.Codeunit.al` but the numeric ID should be verified as IDs can change across versions
  - Step 14 references "Auto Archive URL", "Auto Archive API Key", "Auto Archive SAS" — these field names should be verified
  - References print templates `EPSON_RECEIPT_2_FR` and `EPSON_END_OF_DAY_Z_FR` — template names should be verified
  - Many setup enforcement rules listed — field names like "Fill Sale Fiscal No. On", "Print Receipt On Sale Cancel", "Do Not Print Receipt On Sale", "Allow Zero Amount Sales" should all be verified against current `POSAuditProfile.Table.al`
- **Recommendation:** Verify all field names, codeunit IDs, and template names against current code. This is a complex setup guide that must be accurate.

### 9. Spain Fiscalization — 9 Screenshots Potentially Showing Old UI
- **File:** `content/en/docs/fiscalization/spain/how-to/setup/index.md` (2025-02-14, 9 images)
- **Issues found:**
  - This doc is relatively recent (Feb 2025) and references `ES_FISKALY` audit handler which exists in code
  - References `ES Fiscalization Setup`, `ES Organizations`, `ES Signers`, `ES Clients` — all confirmed in code
  - However, 9 screenshots make it highly maintenance-heavy — any UI change invalidates multiple images
  - References `ES POS Audit Log Aux. Info` table — should be verified
- **Recommendation:** Verify screenshots match current UI. Consider reducing screenshot count.

### 10. Italy Fiscalization — 9 Screenshots, Complex Setup
- **File:** `content/en/docs/fiscalization/italy/how-to/setup/index.md` (2024-02-20, 9 images)
- **Issues found:**
  - `IT_PRINT_MGT`, `IT_EJ_REPORT`, `IT_LOTT_CODE`, `IT_CASH_MGT` action codes all confirmed in POSWorkflow enum — these are CORRECT
  - `IT_ENTRATE` audit handler confirmed in code — CORRECT
  - References `IT Tax Fiscalization Setup`, `IT POS Unit Mapping`, `NPR IT VAT Department Codebook`, `IT POS Payment Method Mapping` — should all be verified
  - 9 screenshots showing parameter configurations and payment setups
- **Recommendation:** Verify page names and screenshots match current UI.

---

## MEDIUM Priority Findings

### 11. WMS Handling Codeunits — Static Reference Table, Potentially Incomplete
- **File:** `content/en/docs/wms/reference/handling_codeunits/index.md` (2023-09-20)
- **Issues found:**
  - Lists 37 specific codeunits with IDs (6185182-6185291)
  - Unable to verify individual codeunit numbers against npcore-partners (WMS code not visible in public repo)
  - Some codeunit names contain "RFID" references which may have been updated
  - Reference table format hasn't been updated since 2023-09-20
- **Recommendation:** Cross-check all codeunit numbers and names against current WMS codebase. Add/remove any codeunits that have changed.

### 12. WMS Hardware Recommendations — Outdated Product References
- **File:** `content/en/docs/wms/explanation/hardware/index.md` (2023-11-22)
- **Issues found:**
  - Recommends specific hardware models that may be discontinued:
    - Zebra RFD8500 — this product is now replaced by RFD8500i/RFD40
    - Impinj xSpan Gateway — rebranded/updated product line
    - Impinj xArray Gateway — product line updated
    - "Samsung Galazy XCover Pro" — **TYPO** in "Galazy" (should be "Galaxy"), and XCover Pro has newer models (XCover6 Pro, XCover7)
    - Zebra ZD500R — this model has been superseded by ZD421R/ZD621R
  - Links to specification PDF files that may be outdated
- **Recommendation:** Update hardware recommendations to current models. Fix "Galazy" typo.

### 13. Power BI for WMS — Outdated Date Range and BC Version Reference
- **File:** `content/en/docs/power_bi/wms/how-to/installation/index.md` (2023-11-23, 5 images)
- **Issues found:**
  - Step 8 references default **To Date** as `31/12/2024` — this is now in the past
  - References "Business Central version 22" — BC is now on much later versions
  - 5 screenshots from 2023 likely show outdated UI
- **Recommendation:** Update date range defaults and BC version reference. Retake screenshots.

### 14. Power BI for Retail — Outdated BC Version Reference
- **File:** `content/en/docs/power_bi/retail/how-to/install/index.md` (2023-11-23)
- **Issues found:**
  - Step 6 states: "This specialized version facilitates seamless integration with the Business Central version 22 and newer." — BC 22 is old
  - Contains embedded YouTube video that should be verified as still current
  - Multiple screenshots from 2023
- **Recommendation:** Update BC version reference. Verify YouTube video and screenshots.

### 15. Power BI for Entertainment/Attraction — "ENVIROMENTNAME" Typo
- **File:** `content/en/docs/power_bi/entertainment/how-to/install/index.md` (2023-11-23)
- **Issues found:**
  - Step 1 says "ENVIROMENTNAME-PROD" — this appears to be a typo (should be ENVIRONMENTNAME)
  - The URL example also uses "EnviromentName-Prod" — same typo
  - Otherwise follows same pattern as Retail install (2023-era)
- **Recommendation:** Fix typo, update screenshots and BC version references.

### 16. Partner: Artifact Feeds — Potentially Outdated DevOps References
- **File:** `content/en/docs/partner/artifact_feeds/index.md` (2023-11-22, 7 images)
- **Issues found:**
  - References Azure DevOps at `navipartner.visualstudio.com` — should verify this URL is still valid
  - References "PublicFeeds" project and "NaviPartner.NavApps" feed
  - Step 3 says "currently two" core apps — this count may have changed
  - 7 screenshots of the Azure DevOps Artifact Feeds UI which changes frequently
  - NuGet package management instructions may be outdated
- **Recommendation:** Verify DevOps URLs, app count, and retake all 7 screenshots.

### 17. Partner: Inventory Setup — May Need BC Version Update
- **File:** `content/en/docs/partner/inventory_setup/index.md` (2023-10-26, 2 images)
- **Issues found:**
  - Core advice (disable Automatic Cost Posting, set Automatic Cost Adjustment to Never) is likely still valid
  - 2 screenshots of Business Central Inventory Setup page that may show old UI
  - References "NaviPartner creates a job" — the specific job queue setup may have changed
- **Recommendation:** Verify screenshots against current BC UI and confirm job queue setup details.

### 18. Croatia Fiscalization — 2 Screenshots, Old Date
- **File:** `content/en/docs/fiscalization/croatia/how-to/setup/index.md` (2023-10-19)
- **Issues found:**
  - `CRO_FINA` audit handler confirmed in code — CORRECT
  - `CRO Tax Fiscalization Setup` confirmed — CORRECT
  - References `Certificate Subject OIB`, `Bill No. Series`, `Accompanying Document No. Series` — should be verified
  - 2 screenshots from 2023
- **Recommendation:** Verify field names and update screenshots.

### 19. Denmark Fiscalization — Brief but Old
- **File:** `content/en/docs/fiscalization/denmark/how-to/setup/index.md` (2023-12-22)
- **Issues found:**
  - `DK_SKAT` audit handler confirmed in code — CORRECT
  - `DK Fiscalization Setup` table confirmed in code — CORRECT
  - References `SAFTCash` panel and `SAF-T Contact No.` — should verify field names
  - Very short doc — may be missing steps that have been added since
- **Recommendation:** Verify completeness against current setup requirements.

### 20. Slovenia Fiscalization — Old Date
- **File:** `content/en/docs/fiscalization/slovenia/how-to/setup/index.md` (2023-11-30)
- **Issues found:**
  - `SI_DAVKI` audit handler confirmed in code — CORRECT
  - `SI Tax Fiscalization Setup` confirmed — CORRECT
  - References `Salesperson Tax Number` field — should be verified
- **Recommendation:** Verify all field names against current code.

---

## LOW Priority Findings

### 21. Sweden Fiscalization — Informational Only, No Setup Steps
- **File:** `content/en/docs/fiscalization/sweden/how-to/setup/index.md` (2023-09-06)
- **Issues found:**
  - This is only an overview/explanation page, not a setup guide
  - CleanCash® integration confirmed in code (`[SE] CleanCash/` folder)
  - Historical information about "Legislation on 1 January 2010" is still accurate
  - States "over 80,000 CleanCash® units installed" — number may be higher now
- **Recommendation:** Low priority. Consider adding actual setup steps.

### 22. Troubleshooting Docs (Printers) — Generic, Likely Still Valid
- **Files:** `a4_printer.md`, `receipt_printer.md`, `label_printer.md`, `printer.md`
- **Issues found:**
  - Hardware troubleshooting advice (power checks, driver checks, etc.) is generic and likely still valid
  - `label_printer.md` references **Object Output Selection** — this page exists in code (`ObjectOutputSelection.Page.al`)
  - `printer.md` references **Print Template Output Setup** and **Print Template List** — both exist in code
  - These docs contain no screenshots and are text-only Q&A
- **Recommendation:** Low priority. Content is generic enough to remain valid, though a review for completeness would be beneficial.

### 23. Coupon Troubleshooting — Field Names Appear Valid
- **File:** `content/en/docs/troubleshooting/coupon.md` (2023-07-18, 2 images)
- **Issues found:**
  - `Coupon Type Card` exists in code (`NpDcCouponTypeCard.Page.al`)
  - `Multi-Use Coupon` field exists in code
  - `Validate Coupon Module` exists in code
  - 2 small screenshots may show old UI
- **Recommendation:** Low priority. Verify screenshots.

### 24. Initial Float Troubleshooting — References POS Payment Bin
- **File:** `content/en/docs/troubleshooting/initial_float.md` (2023-07-24)
- **Issues found:**
  - References `POS Payment Bin Set Float` page — `POSPaymBinSetFloat.Page.al` exists in code
  - References `Confirm Bin Contents` window — should be verified
  - No screenshots, text-only
- **Recommendation:** Low priority. Verify window/dialog names.

### 25. Tax-Free Troubleshooting — References Audit Roll
- **File:** `content/en/docs/troubleshooting/tax_free.md` (2023-07-18)
- **Issues found:**
  - References `Audit Roll` and `Tax Free Voucher` page — `TaxFreeVoucher.Page.al` exists in code
  - Short, text-only doc
- **Recommendation:** Low priority. Verify `Audit Roll` still exists as a navigable page.

### 26. Shipping Labels (Shipmondo) — Appears Current
- **File:** `content/en/docs/shipping_labels/shipmondo/how-to/setup/index.md` (2023-10-18)
- **Issues found:**
  - `Shipping Provider Setup` page confirmed in code
  - `Package Shipping Agents` page confirmed in code
  - `NPR Services Combination` confirmed in code
  - GLS service codes (GLSDK_SD, GLSDK_HD, GLSDK_BP) would need Shipmondo API verification
  - References Shipmondo website navigation which may have changed
- **Recommendation:** Low priority for code accuracy. Verify Shipmondo website steps still match.

### 27. NETS BAXI Setup — Active Integration, May Need Review
- **File:** `content/en/docs/providers/nets_baxi/how-to/setup/index.md` (2023-07-06)
- **Issues found:**
  - NETS BAXI code exists in active folder (`POS Payment/EFT/Integrations/NETS BAXI/`)
  - NETS Cloud also exists in active folder — both are active integrations
  - `NETS_BAXI_NET` and `NETS_CLOUD` EFT Integration Types should be verified in current enum
  - Doc references `Socket Listener` parameter — should be verified
- **Recommendation:** Low priority. Integration is active but doc is from 2023 — worth a review.

### 28. Standalone Terminal Setup — Active but No Code Match
- **File:** `content/en/docs/providers/standalone_terminal/how-to/setup/index.md` (2023-07-06)
- **Issues found:**
  - Code folder is `Application/src/POS Payment/EFT/Integrations/External Terminal/`
  - Doc references `EXTERNAL_TERMINAL` as the EFT Integration Type — this name matches the code folder
  - Basic setup, unlikely to have changed significantly
- **Recommendation:** Low priority.

### 29. Planet Setup — Relatively Recent
- **File:** `content/en/docs/providers/planet/how-to/setup/index.md` (2024-03-14)
- **Issues found:**
  - `Planet PAX` code exists in active folder
  - References `PLANET_PAX` as EFT Integration Type — likely correct
  - 1 screenshot
- **Recommendation:** Low priority. Most recent provider doc.

### 30. MatrixScan / WMS Explanation — Marketing Content
- **File:** `content/en/docs/wms/explanation/matrixcount/index.md` (2023-11-22)
- **Issues found:**
  - Primarily marketing/explanation content about Scandit MatrixScan
  - No specific code references to verify
  - External link to scandit.com should be verified
- **Recommendation:** Low priority. Verify external links still work.

---

## Summary Table

| # | Area | File | Last Updated | Priority | Key Issue |
|---|------|------|-------------|----------|-----------|
| 1 | Providers | pepper/* (6 files) | 2023-07 | **CRITICAL** | Entire integration OBSOLETE in code |
| 2 | Providers | flexiiterm/setup | 2023-07 | **CRITICAL** | Entire integration OBSOLETE in code |
| 3 | Providers | mobilepay/setup | 2023-07 | **CRITICAL** | MobilePay V10 OBSOLETE, replaced by Vipps MobilePay |
| 4 | Fiscalization | bulgaria/setup | 2023-12 | **CRITICAL** | Wrong POS action codes (BG_FISCALPRINTER_MGT → BG_SIS_FP_MGT) |
| 5 | Troubleshooting | ss_profile.md | 2023-07 | **HIGH** | References "Major Tom", "FLEXI Outdoor Kiosk" — not in code |
| 6 | Troubleshooting | credit_memo.md | 2023-07 | **HIGH** | "Cash Sales Reverse" not found in code |
| 7 | Troubleshooting | eod.md | 2023-07 | **HIGH** | POS Unit navigation may be outdated |
| 8 | Fiscalization | france/setup | 2023-07 | **HIGH** | Complex setup with specific codeunit IDs to verify |
| 9 | Fiscalization | spain/setup | 2025-02 | **HIGH** | 9 screenshots need verification |
| 10 | Fiscalization | italy/setup | 2024-02 | **HIGH** | 9 screenshots, complex setup (action codes verified OK) |
| 11 | WMS | handling_codeunits | 2023-09 | **MEDIUM** | 37 codeunit IDs to verify |
| 12 | WMS | hardware | 2023-11 | **MEDIUM** | Outdated hardware models, "Galazy" typo |
| 13 | Power BI | wms/installation | 2023-11 | **MEDIUM** | "To Date: 31/12/2024" is past, BC v22 reference |
| 14 | Power BI | retail/install | 2023-11 | **MEDIUM** | BC version 22 reference outdated |
| 15 | Power BI | entertainment/install | 2023-11 | **MEDIUM** | "ENVIROMENTNAME" typo |
| 16 | Partner | artifact_feeds | 2023-11 | **MEDIUM** | 7 screenshots, DevOps URLs to verify |
| 17 | Partner | inventory_setup | 2023-10 | **MEDIUM** | 2 screenshots to verify |
| 18 | Fiscalization | croatia/setup | 2023-10 | **MEDIUM** | Old, 2 screenshots |
| 19 | Fiscalization | denmark/setup | 2023-12 | **MEDIUM** | May be incomplete |
| 20 | Fiscalization | slovenia/setup | 2023-11 | **MEDIUM** | Field names to verify |
| 21 | Fiscalization | sweden/setup | 2023-09 | **LOW** | Informational only, no setup steps |
| 22 | Troubleshooting | printer docs (4) | 2023-07 | **LOW** | Generic content, likely still valid |
| 23 | Troubleshooting | coupon.md | 2023-07 | **LOW** | Field names verified OK, 2 screenshots |
| 24 | Troubleshooting | initial_float.md | 2023-07 | **LOW** | POS Payment Bin verified in code |
| 25 | Troubleshooting | tax_free.md | 2023-07 | **LOW** | Tax Free Voucher verified in code |
| 26 | Shipping Labels | shipmondo/setup | 2023-10 | **LOW** | Code references verified OK |
| 27 | Providers | nets_baxi/setup | 2023-07 | **LOW** | Active integration, old doc |
| 28 | Providers | standalone_terminal/setup | 2023-07 | **LOW** | Active integration, basic setup |
| 29 | Providers | planet/setup | 2024-03 | **LOW** | Most recent, active integration |
| 30 | WMS | matrixcount | 2023-11 | **LOW** | Marketing content, verify links |

---

## Statistics

- **Total findings:** 30
- **CRITICAL:** 4 findings (Pepper, Flexiiterm, MobilePay V10, Bulgaria action codes)
- **HIGH:** 6 findings  
- **MEDIUM:** 10 findings
- **LOW:** 10 findings
- **Screenshot-heavy docs needing review:** Spain (9), Italy (9), Artifact Feeds (7), Power BI WMS (5), Bulgaria (5)
- **Oldest unmodified docs:** All troubleshooting docs from July 2023

## Active vs. Obsolete EFT Integrations

### Active (in code):
- Adyen
- External Terminal (Standalone)
- NETS BAXI
- NETS Cloud
- Planet PAX
- Verifone VIM
- Vipps MobilePay

### Obsolete (NOT SUPPORTED in code, but still documented):
- **Pepper** — fully documented with 6 articles
- **Flexiiterm** (NETS PSAM) — 1 setup article
- **MobilePay V10** — 1 setup article (replacement: Vipps MobilePay)
- MobilePay V6 — (not documented, older obsolete)
- Softpay — (in obsolete folder, not documented)

### Not yet documented:
- **Verifone VIM** — exists in active code, no docs found
- **Adyen** — major integration with many code files, limited dedicated docs

---

## Recommended Action Plan

### Immediate (Week 1):
1. Add deprecation banners to Pepper, Flexiiterm, and MobilePay V10 docs
2. Fix Bulgarian fiscalization action codes (BG_FISCALPRINTER_MGT → BG_SIS_FP_MGT, BG_FP_CASHIER_MGT → BG_SIS_FP_CASHIER)
3. Fix typos: "Galazy" → "Galaxy", "ENVIROMENTNAME" → "ENVIRONMENTNAME"

### Short-term (Weeks 2-4):
4. Review and update Self-Service Profile troubleshooting
5. Verify credit memo POS flow ("Cash Sales Reverse")
6. Update Power BI docs with current BC version references and date ranges
7. Review France fiscalization codeunit IDs and field names

### Medium-term (Months 2-3):
8. Retake screenshots for Spain (9), Italy (9), Bulgaria (5) fiscalization docs
9. Update Partner artifact feeds doc with current DevOps screenshots
10. Review all WMS codeunit references
11. Update hardware recommendations doc
12. Create documentation for Verifone VIM and expanded Adyen docs

### Ongoing:
13. Establish quarterly review cycle for all fiscalization docs
14. Add "last verified" dates to documentation frontmatter
