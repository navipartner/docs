---
title: "Retail voucher overview"
description: "A Retail Voucher is a document that entitles the owner to purchase goods or services."
lead: ""
date: 2024-03-08T14:36:53+01:00
lastmod: 2024-03-08T14:36:53+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-3be3b49062871d19560686814bbcaf3f"
weight: 138
toc: true
type: docs
---

A Retail Voucher is a document that allows its holder to purchase goods or services. Vouchers can come in various forms, such as paper documents, electronic codes, or physical tokens. They are commonly used across the Retail and Service industries, with popular examples including:

- [<ins>Gift vouchers<ins>]({{< ref "how-to/issue_gift_vouchers/index.md" >}})
- Credit vouchers
- [<ins>Food/meal vouchers<ins>]({{< ref "explanation/meal_eco/index.md" >}})
- Labor vouchers
- Supplier's vouchers

## Retail vouchers module by NP Retail

Recognizing the widespread use of vouchers, NP Retail has developed a Retail Vouchers Module. This module enables businesses to define and manage various types of vouchers, each with specific rules and conditions.

Retail vouchers can be categorized based on their origin and usage:

- **Internal vouchers**      
  Issued and redeemed within the same store

- **External vouchers**      
  Issued by third parties (e.g. suppliers or partner companies) under agreements allowing redemption at participating stores

- **Global vouchers**      
  Issued by multiple stores within the same company and redeemable at any store owned by the company

## Setting up retail vouchers

To be able to use vouchers in your store, you first need to perform the necessary setup in Business Central

1. [<ins>**Create the voucher type**<ins>]({{< ref "explanation/voucher_types/index.md" >}})

   Retailers can create and customize different voucher types within the **Voucher Type Card**, tailoring them to meet specific business needs.

2. [<ins>**Set up buttons on the POS**<ins>]({{< ref "../pos_layout/how-to/new_button/index.md" >}}).       

    {{< alert icon="📝" text="One of the buttons needs to have the <b>ISSUE_VOUCHER</b> action attached for the whole process to work. The parameters set on this button determine which voucher will be created with which amount, and how much the customer will pay for it."/>}}

3. [<ins>**Issue a voucher**<ins>]({{< ref "how-to/issue_gift_vouchers/index.md" >}}).

