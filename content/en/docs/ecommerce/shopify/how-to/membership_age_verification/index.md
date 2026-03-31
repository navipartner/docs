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

When age verification is enabled in Business Central membership setup, the Shopify storefront membership flow applies the same age constraints online.

## Prerequisites

- In **Membership Setup**, enable **Enable Age Verification** for the relevant membership.
- In **Membership Sales Setup**, define valid age constraint values (**Age Constraint Type** and **Age Constraint (Years)**).
- Ensure the storefront membership flow captures the birth date required for validation.

## Storefront behavior

- The customer is required to provide a birth date for memberships that use age verification.
- The storefront validates the provided birth date against the age constraints configured in Business Central.
- If the age is outside the allowed range, the membership purchase/registration is blocked until valid data is provided.

{{< alert icon="⚠️" text="If age verification is enabled in Membership Setup, storefront membership flows must collect a valid birth date. Missing or out-of-range birth dates will block completion."/>}}

## Administration notes

- Keep Business Central age constraints aligned with the membership offer shown online.
- If validation fails unexpectedly, first verify the membership sales setup constraints and the storefront birth-date field mapping.

## See also

- [<ins>Membership setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_setup/index.md" >}})
- [<ins>Membership sales setup<ins>]({{< ref "../../../../entertainment/membership/reference/membership_sales_setup/index.md" >}})
