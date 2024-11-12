---
title: "Create a multi-purpose voucher (MPV)"
description: "Follow the provided steps to create a single-purpose voucher."
lead: ""
date: 2024-11-06T09:03:15+01:00
lastmod: 2024-11-06T09:03:15+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_mpv-68ce5120e7218dba6b4a09a5e6ff1dd2"
weight: 254
toc: true
type: docs
---

The principles for creating a Multi-Purpose Voucher (MPV) are similar to those for a [<ins>Single-Purpose Voucher (SPV)<ins>]({{< ref "../../how-to/create_spv/index.md" >}}), with two key differences. Firstly, VAT is not charged at the time the MPV is sold. Secondly, when the MPV is redeemed, the VAT on the underlying goods or services is applied, but no adjustment is made to the VAT of the original sale of goods. VAT is only due at the time of redemption, and it applies to the goods or services provided, not to the voucher itself.

The following differences are key in MPV setup, compared to the [<ins>setup of SPV<ins>]({{< ref "../../how-to/create_spv/index.md" >}}):

- The General Ledger account associated with the MPV is assigned the **NO-VAT** posting option
- The **Reverse Unrealized VAT** toggle switch in the relevant **POS Payment Method Card** should not be active. 

#### See also

- [<ins>VAT treatment of single-purpose vouchers (SPV) and multi-purpose vouchers (MPV)<ins>]({{< ref "../../explanation/spv_and_mpv/index.md" >}})