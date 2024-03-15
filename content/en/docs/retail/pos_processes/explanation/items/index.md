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

Items are products that are sold to customers in stores, restaurants, and other establishments. You can purchase or manufacture and resell them to customers. As such, each item needs to be registered in its own **Item Card**. Item cards hold information required to buy, store, sell, deliver, and account for items. An item can be structured as a parent item with underlying child items in a bill of materials (BOM) or as a complete or a manufactured item. 

## Dependencies/prerequisites

There are a few prerequisites for registering an item. If the following entities aren’t created beforehand, they can be created at the time of registering the item: 

- **Item categories**     
  Although not mandatory, there are a few advantages to using item groups to group items that share certain characteristics. There are certain properties or presets that can be defined in an **Item Category Card** that will help you create an item more quickly. Whatever properties are defined in an item category will be copied over to the **Item Card** of the item that belongs to it. 
- **Posting groups**    
  The following posting groups should be set up: 
    - **Inventory Posting Group** – assigns the inventory account that will be used by the item. 
    - **Gen. Prod. Posting Group** – assigns appropriate G/L accounts according to the **General Ledger Posting Setup**. 
    - **VAT Prod. Posting Group** – assigns appropriate G/L accounts according to the **VAT Posting Setup**. 
    - **VAT Bus. Posting Gr. (Price)** – assigns the **VAT Business Posting Group** to the product. This group isn’t mandatory, but it’s recommended. 
- **Unit of measure**      
  If you predefine in what unit of measure your items are being kept, purchased, and sold, you won’t need to create it, only to assign it.
- **Vendor**      
  If you define the source from which you purchase the goods, you should also define the vendor in advance. If you purchase the same item from multiple vendors, you can connect those vendors to the **Item Card**. The vendors will then be displayed on the **Item Vendor Catalog** page, so that you can easily select an alternate vendor. 

#### See also

- [<ins>Item card reference guide<ins>]({{< ref "../../reference/create_item/index.md" >}})
- [<ins>Item add-ons<ins>]({{< ref "../item_addons/index.md" >}})
- [<ins>Set up item add-ons<ins>]({{< ref "../../how-to/item_addon/index.md" >}})
- [<ins>Pricing<ins>]({{< ref "../pricing/index.md" >}})