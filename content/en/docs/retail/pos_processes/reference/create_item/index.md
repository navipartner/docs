---
title: "Item card"
description: "Learn how to create items by using the available sections in the Item Card."
lead: ""
date: 2023-08-14T11:25:58+02:00
lastmod: 2023-08-14T11:25:58+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_item-5dd0e05b65ec48354e7b4c295b260a2e"
weight: 115
toc: true
type: docs
---

The following configuration illustrates the registration of an item belonging to the category **GARMENT**. The **Item Card** consists of the following sections:

## General section

| Field Name      | Description | Example  |
| ----------- | ----------- | ----------- |
| **No.** | The number with which the item is identified in the system. | **10010** |
| **Description** | A short description of the **Item Category**. | **Hummel Lana Leggings** |
| **Description 2** | An optional additional description. | Leave it blank. |
| **Blocked** | Blocks the record from being posted in transactions. E.g. an item that is placed in a quarantine. | Disactivated | 
| **Type** | There are several possible types of items: <ul> <li> **Inventory** - Physical objects, such as bicycles, telephones, and desks, for which you need to use all inventory processes. This can also include non-physical items, such as software licenses and subscriptions, if the items have identification numbers, such as serial numbers. You can fully track item values and availability in inventory;</li> <li>**Non-inventory** - Physical objects, such as bolts or pens, that a business consumes but doesn’t need to fully track in the inventory (e.g. low-cost items that are only used internally); </li> <li> **Service** - A labor time unit, such as a consultancy hour, for limited business support.</li> </ul> | **Inventory** | 

{{< alert icon="📝" text="The Service and Non-Inventory types do not support tracking inventory quantities and values."/>}}

| Field Name      | Description | Example  |
| ----------- | ----------- | ----------- |
| **Item Status** | The item status specifies the following actions allowed for the item: <ul> <li> **Initial** (TRUE) </li> <li> **Blocked** (FALSE) </li> <li> **Delete Allowed** (TRUE) </li> <li> **Rename Allowed** (TRUE) </li> <li> **Purchase Insert** (TRUE) </li> <li> **Purchase Release** (TRUE)</li> <li> **Purchase Post** (TRUE) </li> <li> **Sales Insert** (TRUE) </li> <li> **Sales Release** (TRUE) </li> <li> **Sales Post** (TRUE) </li> </ul> | **01NEW** |
| **Item Brand** | If a brand name is required, it can be stated here. | **Hummel** | 
| **Base Unit of Measure** | The base unit for measuring an item, such as a piece, box, or pallet. | **PCS** | 
| **Item Category Code** | The **Item Category** is used for grouping items. The items inherit all characteristics defined in the **Item Category**. | **GARMENT** |
| **Statistics Group** | The statistics group code used for statistical reporting purposes. | Leave it blank. |
| **Service Item Group** | The code for the service item group. Whenever this item is being sold, a service contract is created for the item in parallel. | Leave it blank. | 
| **Various Item Sales** | When active, you can insert a price on the POS unit for the relevant item. When selecting the item on the sale line, a pop-up **Numpad** is displayed, and the salesperson is required to enter the selling price.  | Disactivated |

## Inventory section

This section contains various item statistics. It covers stats on purchases and sales, as well as storage weightage/volume. You can also state the number of the shelf on which the item is stored. This is relevant only for the store inventory and not warehouses where bins are used.   

| Field Name      | Description | Example  |
| ----------- | ----------- | ----------- |
| **Prevent Negative Inventory** | If an item is physically present in the store, but the inventory isn’t up to date, the customer should still be able to purchase the item.  | **No** |

## Costing & Posting section

