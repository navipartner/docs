# DOC-284 Detailed Documentation Action Pack

Source issue: [DOC-284](https://linear.app/navipartner/issue/DOC-284/weekly-docs-audit-mar-23-29-missing-docs-for-emergency-mpos-windows)
Date: 2026-03-30
Status: Draft for review (no product docs changed yet)

## Purpose

Translate the DOC-284 audit into a concrete, file-by-file implementation plan for the current `navipartner/docs` repository, including:

- exact target files to update or create
- proposed section structure and draft copy blocks
- content dependencies and open questions
- acceptance checks for each change

This file is meant for approval before any documentation content is edited.

---

## Scope from DOC-284

1. Emergency mPOS Windows support not reflected in docs
2. Membership notifications: "Days Before" behavior + removed "Send notification on sale"
3. E-commerce memberships as sales-document subtype (missing docs)
4. Shopify membership storefront age-verification behavior (missing docs)
5. Entria checkout voucher usage (missing docs)
6. Self-service food kiosk/operator web-app flow changes (missing docs)

---

## Repository mapping summary

### Existing files confirmed in repo

- `content/en/docs/np_pay/explanation/emergency_mpos/index.md`
- `content/en/docs/np_pay/how-to/emergency_pos/index.md`
- `content/en/docs/np_pay/how-to/emergency_sale/index.md`
- `content/en/docs/np_pay/reference/emergency_pos/index.md`
- `content/en/docs/entertainment/membership/reference/membership_setup/index.md`
- `content/en/docs/entertainment/membership/reference/membership_sales_setup/index.md`
- `content/en/docs/hospitality/how-to/fast_food_setup/index.md`
- `content/en/docs/ecommerce/shopify/how-to/setup/index.md`
- `content/en/docs/retail/gettingstarted/release_notes.md`

### Proposed new files

- `content/en/docs/ecommerce/shopify/how-to/ecommerce_membership_sales/index.md`
- `content/en/docs/ecommerce/shopify/how-to/membership_age_verification/index.md`
- `content/en/docs/ecommerce/entria/_index.md`
- `content/en/docs/ecommerce/entria/how-to/_index.md`
- `content/en/docs/ecommerce/entria/how-to/voucher_checkout/index.md`
- `content/en/docs/hospitality/how-to/self_service_kiosk_operator_flow/index.md`

---

## Workstream 1: Emergency mPOS Windows support

### Files to update

- `content/en/docs/np_pay/explanation/emergency_mpos/index.md`
- `content/en/docs/np_pay/how-to/emergency_pos/index.md`
- `content/en/docs/np_pay/how-to/emergency_sale/index.md`
- `content/en/docs/np_pay/reference/emergency_pos/index.md`

### Detailed actions

1. In overview page, replace "Android / NP Pay only" framing with platform matrix:
   - Android device
   - NP Pay terminal (Android-based)
   - Windows app
2. Add "Windows limitations and behavior differences" subsection:
   - Tap to Pay unavailable on Windows
   - BinaryEye/camera scanner not used on Windows
   - "Scan input" not shown on Windows
   - edit/delete actions differ from mobile swipe gestures
3. In setup page, split prerequisites by platform:
   - Android/NP Pay setup path
   - Windows setup path (installer source and onboarding)
4. In "make a sale" page, update line-edit/remove instructions with platform-specific behavior (swipe on mobile vs explicit action buttons on Windows).
5. In reference page tables, annotate each setup/action item with applicability (`Android`, `NP Pay`, `Windows`, `All`).

### Draft section to add (example)

```md
## Windows support

Emergency mPOS is also available as a Windows application.

### Windows-specific behavior

- **Tap to Pay** is not available on Windows.
- **Camera/BinaryEye scanning** is not used on Windows.
- **Scan input** is hidden in the Windows UI.
- **Line edit/delete** actions are exposed as buttons (not swipe gestures).
```

### Acceptance checks

- Emergency mPOS pages no longer imply Android-only setup.
- Every mentioned behavior difference has platform context.
- No mobile-only instruction remains unqualified where Windows differs.

---

## Workstream 2: Membership notifications (Days Before + removed option)

### File to update

- `content/en/docs/entertainment/membership/reference/membership_setup/index.md`

### Optional supplemental file

- `content/en/docs/retail/gettingstarted/release_notes.md` (short migration note entry)

### Detailed actions

1. Extend "CRM & Loyalty" field table with a new row for **Days Before**.
2. Clarify behavioral semantics:
   - notification can be sent before validity/activation point
   - impact on non-activated memberships
3. Add migration note:
   - **Send notification on sale** has been removed
   - where users should now configure equivalent behavior
4. If release note is added, include one short row under 2026 with a concise "breaking behavior" note.

### Draft table rows (example)

```md
| **Days Before** | Specifies how many days before the membership validity/activation point a notification is sent. A value of `0` means on the same date. |
| **Send notification on sale** | Removed. Notification timing is now controlled through **Days Before** and notification setup behavior. |
```

### Acceptance checks

- "Days Before" meaning is explicitly documented.
- Removed field is called out to prevent setup confusion for existing users.
- Non-activated membership behavior is stated in plain language.

---

## Workstream 3: E-commerce memberships as dedicated sales-document subtype

### Files to update

- `content/en/docs/entertainment/membership/reference/membership_sales_setup/index.md`

### File to create

- `content/en/docs/ecommerce/shopify/how-to/ecommerce_membership_sales/index.md`

### Detailed actions

1. In `membership_sales_setup`, add subsection:
   - "Membership sales from e-commerce"
   - mapping between online order lines and membership creation flow
2. Document BC-side prerequisites:
   - required sales setup lines
   - required item/type mapping
   - data requirements (including age/birthdate when relevant)
3. New Shopify how-to article should cover:
   - end-to-end flow: incoming order -> sales doc -> membership processing
   - validation/error cases (missing setup, missing required person data)
   - troubleshooting checklist for failed import/creation
4. Link both pages to each other.

### Proposed new article outline

```md
## Set up e-commerce membership sales processing
## Required setup in Business Central
## Data requirements from e-commerce orders
## Order import and membership creation flow
## Troubleshooting
```

### Acceptance checks

- There is a standalone article for online membership sales flow.
- Membership sales setup page references e-commerce-specific behavior.
- Required data constraints are documented.

---

## Workstream 4: Shopify storefront age verification for memberships

### Files to update

- `content/en/docs/entertainment/membership/reference/membership_setup/index.md`
- `content/en/docs/entertainment/membership/reference/membership_sales_setup/index.md`

### File to create

- `content/en/docs/ecommerce/shopify/how-to/membership_age_verification/index.md`

### Detailed actions

1. In membership setup/reference pages, add explicit note:
   - BC age-verification settings propagate into storefront behavior.
2. New Shopify how-to page:
   - what customer sees in storefront membership purchase/signup
   - birth date requirement and age-window enforcement
   - admin prerequisites for metadata/form fields
   - expected validation errors and how to resolve them
3. Add cross-links from Shopify setup article:
   - `content/en/docs/ecommerce/shopify/how-to/setup/index.md` -> new age-verification article.

### Draft warning block (example)

```md
{{< alert icon="⚠️" text="If age verification is enabled in Membership Setup, storefront membership flows must collect a valid birth date. Missing or out-of-range birth dates will block completion."/>}}
```

### Acceptance checks

- Storefront behavior is documented, not only BC field definitions.
- Admin prerequisites are explicit.
- Validation outcomes are listed.

---

## Workstream 5: Entria checkout voucher usage docs

### Files to create

- `content/en/docs/ecommerce/entria/_index.md`
- `content/en/docs/ecommerce/entria/how-to/_index.md`
- `content/en/docs/ecommerce/entria/how-to/voucher_checkout/index.md`

### Optional link updates

- `content/en/docs/ecommerce/_index.md` (if section link curation is needed)

### Detailed actions

1. Add new `ecommerce/entria` section structure.
2. Create "Use vouchers in Entria checkout" how-to containing:
   - prerequisites (voucher setup, integration enablement, API key/backend requirements)
   - checkout flow with voucher application
   - payment split behavior (voucher + remaining payment method)
   - failure states (invalid voucher, exhausted voucher, currency mismatch)
3. Add operational notes:
   - BC API key handling expectations (where applicable)
   - support/logging pointers for failed voucher collection requests.

### Proposed article skeleton

```md
## Prerequisites
## Configure voucher support for Entria checkout
## Apply voucher during checkout
## Payment outcome scenarios
## Troubleshooting
```

### Acceptance checks

- Entria has a discoverable docs section.
- Voucher checkout flow and prerequisites are explicit.
- Error/edge scenarios are documented.

---

## Workstream 6: Self-service food kiosk/operator flow updates

### File to update

- `content/en/docs/hospitality/how-to/fast_food_setup/index.md` (add linking paragraph only)

### File to create

- `content/en/docs/hospitality/how-to/self_service_kiosk_operator_flow/index.md`

### Detailed actions

1. Create dedicated kiosk/operator flow article (instead of overloading fast-food setup).
2. Cover behavior updates called out in DOC-284:
   - dining-choice auto-skip when fewer than 2 options
   - behavior when no dining options are configured
   - languages sourced from tenant configuration
   - operator controls: Refresh Kiosk, Exit to App, Out of Order
   - refresh behavior and active sale/session handling
   - membership-check loading spinner behavior
3. Add short link block from `fast_food_setup/index.md`:
   - "For kiosk/operator web-app flow, see ..."

### Proposed article outline

```md
## Kiosk flow prerequisites
## Dining option behavior
## Language configuration behavior
## Operator actions
## Session and refresh behavior
## Customer-facing loading and status states
## Troubleshooting
```

### Acceptance checks

- Kiosk web-app behavior is covered in one dedicated, end-to-end article.
- Operator controls are documented with expected outcomes.
- Fast-food setup page points to the new article.

---

## Cross-cutting editorial actions

1. Ensure consistent terminology:
   - "Emergency mPOS" vs "Emergency POS"
   - "membership validity/activation date"
   - "storefront" vs "Shopify app"
2. Add "applies to" qualifiers where platform/flow differs.
3. Validate all new internal links (`{{< ref ... >}}`) build correctly.
4. Prefer additive updates over rewriting existing text unless conflicting.

---

## Open questions to resolve before implementation

1. Windows Emergency mPOS distribution channel:
   - exact download/install source to publish
2. Windows feature matrix:
   - any additional limitations beyond Tap to Pay/scanning/UI gestures
3. Membership notification semantics:
   - exact trigger point for non-activated memberships with Days Before
4. E-commerce membership subtype:
   - exact setup pages/fields that must be present in screenshots
5. Shopify age verification:
   - exact storefront field keys / metadata naming conventions
6. Entria:
   - final public product naming and supported checkout permutations
7. Kiosk operator flow:
   - final UX wording for button labels and out-of-order states

---

## Implementation sequence recommendation

1. Emergency mPOS Windows updates (highest user-impact mismatch in existing docs)
2. Membership setup notification changes
3. Shopify membership online behavior (age verification + ecommerce membership sales)
4. Kiosk operator flow article
5. Entria voucher docs section

---

## QA checklist (for the future implementation PR)

- [ ] All changed pages pass markdown/hugo checks used in this repo
- [ ] All `ref` links resolve
- [ ] New pages appear under intended section navigation
- [ ] Existing screenshots still match updated UI text
- [ ] Breaking/removal notes are visible to existing customers
- [ ] At least one reviewer validates each new flow against product owner notes

---

## Ready-to-paste stubs for new files

The following stubs are intentionally complete enough to be copied directly into the target files when implementation starts.

### 1) `content/en/docs/ecommerce/shopify/how-to/ecommerce_membership_sales/index.md`

```md
---
title: "Set up e-commerce membership sales processing"
description: "Configure and validate membership sales imported from Shopify sales documents."
lead: ""
date: 2026-03-30T00:00:00+00:00
lastmod: 2026-03-30T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ecommerce_membership_sales-TODO"
weight: 329
toc: true
type: docs
---

## Overview

Use this guide to process membership sales coming from incoming Shopify sales documents.

## Prerequisites in Business Central

- Membership lines exist in **Membership Sales Setup** for the sold membership items.
- Required customer/member fields are available in imported order payload.
- Membership age/birth-date constraints are configured if applicable.

## Processing flow

1. Shopify order is imported to Business Central.
2. Membership-related sales lines are identified.
3. Membership creation logic is executed for eligible lines.
4. Validation errors are logged when required setup/data is missing.

## Common validation failures

- Membership item exists in order but has no matching setup line.
- Birth date is required by setup but missing in incoming order data.
- Membership type/constraint conflict prevents creation.

## See also

- [<ins>Membership sales setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_sales_setup/index.md" >}})
```

### 2) `content/en/docs/ecommerce/shopify/how-to/membership_age_verification/index.md`

```md
---
title: "Shopify membership age verification behavior"
description: "Understand how membership age verification settings in Business Central affect Shopify storefront flows."
lead: ""
date: 2026-03-30T00:00:00+00:00
lastmod: 2026-03-30T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "membership_age_verification-TODO"
weight: 330
toc: true
type: docs
---

## Overview

When age verification is enabled in membership setup, the Shopify membership flow enforces birth date validation using the configured age constraints.

## Admin prerequisites

- Membership setup has age verification enabled.
- Membership sales setup has valid age constraint rules.
- Storefront membership form captures birth date.

## Storefront behavior

- Birth date field is required for constrained memberships.
- Submission fails if age is outside the configured range.
- Valid submissions continue through normal membership purchase flow.

## Troubleshooting

- Missing birth date field in form metadata
- Incorrect age constraint setup
- Unexpected validation outcome due to timezone/date interpretation
```

### 3) `content/en/docs/ecommerce/entria/_index.md`

```md
---
title: "Entria"
description: ""
lead: ""
date: 2026-03-30T00:00:00+00:00
lastmod: 2026-03-30T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "entria-TODO"
weight: 340
toc: true
type: docs
---
```

### 4) `content/en/docs/ecommerce/entria/how-to/_index.md`

```md
---
title: "How-to guides"
description: ""
lead: ""
date: 2026-03-30T00:00:00+00:00
lastmod: 2026-03-30T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "how-to-entria-TODO"
weight: 340
toc: true
type: docs
---
```

### 5) `content/en/docs/ecommerce/entria/how-to/voucher_checkout/index.md`

```md
---
title: "Use vouchers in Entria checkout"
description: "Apply and validate vouchers during Entria checkout."
lead: ""
date: 2026-03-30T00:00:00+00:00
lastmod: 2026-03-30T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "voucher_checkout-entria-TODO"
weight: 341
toc: true
type: docs
---

## Prerequisites

- Voucher support is enabled in backend configuration.
- BC/API key integration is configured.
- Voucher currency is supported for the checkout market/store.

## Apply voucher in checkout

1. Enter voucher code in checkout.
2. Validate voucher and fetch redeemable amount.
3. Apply voucher amount to total.

## Payment outcomes

- Voucher covers full total: payment completes without additional payment method.
- Voucher covers partial total: remaining amount is paid with selected payment method.
- Voucher invalid/exhausted: checkout displays validation error and keeps order open.

## Troubleshooting

- Voucher not found
- Currency mismatch
- Backend/API key misconfiguration
```

### 6) `content/en/docs/hospitality/how-to/self_service_kiosk_operator_flow/index.md`

```md
---
title: "Self-service kiosk and operator flow"
description: "Operational behavior and controls for the self-service food kiosk web app."
lead: ""
date: 2026-03-30T00:00:00+00:00
lastmod: 2026-03-30T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "self_service_kiosk_operator_flow-TODO"
weight: 342
toc: true
type: docs
---

## Dining option behavior

- Dining-choice page is skipped when fewer than two options are available.
- If no dining options are configured, kiosk should display configured fallback/error state.

## Language behavior

- Available languages are read from tenant configuration.
- Changes in tenant configuration affect kiosk language options.

## Operator actions

- **Refresh Kiosk**: refreshes kiosk state.
- **Exit to App**: exits kiosk mode to application shell.
- **Out of Order**: places kiosk in unavailable state.

## Session behavior

- Refresh does not continue prior sale unless explicitly restored by supported flow.
- Membership checks show loading spinner while validation is in progress.
```

