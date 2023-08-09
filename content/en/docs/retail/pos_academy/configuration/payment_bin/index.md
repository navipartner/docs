---
title: "Set up POS Payment Bin "
description: "Bins are containers in which money, or any legal tender, is stored and received."
lead: ""
date: 2023-08-08T11:46:23+02:00
lastmod: 2023-08-08T11:46:23+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "payment_bin-bf345421fd95a22547c6c9b177cb50e2"
weight: 19
toc: true
type: docs
---

Bins are containers in which money, or any legal tender, is stored and received. These can include currencies or even non-currencies like lottery/vouchers if you need to track them when they are relocated. Physically, a bin is a cash drawer for a POS unit, a safe in the manager’s office or even a bank.  

To set up the payment bin for the *Bring It to You Retail Store Ltd* fictional example company, populate the following fields as indicated below:

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **No.** | The unique code of the bin.  | **01** | 
| **Description** | The short description of the bin. | **Cash Drawer XX** |
| **POS Store Code** | A bin can be specified for a store, if all money received on sale goes into that bin, however this rarely happens in practice. | Leave blank. |
| **Attached to POS Unit** | Specifies to which POS unit the bin is attached. | Create a bin for each POS unit in the *Bring It to You Retail Store*. For example, **BIN 01** is attached to **POS Unit 01** (**POS Unit DK-01**) | 
| **Eject Method** | There are different methods for ejecting cash drawers you can choose from.  | **TEMPLATE**; there’s a print template set for the eject method parameter, and printing is performed on opening the drawer with the **OPEN_CASH_DRAWER POS** action button. The most common printer used is Epson, so you can set up the eject method parameter using the print template **EPSON_CASH_DRAWER**.  | 
|**BIN Type** | Bins can be physical Cash Drawers or Virtual (automatically balanced). A BANK or SAFE should also be defined as the target for money transfer. | |

When counting cash, the calculated amount for that bin should be balanced with the physical amount found in the cash drawer. Therefore, it is important to insert the starting float for the bin the first time it is created with the [Insert Initial Float]({{< ref "../../pos_processes/initial_float/index.md" >}}) functionality. 