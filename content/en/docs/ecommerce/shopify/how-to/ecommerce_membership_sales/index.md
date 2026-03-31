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

Before you start processing memberships from e-commerce orders, make sure the relevant membership lines are configured in [<ins>Membership sales setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_sales_setup/index.md" >}}). In addition, verify that incoming Shopify order data contains the customer and member details required by your setup. If age verification is enabled, birth-date information must be available in the order so the system can evaluate age constraints correctly.

## Processing flow

When an order is imported from Shopify, Business Central evaluates each membership-related line and tries to match it with the corresponding setup line. If the setup and required data are available, the membership creation flow continues automatically. If something is missing, such as mapping or required member data, the line is blocked until the setup or data issue is corrected.

## Common validation issues

The most common issue is missing setup mapping, where an imported membership line has no corresponding line in **Membership Sales Setup**. Another common cause is missing required member data in the incoming order. In scenarios with age verification enabled, the process can also fail if birth-date data is missing or falls outside the configured age range.

## See also

- [<ins>Membership setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_setup/index.md" >}})
- [<ins>Membership sales setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_sales_setup/index.md" >}})
- [<ins>Shopify membership age verification behavior<ins>]({{< ref "../membership_age_verification/index.md" >}})
