---
title: "Sending inventory to Shopify"
description: "The administrative section Shopify Inventory Levels stores the pre-calculated available inventory levels before sending them to Shopify."
lead: ""
date: 2023-07-11T11:19:11+02:00
lastmod: 2023-07-11T11:19:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "send_inventory-f3b7649848cf332b932d42118c4f9b63"
weight: 654
toc: true
type: docs
---

The administrative section **Shopify Inventory Levels** stores the pre-calculated available inventory levels before sending them to Shopify.

The Shopify inventory levels are updated on each item-related transaction posting (when an item ledger entry is created), and each time a sales order line is created, updated, or deleted.

## How the Shopify inventory is calculated

The inventory levels are calculated per a Shopify location ID. That means that, if the same Shopify location ID is assigned to multiple Business Central locations, the system sums up the data from all of those Business Central locations to calculate the inventory level tied to the specific Shopify location ID.


|                     |                         |                       |
|---------------------|-------------------------|-----------------------|
| Available inventory | Quantity on sales order | Safety stock quantity |

The safety stock quantity can be set in the **Shopify Safety Stock Quantity** field of the **Item Card** of any item. It helps limit stock shortages due to unforeseen events. If you wish to set a different level of Shopify safety stock quantity for each item variant, it's necessary to create stockkeeping units in Business Central (you can do so in the **Create Stockkeeping Units** administrative section).

{{< alert icon="📝" text="If there's at least one stockkeeping unit for an item in Business Central, the value of the Shopify safety stock quantity specifies on the **Item Card** is disregarded."/>}}

The inventory level synchronization triggering process is very similar to the process of [item list synchronization in Business Central]({{< ref "../../how-to/synchronize_items/index.md" >}}) - it involves the **Item Ledger Entries** table, the **Sales Line** data log subscribers, as well as processing of the **Task List** entries.
