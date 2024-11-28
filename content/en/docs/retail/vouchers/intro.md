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

## Set up and use vouchers (POS)

To be able to use vouchers in your store, you first need to perform the necessary setup in Business Central and on the POS.

1. [<ins>**Create the voucher type**<ins>]({{< ref "explanation/voucher_types/index.md" >}}).

   Retailers can create and customize different voucher types within the **Voucher Type Card**, tailoring them to meet specific business needs.

2. [<ins>**Set up buttons on the POS**<ins>]({{< ref "../pos_layout/how-to/new_button/index.md" >}}).       
   
   The buttons need to be have the following [<ins>actions<ins>]({{< ref "reference/pos_actions_vouchers/index.md" >}}) attached:
   - **ISSUE_VOUCHER** - If attached to a button, this action enables salespeople to issue vouchers to customers. The parameters set on this button determine the voucher type and amount that will be created, and how much the customer will pay for it. 
   - **SCAN_VOUCHER_2** - If attached to a button, this action is used when customers wish to redeem their vouchers in a store.       

3. [<ins>**Issue a voucher**<ins>]({{< ref "how-to/issue_gift_vouchers/index.md" >}}).

    Once a voucher has been created, it can be issued to a customer from the POS. All issued vouchers can be found in the **Retail Voucher Entries** in Business Central.

4. [<ins>**Redeem a voucher**<ins>]({{< ref "how-to/redeem_voucher/index.md" >}}).       
   
   Customers can redeem issued vouchers in stores.

## Set up and use vouchers (e-commerce)

To be able to sell vouchers in your web store, you first need to perform the necessary setup in Business Central and Magento Webadmin.

1. [<ins>**Set up voucher email templates**<ins>]({{< ref "how-to/email_templates/index.md" >}})       
   Choose what the vouchers sent to customers via email look like, as modify their content according to your business needs and company voice.  

2. [<ins>**Set up gift vouchers in Magento Webadmin**<ins>]({{< ref "how-to/web_stores/index.md" >}})       
   Perform the necessary setup in Magento Webadmin to make vouchers purchasable and redeemable in your web store. 

3. [<ins>**Purchase and redeem vouchers (web stores)**<ins>]({{< ref "how-to/web_stores_customers/index.md" >}})       
   See the flow of purchasing and redeeming vouchers from a customer's perspective.