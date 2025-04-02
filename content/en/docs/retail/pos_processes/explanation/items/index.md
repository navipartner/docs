---
title: "Items"
description: "Items are products that are sold to customers in stores, restaurants, and other establishments. You can purchase or manufacture and resell them to customers."
lead: ""
date: 2024-03-15T14:44:24+01:00
lastmod: 2024-03-15T14:44:24+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "items-fb6d88cc2d259266d000a11ee635cd50"
weight: 114
toc: true
type: docs
---

Items represent the products sold to customers in stores, restaurants, and other establishments. These products can be purchased, manufactured, and resold. Each item must be registered in an **Item Card**, which stores essential information for purchasing, storing, selling, delivering, and accounting for the item.

An item can be structured in different ways:

- As a parent item with associated child items in a bill of materials (BOM).
- As a complete product that is purchased and sold as-is.
- As a manufactured item that requires production before sale.

## Dependencies/prerequisites

Before creating an item, ensure that the following entities are set up. If they are not already created, they can be configured while registering the item.

### Item Categories (Optional)

While not mandatory, item categories provide advantages when grouping similar items. Defining an **Item Category Card** allows certain properties and presets to be copied to the **Item Card**, speeding up the item creation process.

### Posting Groups

The following posting groups must be configured to ensure proper financial tracking:

| Posting Group      | Description |
| ----------- | ----------- |
| **Inventory Posting Group** | Assigns the inventory account used for the item. |
| **Gen. Prod. Posting Group** | Defines the general ledger (G/L) accounts based on the **General Ledger Posting Setup**. |
| **VAT Prod. Posting Group** | Defines the appropriate G/L accounts based on the **VAT Posting Setup**. |
| **VAT Bus. Posting Gr. (Price)** | Assigns a **VAT Business Posting Group** to the item. This is optional but recommended. |

### Unit of measure

Predefining units of measure for storing, purchasing, and selling items simplifies item setup. If units of measure are already defined, they only need to be assigned to the item.

### Vendor

If items are sourced from specific vendors, the vendor should be set up in advance. If an item is purchased from multiple vendors, they can be linked to the **Item Card**. These vendors will be displayed on the **Item Vendor Catalog** page, allowing for quick vendor selection.


#### See also

- [<ins>Item card reference guide<ins>]({{< ref "../../reference/create_item/index.md" >}})
- [<ins>Item add-ons<ins>]({{< ref "../item_addons/index.md" >}})
- [<ins>Set up item add-ons<ins>]({{< ref "../../how-to/item_addon/index.md" >}})
- [<ins>Pricing<ins>]({{< ref "../pricing/index.md" >}})