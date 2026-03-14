# Outdated Documentation Report: Hospitality & Entertainment

**Analysis Date:** 2026-03-14  
**Source Code Repo:** navipartner/npcore-partners (the actual repo name; `navipartner/npcore` is not accessible)  
**Documentation Repo:** navipartner/docs  

---

## Executive Summary

This report documents findings from cross-referencing the Hospitality (26 articles) and Entertainment (65 articles) documentation against the AL source code in the `navipartner/npcore-partners` repository. Multiple instances of outdated field references, missing new features, obsolete terminology (Magento), and stale screenshots were identified.

---

## HOSPITALITY FINDINGS

### 1. Restaurant Card Reference — Missing New Fields and Menu Setup Section
**File:** `content/en/docs/hospitality/reference/restaurant_card/index.md`  
**Priority:** HIGH  
**Last updated:** 2023-08-22 (content date), git: 2024-10-21 (rebranding only)

**Issues:**
- The docs list only 10 fields. The actual `NPR NPRE Restaurant` table and `NPR NPRE Restaurant Card` page now include:
  - **Menu Primary Color** — hex code for menu primary color
  - **Menu Secondary Color** — hex code for menu secondary color
  - **QR Card Payment Method** — POS payment method for QR code card payments in self-service
  - **Menu Logo Media Key** — logo for menus
  - A whole **Menu Setup** group on the Restaurant Card page
