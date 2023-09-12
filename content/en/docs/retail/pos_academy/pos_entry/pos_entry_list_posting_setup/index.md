---
title: "POS Entry List - posting setup"
description: "The POS Posting Setup defines how the receipts for cash and other payment methods are posted in the General Ledger or subledgers in the system."
lead: ""
date: 2023-08-16T12:12:55+02:00
lastmod: 2023-08-16T12:12:55+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_entry_list_posting_setup-59faf8f481f0b4818a1c06c615cdb4e5"
weight: 39
toc: true
type: docs
---

As previously stated in the [NP Retail Configuration]({{< ref "../../configuration/posting_profile/index.md" >}}) portion of the POS Academy, the **POS Posting Setup** defines how the receipts for cash and other payment methods are posted in the General Ledger or subledgers in the system. 

![posting1](posting1.PNG)

In the **POS Posting Setup** administrative section, you can define the accounts that will be debited when receiving payment with various payment methods, and when you transfer funds from your float amount during the process of balancing into a **Bank** or a **Safe**.  

The accounts for **Sales**, **Purchases**, **Cost of Sales**, and **Discounts** are defined in the **General Posting Setup**, by combining the values of the **Gen. Bus. Posting Group** and the **Gen. Prod. Posting Group**.  

![posting5](posting5.PNG)

It is also necessary to set up VAT in the **VAT Posting Setup** administrative section. 

![posting6](posting6.PNG)

When you have the VAT setup and the accounts for **Sales**, **Purchases**, **Cost of Sales**, and **Discounts** configured, you need to use the **Inventory Posting Setup** administrative section to create an account for posting inventory. 

![posting7](posting7.PNG)

Once done, you can see how they are applied when carrying out transactions on the POS.   