| Field Name      | Description | Example  |
| ----------- | ----------- | ----------- |
| **Dimension** | You can reset the two Global Dimension values at this level. | Leave it blank. |
| **Costing Details** | The information regarding the costing method and the related cost of an item such as **Unit Cost**, **Average Cost**, **Indirect Cost %**, and **Last Direct Cost** is kept at this level. Some costs are generated automatically based on the purchase amount of the item. | **Costing Method = FIFO**; **Unit Cost = 125.00** |
| **Posting Details** | All posting configuration for the item is done at this level. If you use **Item Configuration Templates** at the **Item Category** level during the item creation, this information can be preset in the templates.  | **Gen. Prod. Posting Group = RETAIL**; **VAT Prod. Posting Group = VAT25**; **Inventory Posting Setup = SHOP** | 
| **Foreign Trade** | Information such as **Tariff No.** and the **Country of Origin** can be stored here.  | Leave it blank. | 

### Item templates and configuration templates

There are two different ways of using templates to optimize the process of item creation:  

- **Item Templates** - there is a function on the **Item Card** to create item templates, under **Actions** > **Function** > **Templates** or **Save as Template**. Users can create templates used for item creation. Once a template is created, it will be activated and available for creation of items.       
  If only one item template exists, the new **Item Card** is opened. If there’s only one template, some of its fields are populated automatically with information from it. If there is more than one template, a new page with the list of available templates is displayed, and you need to choose one of them. 
- **Configuration Templates** - On the **Item Category** page, you can create a **Configuration Template** using different fields in the Item table. When assigning the category to the item, the values are also assigned.   

## Price & Sales section

This section contains different prices such as the **Unit Price**, **Unit List Price**, **Price including VAT & excluding VAT**, as well as statistics such as profit calculation, percentage and quantity sold. You also have information on different types of discounts on the item unit price as well as the **VAT Bus. Posting Gr. (Price)** regarding the Item.  

## Variety section

The variety setup is a customized way of treating variant codes on the POS unit, and as such requires a separate article. 

| Field Name      | Description | Example  |
| ----------- | ----------- | ----------- |
| **Main Item/Variation** | Specifies if the item is a main item or a variation of another item. | Leave it blank. |
| **Main Item No.** | Specifies the number of the main item if this item is a variation of another item. | Leave it blank. |
| **Item AddOn No.** | The code of the item add-on that can be attached to the item. It affects the behavior on the POS when selling items.  E.g. You can attach an item accessory or insurance to the item. When selling the item on the POS, a second line is automatically inserted with the item defined in the item add-on scheme.  | Leave it blank. |
| **Rest. Item Routing Profile** | Additional information can be attached to the **Item Card** for the NP Restaurant module. | Leave it blank. |
| **Guarantee Voucher** | When selling the item, a guarantee voucher is issued automatically if this field is active. | Leave it blank. |
| **No. Print on Receipt** | When the item is sold, a receipt isn’t printed automatically if this field is active. | Leave it blank. |
| **Ticket Type** | The ticket type associated with this item for the NP Entertainment module. |  Leave it blank. |
| **Print Tags** | Specifies the item print tags. | Leave it blank. |

## Magento section

You can define the characteristics of the Magento item and establish the relationship between an item from Business Central and the web shop. Details such as description, brand, unit price, SEO link to the Magento Item on the Magento portal, attributes, and the product relationship are stored here.  

## Extra Fields section

This section covers the attributes assigned to the item. This section will be sunsetted in the future and replaced by the standard Business Central version of Attributes.     

## Replenishment section

This section specifies how replenishment of items is being handled. You can find the details about the vendor, the purchase, unit of measure and the method of replenishment. The purchased item can be a finished product or an assembly/manufactured product. 

## Planning section

If you want to use the **Calculate Plan** function, you need to configure details like a reordering policy, reordering point, and reordering quantity. The **Safety Lead Time & Safety Stock Quantity** also need to be configured and considered in the calculation.   

Hence when using the requisitions worksheet for the purchasers, the configurations above are needed.   

## Item Tracking section

If you want to use the **Item Tracking** functionalities, the parameters in this section need to be configured. 

## Warehouse section

If you want to use the Warehousing functionalities, the parameters in this section need to be populated. 

### References

[<ins>Microsoft documentation - How to register a new item<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-how-register-new-item)