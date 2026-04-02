# DOC-279 Documentation Accuracy Audit - Priority Overview

## Goal

This document summarizes the highest-priority documentation changes identified in the DOC-279 accuracy audit.

The goal is not to capture every issue from the full audit, but to highlight the changes with the highest user impact and the highest risk of causing configuration mistakes, support load, or confusion about current product behavior.

---

## Summary

The audit shows a recurring pattern across the docs surface:

- setup guides drift from current product behavior over time
- page, field, and action names are outdated in several high-impact areas
- deprecated or moved functionality is still documented as current
- screenshot-heavy guides are especially vulnerable to becoming stale
- some pages contain broken links, malformed markup, or missing assets

The most important next step is to focus on documentation that can mislead users during setup or make them configure the wrong thing.

---

## Top Priority Change Areas

### 1. Fiscalization documentation needs immediate accuracy corrections

Fiscalization is the highest-risk area because incorrect setup instructions can lead directly to incorrect configuration.

Key problems:

- outdated handler names
- obsolete action names
- field naming drift
- instructions that do not reflect current validation or enum-driven setup

Highest-priority pages:

- Belgium setup
- Bulgaria setup
- Italy setup
- Spain setup

Recommended changes:

- update all handler/action references to current names from code
- correct field captions and setup terminology
- remove or rewrite obsolete workflow descriptions
- verify all setup steps against current product behavior

Why this matters:

- these pages are operational setup guides
- naming drift here is more serious than in informational pages

---

### 2. Retail and NP Pay docs contain stale user-facing setup instructions

These pages are highly visible and directly used during day-to-day setup and troubleshooting.

Key problem areas:

- tax free
- vouchers
- SS profile guidance
- printing/setup naming
- Pay by Link field and action labels

Representative issues:

- outdated field and action names
- legacy terminology that no longer matches the UI
- incorrect setup location or page names
- workflow descriptions that no longer match actual behavior

Recommended changes:

- align all page, field, and action names with current product terminology
- rewrite instructions that point users to the wrong setup entity
- remove obsolete references such as legacy printing guidance where applicable

Why this matters:

- these docs are user-facing and frequently used
- stale terminology creates avoidable support and onboarding friction

---

### 3. Hospitality docs need terminology and flow cleanup

Hospitality documentation appears to have both terminology drift and internal inconsistency.

Key problem areas:

- KDS setup
- fast-food setup
- restaurant profile / routing profile naming
- contradictory explanations of operational flow

Recommended changes:

- standardize terminology across hospitality pages
- align setup steps with current object/page naming
- resolve contradictory explanations between related pages
- make kitchen/KDS flow descriptions consistent and current

Why this matters:

- these guides describe operational setup and process flow
- inconsistent terminology makes the area harder to implement correctly

---

### 4. WMS documentation must clarify product boundary with NP Warehouse

This is one of the most important structural issues in the audit.

The current problem is not only naming drift. Some WMS/Capture Service documentation appears to describe functionality as if it belongs to the current npcore scope, while the implementation has moved to the NP Warehouse app.

Key problems:

- active-looking docs for functionality not present as live objects in npcore
- references built from legacy or obsolete snapshots
- broken or misleading references in WMS object and setup pages

Recommended changes:

- add explicit notes where functionality belongs to NP Warehouse rather than npcore
- review WMS reference pages for object accuracy
- rebuild or retire legacy object-name/reference content where needed
- avoid presenting historical implementation details as current setup guidance

Why this matters:

- this causes product-boundary confusion
- readers may try to set up functionality in the wrong extension context

---

### 5. Deprecated or historical integrations must be clearly labeled

Several documentation areas present unsupported, obsolete, or historical functionality as if it were current.

Highest-risk examples:

- OIO UBL / e-invoicing
- selected provider integrations
- older integration variants now marked obsolete in code

Recommended changes:

- add clear deprecation warnings
- mark historical guides as legacy where appropriate
- distinguish supported integrations from no-longer-supported ones
- avoid removing context unless needed, but prevent obsolete guides from being interpreted as current recommendations

Why this matters:

- unsupported integrations create user confusion and avoidable implementation risk
- deprecation status should be explicit, not inferred

---

## Secondary but Important Cleanup Work

These changes are important, but should follow the high-confidence accuracy fixes above.

### Screenshot-heavy guide refresh

Old screenshot-led guides drift faster than text-led guidance.

Recommended approach:

- reduce screenshots where exact text instructions are sufficient
- recapture screenshots only for pages where visuals are necessary
- prioritize Retail, Hospitality, Shopify, NP Pay, Fiscalization, and Shipmondo

### Site hygiene fixes

Several pages also need quality cleanup:

- broken links
- malformed markdown or HTML
- missing image assets
- broken numbering
- self-referencing "See also" links

### External-fact validation

Some pages include claims that should be refreshed separately from code-backed documentation fixes:

- Power BI product/limit statements
- Shopify admin wording
- carrier/product examples in shipping integrations

These should be validated against external vendor documentation rather than only npcore code.

---

## Change Types

| Change type | Description |
|---|---|
| Accuracy fix | Correct page, field, action, handler, or setup names |
| Deprecation note | Clearly label obsolete or unsupported functionality |
| Ownership note | Explain when functionality belongs to another app or product boundary |
| Screenshot refresh | Replace stale screenshots or reduce screenshot dependency |
| Site hygiene fix | Repair links, assets, markup, numbering, and formatting issues |

---

## Recommended Execution Order

1. Fix high-confidence naming and setup mismatches in Fiscalization
2. Fix high-impact user-facing inaccuracies in Retail and NP Pay
3. Align Hospitality terminology and flow descriptions
4. Add WMS / NP Warehouse boundary notes
5. Add deprecation warnings for OIO UBL and historical provider integrations
6. Run a focused site hygiene cleanup
7. Refresh screenshot-heavy guides
8. Validate external-product facts separately

---

## Suggested Acceptance Criteria

This cleanup should be considered successful when:

- high-priority pages use current page, field, and action names
- deprecated or historical functionality is clearly labeled
- moved functionality is documented with the correct product boundary
- screenshot-heavy setup guides are either refreshed or reduced
- broken links, malformed markup, and missing assets are resolved in the touched areas
- no critical setup page still instructs users using obsolete terminology

---

## Out of Scope for This Overview

This overview intentionally does not include:

- every individual page issue from the full audit
- low-impact copy edits and typos unless they affect understanding
- complete rewrite proposals for all stale pages
- externally sourced product fact validation in detail

Those items should be handled in follow-up cleanup work after the top-priority corrections are complete.

---

## Recommended Next Step

Use this overview as the basis for a single documentation cleanup effort focused on the highest-risk areas first:

- Fiscalization
- Retail / NP Pay
- Hospitality
- WMS boundary clarification
- Deprecated integrations

This will reduce the most serious documentation risks before expanding into broader editorial cleanup.