- The field **"Auto Send Kitchen Order"** in the docs is described as having Yes/No options but is now an **Enum** (`NPR NPRE Auto Send Kitch.Order`) with `No, Yes, Ask` values.
- **"Resend All On New Lines"** is also an Enum now (not a simple Boolean as described).
- **"Order ID Assign. Method"** is now an Enum (old Option field was removed with `ObsoleteState = Removed`, tag `2023-06-28`).
- **"Station Req. Handl. On Serving"** — old Option field removed, replaced by Enum `NPR NPRE Req.Handl.on Serving`.
- **"Order is Ready for Serving"** — now Enum `NPR NPRE Order Ready Serving` with values `All Requests` and `Any Request` (docs say "When All Requests Are Ready" which doesn't match enum naming).
- The docs don't mention the `Name 2` field on the Restaurant Card.

---

### 2. Restaurant Setup Reference — Missing Fields
**File:** `content/en/docs/hospitality/reference/setup/index.md`  
**Priority:** HIGH  
**Last updated:** 2023-08-22 (content date)

**Issues:**
- Missing the **"Restaurant View Layout"** field (Enum `NPR NPRE Restaur. Layout Type`).
- Missing **"Delayed Ord. Threshold 1 (min)"** and **"Delayed Ord. Threshold 2 (min)"** fields.
- Missing **"Notif. Resend Delay (min)"** field.
- Missing **"Select Table Behaviour"** field (options: "Run POS Action" / "Show Slide-in Menu").
- Missing **"Default Number of Guests"** field on restaurant setup (Enum with Zero, One, Min Party Size).
- Several field names use obsolete Option types that have been replaced by Enums. The old option fields were removed with tag `2023-06-28`. Docs still describe them as if they were options.
- The **"Kitchen Integration"** section description is vague and doesn't cover the actual fields in the code (e.g., `Serving Step Discovery Method`, `Auto-Send Kitchen Order` enum, `Re-send All on New Lines` enum).

---

### 3. Fast Food Setup Guide — 18 Screenshots Likely Outdated
**File:** `content/en/docs/hospitality/how-to/fast_food_setup/index.md`  
**Priority:** CRITICAL  
**Last updated:** 2024-08-07 (content date), git: 2024-10-21 (rebranding only)

**Issues:**
- **18 screenshots** of Business Central UI. The Restaurant Card page now has a **Menu Setup** group with new fields (`Menu Primary Color`, `Menu Secondary Color`, `QR Card Payment Method`) that didn't exist when screenshots were taken.
- Screenshot `fastfood_1.PNG` (Restaurant Card) is almost certainly outdated — new fields/groups have been added.
- Screenshot `fastfood_9.PNG` (POS Unit Card) may be outdated if the POS Restaurant Profile or POS View Profile UI changed.
- The guide references "NEW_WAITER_PAD" POS action parameters — these should be verified against current parameter definitions.
- **Kitchen Station Selection Setup** screenshots may reflect old UI if any fields changed since August 2024.
- The overall restaurant field enum changes (Option → Enum for multiple fields) may have changed dropdown appearances in the UI.

---

### 4. Seating List Reference — Missing New Fields
**File:** `content/en/docs/hospitality/reference/seating_list/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2023-08-22 (content date)

**Issues:**
- Missing **"Min Party Size"** field — new field on `NPR NPRE Seating` table.
- Missing **"Max Party Size"** field — new field on `NPR NPRE Seating` table.
- The **"Fixed Capacity"** field is spelled as "Fixed Capasity" in the code (typo in code, but caption is "Fixed Capasity") — docs say "Fixed Capacity" which may not match the actual UI.
- Missing **"Global Dimension 1 Code"** and **"Global Dimension 2 Code"** fields.
- Missing **"Current Waiter Pad Description"** field.

---

### 5. Service Flow Profile Reference — Minor Issues
**File:** `content/en/docs/hospitality/reference/service_flow/index.md`  
**Priority:** LOW  
**Last updated:** 2023-08-22 (content date)

**Issues:**
- Field descriptions are mostly accurate and match the code.
- The screenshot `Rest_Service_Flow_Profile.png` may be outdated since the form was created before the Enum migration (2023-06-28).
- The `Close Waiter Pad On` and `Clear Seating On` fields are now Enums (not Options) — the behavior may have changed subtly.
- New enum values (e.g., `Pre-Receipt if Served`, `Payment if Served` for `Close Waiter Pad On`) are mentioned in code but not clearly documented.

---

### 6. Restaurant Notification Setup — Missing Field
**File:** `content/en/docs/hospitality/reference/notification_setup/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2024-08-08

**Issues:**
- Missing the **"Notification Expires in (sec.)"** field that exists in the `NPR NPRE Notification Setup` table.
- The **"Sms Notification"** field exists (Boolean) but is not documented as a separate toggle — docs only mention templates.
- The `E-Mail Notif. Template` field now references `NPR E-mail Template Header` table (not generic) which may affect the setup procedure.

---

### 7. POS Actions Reference — Potentially Missing Actions
**File:** `content/en/docs/hospitality/reference/pos_actions/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2023-08-22

**Issues:**
- The documented action **"RUNPAGE"** to open Kitchen Request List — needs verification against current code.
- Missing **"RV_K/REQUESTS"** action which appears in the configuration_pos reference doc but not in the POS actions reference.
- The actions list may be incomplete — the code has evolved since 2023.

---

### 8. Typical POS Configuration for Restaurant
**File:** `content/en/docs/hospitality/reference/configuration_pos/index.md`  
**Priority:** LOW  
**Last updated:** 2025-09-17 (recently updated)

**Issues:**
- This file was updated relatively recently (September 2025), so it is likely more current.
- Contains a **"RV_K/REQUESTS"** action reference which is not in the POS actions reference doc — inconsistency.
- Screenshot files should be verified against current UI.

---

### 9. KDS Setup Guide
**File:** `content/en/docs/hospitality/how-to/kds_setup/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2024-04-11

**Issues:**
- Step 2 says "Make sure KDS is activated" but doesn't mention that `KDS Active` is now an Option field on the Restaurant table (Default/No/Yes) vs a Boolean on the setup.
- The **"Serving Step Discovery Method"** dropdown is mentioned correctly.
- References to **"Rest. Routing Profiles"** administrative section — field name in code is `NPR NPRE Serv.Step Discovery` enum.
- Step 9 references **"NPR Properties"** panel on Item Card — the field name there is the routing profile field. Needs verification that the panel name hasn't changed.
- Screenshots (2 images) from April 2024 may be outdated due to enum changes.

---

### 10. Explanation Docs — General Staleness
**Files:** Multiple files in `content/en/docs/hospitality/explanation/`  
**Priority:** LOW-MEDIUM  
**Last updated:** Most from 2023-08-22

**Issues:**
- `seating_grouping/index.md` — Screenshots from 2023, may show old Option-based dropdowns.
- `routing_profiles/index.md` — References "Kitchen Station Setup" which may now be named differently.
- `restaurant_flow/index.md` — General workflow descriptions appear correct but screenshots from 2023 may be stale.
- `pos_unit_setup/index.md` — The **"POS Restaurant Profile"** name is confirmed in code, but the UI screenshot from 2023 likely shows old layout.

---

## ENTERTAINMENT FINDINGS

### 11. Ticket Setup Wizard — Magento Reference (Outdated Terminology)
**File:** `content/en/docs/entertainment/ticket/how-to/ticket_setup_wizard/index.md`  
**Priority:** HIGH  
**Last updated:** 2024-02-12 (content date, from frontmatter)

**Issues:**
- **Step 5** contains: *"This description will also be the name on the web shop. However, you can change this in the Item Card under the **Magento** tab."* — **Magento is outdated terminology**. NaviPartner has migrated to Shopify integration. The code shows `SpfyInitItemCatMFVals.Report.al` and other Shopify-related files.
- The wizard procedure itself appears consistent with the `NPR TM Ticket Wizard` page in the code.
- Missing mention of the **"Ticket Type Template Code"** field that exists in the advanced section of the wizard.
- Missing mention of the **"Admission Template Code"** field.

---

### 12. DIY Printed Tickets — Magento Reference
**File:** `content/en/docs/entertainment/ticket/how-to/diy_printed_ticket/index.md`  
**Priority:** HIGH  
**Last updated:** 2023-07-13

**Issues:**
- Step 3 states: *"During the creation of the ticket (during a web shop order) Magento will recognize the ticket type..."* — **Magento terminology is outdated** and should reference Shopify or be made generic ("web shop integration").
- The guide references **"NP Designer"** which is the current name (confirmed in code), but the file identifier still says `np_designer` while the title uses "NP Designer" — this is consistent.

---

### 13. Ticket Types Reference — Missing Fields and Outdated Codeunit Reference
**File:** `content/en/docs/entertainment/ticket/reference/ticket_types/index.md`  
**Priority:** HIGH  
**Last updated:** 2023-07-13

**Issues:**
- Missing **"Category"** field (Code[20], related to `NPR TM Category`).
- Missing **"Related Ticket Type"** field.
- Missing **"Coupon Profile Code"** field (`CouponProfileCode`).
- Missing **"Defer Revenue"** Boolean field.
- Missing **"Defer Revenue Profile Code"** field (`DeferRevenueProfileCode`).
- The **"Ticket Activation Method"** field is now an Enum (`NPR TM ActivationMethod_Type`) with values `SCAN, POS_DEFAULT, POS_ALL, NA`. Docs only mention "Scan" and "POS" options — missing `POS (All Admissions)` and `NA`.
- The **"Ticket Layout Code"** field is documented but the internal code name is `DIY Print Layout Code` — this may cause confusion.
- The **Print Object ID** description mentions codeunit **6014571** which is confirmed to still exist (`NPR TM Report - Ticket`).

---

### 14. Ticket BOM Reference — Missing Fields
**File:** `content/en/docs/entertainment/ticket/reference/ticket_bom_ref/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2023-07-13

**Issues:**
- The table is now named `NPR TM Ticket Admission BOM` in code (not just "Ticket BOM").
- Missing **"DeferRevenue"** field (Boolean for per-admission deferral).
- The **"Admission Method"** field options described as "On Scan, On Sale, Always, Per Unit" — code needs verification that `Per Unit` still exists.
- The **"Admission Inclusion"** concept (Required, Optional and Not Selected, Optional and Selected) referenced in the dynamic ticket doc — may need to be reflected in the BOM reference.

---

### 15. Ticket Designer (NP Designer) — Recently Updated, Minor Issues
**File:** `content/en/docs/entertainment/ticket/how-to/ticket_designer/index.md`  
**Priority:** LOW  
**Last updated:** Recently (multiple commits for NP Designer upgrade)

**Issues:**
- This doc was recently rewritten for the NP Designer app upgrade and appears relatively current.
- 13 images — these are likely current since the doc was recently updated.
- The **"NPDesigner Setup Card"** section mentions `Public Ticket URL` and `Public Order URL` being prepopulated — should be verified against current code.
- The **Ticket Bill-of-Material** navigation instructions should be verified.

---

### 16. Membership Auto-Renewal — Magento References
**File:** `content/en/docs/entertainment/membership/how-to/autorenewal/index.md`  
**Priority:** HIGH  
**Last updated:** 2023-07-12

**Issues:**
- Multiple **Magento references** that are outdated:
  - Description: "It is possible to perform auto-renewal both from Business Central, and from **Magento**."
  - **"Yes (External)"** option described as "the membership is automatically renewed in **Magento**."
- Should reference Shopify or use generic "web shop" terminology.
- The three auto-renewal models (Invoice, Recurring Payment, Customer Balance) match the code's `Auto-Renew Model` Option field.
- The code now has additional fields not documented:
  - **"Credit Limit Check"** (None, Balance Amount, Overdue Amount)
  - **"Credit Limit (LCY)"**
  - **"Overdue Credit Limit (LCY)"**
  - **"Recurring Payment Code"**

---

### 17. Membership Card Reference — Magento Reference
**File:** `content/en/docs/entertainment/membership/reference/membership_card/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2024-09-11

**Issues:**
- The **"Document No."** field description states: *"This field is populated if the membership was created from **Magento Webadmin**."* — outdated Magento reference.
- Should reference the current web integration platform (Shopify) or use generic language.

---

### 18. Membership Setup Reference — Missing Fields
**File:** `content/en/docs/entertainment/membership/reference/membership_setup/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2024-09-26

**Issues:**
- Missing the following fields from the Membership Setup table:
  - **"Blocked"** and **"Blocked At"** fields
  - **"Perpetual"** Boolean field
  - **"Loyalty Card"** (Yes/No option)
  - **"Loyalty Code"** field (in CRM & Loyalty FastTab) — only mentioned in loyalty setup docs, not in reference
  - **"Allow Membership Delete"** Boolean
  - **"Confirm Member On Card Scan"** Boolean
  - **"Validate Age Against"** field with 9 options for age validation
  - **"Card Number Prefix"**, **"Card Number Length"**, **"Card Number Validation"**, **"Card Number Pattern"**, **"Card Number No. Series"**, **"Card Number Valid Until"** — detailed card numbering fields not documented
  - **"Membership Customer No."** field
  - **"Contact Config. Template Code"** field
  - **"Web Service Print Action"** and **"POS Print Action"** fields
  - **"Create Renewal Success Notif"**, **"Create Renewal Failure Notif"**, **"Create AutoRenewal Enabl Notif"**, **"Create AutoRenewal Disbl Notif"** — new notification fields
  - **"Defer Cust. Update Alterations"** — new deferral field
  - **"HeyLoyalty Name"** — removed (ObsoleteState = Removed, tag 2023-06-28)
  - **"Ticket Item Type"** option (Item vs Reference)
- The **Card Expire Date Calculation** field now has three options: `Date Formula, Synchronized, Not Applicable` — docs only mention it as a formula.

---

### 19. Member Community Reference — Missing Fields
**File:** `content/en/docs/entertainment/membership/reference/member_community_ref/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2023-07-12

**Issues:**
- Missing **"External Member No. Series"** field.
- Missing **"Customer No. Series"** field.
- Missing **"Member Default Language Code"** field (`MemberDefaultLanguageCode`).
- Missing **"Create Renewal Success Notif"** Boolean.
- Missing **"Create Renewal Failure Notif"** Boolean.
- Missing **"Create AutoRenewal Enabl Notif"** Boolean.
- Missing **"Create AutoRenewal Disbl Notif"** Boolean.
- The **"Create Renewal Notification"** field caption in code is "Create For Renewal Notifications" — slight naming discrepancy.
- The **"Foreign Membership"** field is documented as a configurable field but in code it's a **FlowField** (calculated from `NPR MM Foreign Members. Setup` table) — docs should clarify it's auto-calculated.
- The **"Create Member UI Violation"** field now has a 4th option: **"Merge"** (OptionCaption = 'Error,Confirm,Reuse,Merge') — docs only list 3 options.

---

### 20. Membership Web Services — Potentially Stale Service List
**File:** `content/en/docs/entertainment/membership/reference/membership_webservices_ref/index.md`  
**Priority:** MEDIUM  
**Last updated:** 2023-07-12

**Issues:**
- Codeunit Object ID 6060128 is confirmed correct in the code.
- The web service list should be verified against current procedures in the `MMMemberWebService` codeunit as new services may have been added.
- The **"Service Name"** `member_services` should be verified.

---

### 21. Membership How-To: Web Services Setup — Correct Object ID
**File:** `content/en/docs/entertainment/membership/how-to/membership_setup/index.md`  
**Priority:** LOW  
**Last updated:** 2023-07-12

**Issues:**
- The Object ID **6060128** and service name **"member_services"** are confirmed correct.
- The file title says "Set up Membership module web services" but the description says "set up the ticket web services" — copy-paste error.

---

### 22. Loyalty Reports — NP Retail Branding
**File:** `content/en/docs/entertainment/loyalty/explanation/navigation_reports/index.md`  
**Priority:** LOW  
**Last updated:** 2023-07-13

**Issues:**
- States *"There are three reports created in **NP Retail** for tracking points"* — product branding may have changed.
- Screenshots of the three reports from 2023 may be outdated.

---

### 23. Membership Intro — NP Retail Entertainment Reference
**File:** `content/en/docs/entertainment/membership/intro.md`  
**Priority:** LOW  

**Issues:**
- States: *"You can make the Membership module pages by choosing the **NP Retail Entertainment** role center upon entering Business Central."* — Role center name should be verified against current code. The code has `EntertainmentRC.Page.al` and `RetailRestaurantRC.Page.al`.

---

### 24. Ticket Deferral — Relatively New, Minor Issues
**File:** `content/en/docs/entertainment/ticket/how-to/ticket_deferral/index.md`  
**Priority:** LOW  
**Last updated:** 2025-01-17

**Issues:**
- This is a relatively new doc and appears current.
- The **"Ticket Defer Revenue Profile"** and its fields match code.
- The **"Achieved Revenue (Ticketing) Account"** field in General Posting Setup should be verified.

---

### 25. Ticket to Coupon Feature
**File:** `content/en/docs/entertainment/ticket/how-to/ticket_to_coupon/index.md`  
**Priority:** LOW  
**Last updated:** 2024-12-11

**Issues:**
- References POS action **"TM_TICKETMGMT_3"** — should be verified in current code.
- The **Ticket Coupon Profile** references match the code's `CouponProfileCode` field on Ticket Type.
- Relatively recent doc, likely current.

---

## SCREENSHOT ANALYSIS

### Highest Risk (Most Screenshots + Oldest):

| Document | Screenshots | Content Date | Risk |
|----------|-----------|-------------|------|
| Fast Food Setup | 18 | 2024-08-07 | **CRITICAL** — Restaurant Card page has new Menu Setup group, multiple enum changes |
| Ticket Designer | 13 | Recently updated | LOW — recently rewritten |
| KDS Setup | 2 + video | 2024-04-11 | MEDIUM — enum changes may affect UI |
| Grouping | 4 | 2023-08-22 | MEDIUM — old screenshots |
| Kitchen | 2 | 2023-08-22 | MEDIUM — old screenshots |
| Seating Layout | 2 | 2023-08-22 | MEDIUM — old screenshots |
| Restaurant Flow | 2 | 2023-08-23 | MEDIUM — old screenshots |
| POS Unit Setup | 2 | 2023-08-22 | MEDIUM — old screenshots |
| Routing Profiles | 4 | 2024-07-02 | LOW-MEDIUM |
| Restaurant Seating Plan | 1 | 2023-08-22 | LOW |
| POS View | 1 | 2023-08-22 | LOW |
| Typical POS Config | 2 | 2025-09-17 | LOW — recent |

---

## PRIORITY SUMMARY

### CRITICAL
1. **Fast Food Setup Guide** (`fast_food_setup/index.md`) — 18 screenshots, Restaurant Card UI changes, enum field changes

### HIGH
2. **Restaurant Card Reference** (`restaurant_card/index.md`) — Missing Menu Setup fields, enum changes
3. **Restaurant Setup Reference** (`setup/index.md`) — Missing 6+ fields including layout, delayed thresholds
4. **Ticket Setup Wizard** (`ticket_setup_wizard/index.md`) — Magento reference
5. **DIY Printed Tickets** (`diy_printed_ticket/index.md`) — Magento reference
6. **Ticket Types Reference** (`ticket_types/index.md`) — Missing 5+ fields
7. **Membership Auto-Renewal** (`autorenewal/index.md`) — Multiple Magento references

### MEDIUM
8. **Seating List Reference** (`seating_list/index.md`) — Missing Min/Max Party Size fields
9. **Restaurant Notification Setup** (`notification_setup/index.md`) — Missing expiry field
10. **POS Actions Reference** (`pos_actions/index.md`) — Potentially incomplete
11. **KDS Setup Guide** (`kds_setup/index.md`) — Minor field naming issues, screenshots
12. **Ticket BOM Reference** (`ticket_bom_ref/index.md`) — Missing DeferRevenue field, table name change
13. **Membership Setup Reference** (`membership_setup/index.md`) — Missing 15+ fields
14. **Member Community Reference** (`member_community_ref/index.md`) — Missing 7+ fields, UI Violation option
15. **Membership Card Reference** (`membership_card/index.md`) — Magento reference
16. **Membership Web Services** (`membership_webservices_ref/index.md`) — May be stale

### LOW
17. **Service Flow Profile** (`service_flow/index.md`) — Minor enum issues
18. **Ticket Designer** (`ticket_designer/index.md`) — Recently updated
19. **Typical POS Config** (`configuration_pos/index.md`) — Recently updated
20. **Loyalty Reports** (`navigation_reports/index.md`) — NP Retail branding
21. **Membership Intro** (`intro.md`) — Role center name
22. **Ticket Deferral** (`ticket_deferral/index.md`) — Relatively new
23. **Ticket to Coupon** (`ticket_to_coupon/index.md`) — Relatively recent
24. **Hospitality Explanation docs** (multiple) — Old screenshots from 2023

---

## KEY TERMINOLOGY ISSUES

| Outdated Term | Current/Correct Term | Files Affected |
|--------------|---------------------|----------------|
| Magento | Shopify (or generic "web shop") | ticket_setup_wizard, diy_printed_ticket, autorenewal, membership_card |
| NP Retail (branding) | Verify current branding | navigation_reports, membership intro |
| Option fields | Enum fields (since 2023-06-28) | restaurant_card, restaurant_setup, service_flow |
| Ticket Layout Code | DIY Print Layout Code (internal) | ticket_types reference |

---

## RECOMMENDATIONS

1. **Immediate action (Critical):** Update the Fast Food Setup guide screenshots and field references to reflect the current Restaurant Card page (Menu Setup group, enum dropdowns).

2. **High priority:** Remove all Magento references across 4 entertainment docs and replace with current web shop terminology.

3. **High priority:** Update Restaurant Card and Restaurant Setup reference docs to include all missing fields, especially the Menu Setup section and delayed order thresholds.

4. **High priority:** Update Ticket Types reference to add Category, Coupon Profile Code, Defer Revenue fields, and correct the Activation Method options.

5. **Medium priority:** Update Seating List, Notification Setup, Membership Setup, and Member Community references with missing fields.

6. **Low priority:** Refresh old screenshots (2023) in hospitality explanation docs during next scheduled update cycle.
