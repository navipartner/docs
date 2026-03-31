---
title: "Set up e-commerce membership sales processing"
description: "Configure membership sales imported from Shopify sales documents."
lead: ""
date: 2026-03-30T14:00:00+02:00
lastmod: 2026-03-30T14:00:00+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ecommerce_membership_sales-34b5f3df6a6d4f7f9786370e74d2cf9b"
weight: 330
toc: true
type: docs
---

Use this guide when memberships are sold through Shopify and imported to Business Central as e-commerce sales documents.

## Prerequisites

- Membership lines must be configured in [<ins>Membership sales setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_sales_setup/index.md" >}}).
- Incoming order data must include required member/customer fields.
- If age verification is used, membership constraints must be configured and birth-date data must be available for validation.

## Processing flow

1. Shopify order is imported into Business Central.
2. Membership-related lines are matched to configured membership sales setup lines.
3. Membership creation logic is executed for valid lines.
4. Lines missing setup or required data are blocked until corrected.

## Common validation issues

- No matching membership sales setup line exists for an imported membership line.
- Required member data is missing in the imported order.
- Age verification is enabled but the provided birth date is missing or outside the configured range.

## See also

- [<ins>Membership setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_setup/index.md" >}})
- [<ins>Membership sales setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_sales_setup/index.md" >}})
- [<ins>Shopify membership age verification behavior<ins>]({{< ref "../membership_age_verification/index.md" >}})
