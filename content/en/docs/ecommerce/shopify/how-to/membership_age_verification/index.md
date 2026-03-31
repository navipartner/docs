---
title: "Shopify membership age verification behavior"
description: "Understand how membership age verification settings in Business Central affect Shopify storefront membership flows."
lead: ""
date: 2026-03-30T10:00:00+00:00
lastmod: 2026-03-30T10:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "membership_age_verification-e523ca5f2bcd4a57bfbe59a4828c3a25"
weight: 329
toc: true
type: docs
---

When age verification is enabled in Business Central membership setup, the same rules are applied in the Shopify storefront membership flow. In practice, this means the online experience follows the setup you define in Business Central, instead of using separate storefront-specific age rules.

## Prerequisites

Before this flow can work, age verification must be enabled for the relevant membership in **Membership Setup**. You also need to define the matching age constraints in **Membership Sales Setup** by setting both **Age Constraint Type** and **Age Constraint (Years)**. Finally, make sure your storefront membership form actually collects a birth date, because that value is required for validation.

## Storefront behavior

For memberships that use age verification, the customer must provide a birth date during the online flow. The storefront then validates that date against the age rules configured in Business Central. If the customer does not meet the allowed age range, the membership purchase or registration is blocked until valid data is entered.

{{< alert icon="⚠️" text="If age verification is enabled in Membership Setup, storefront membership flows must collect a valid birth date. Missing or out-of-range birth dates will block completion."/>}}

## Administration notes

Keep your Business Central age constraints aligned with the membership offer shown online, so customers do not see unexpected validation errors. If validation starts failing unexpectedly, first verify the membership sales setup constraints and then confirm that the storefront birth-date field is correctly mapped and sent in the request.

## See also

- [<ins>Membership setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_setup/index.md" >}})
- [<ins>Membership sales setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_sales_setup/index.md" >}})
