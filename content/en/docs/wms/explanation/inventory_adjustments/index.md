---
title: "Inventory adjustments"
description: ""
lead: ""
date: 2023-07-13T12:52:05+02:00
lastmod: 2023-07-13T12:52:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "inventory_adjustments-7ce730244a9a28144328e05ac0460080"
weight: 193
toc: true
type: docs
---
Inventory adjustments refer to all modifications of the stock level, which occur for various reasons. These can be results of sales, purchases, or positive and negative adjustments.

Some companies tend to make minor inventory adjustments throughout the fiscal year, while others make them as a regular part of their business process.

To post adjustments to the item stock, you can use the Item Journals, to perform item counting, you can use the Physical Inventory Journals, and to change information attached to the items, use the Item Reclassification Journal.

## Adjustment types
  
- Positive adjustments refer to scenarios in which excess stock needs to be recorded and purchased.     

![positive adjustment](item_journal_positive_adjustment.PNG)

- Negative adjustments refer to scenarios in which items are broken or otherwise deemed out of commission. Bear in mind that the value of the **Cost Amount (Actual)** on the posted negative adjustment may depend on the FIFO cost of the item batch.


  {{< alert icon="📝" text="When recording a positive or negative adjustment, the <b>Unit Amount</b>, <b>Amount</b>, <b>Discount Amount</b>, and the <b>Unit Cost</b> will be populated automatically."/>}}

- Purchases are for posting positive inventory adjustments that work as purchase order transactions. Both purchases and positive adjustments indicate raise in the stock level, but this raise is recorded either in the purchase account or adjustment account respectively in the **General Posting Setup**. 

![item journal purchase](item_journal_purchase.PNG)

- Sales are for posting negative inventory adjustments that work as sales order transactions. As soon as you provide the number of the item you wish to sell, as well as the item quantity, the unit price of that item will be displayed in the **Unit Amount** field, and the full price for that quantity in the **Amount** field. The **Unit Cost** field will contain the amount at which the item was previously procured. 

![bc sale item journal](bc_sale_item_journal.PNG)