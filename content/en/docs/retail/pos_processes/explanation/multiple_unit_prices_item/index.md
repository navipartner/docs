---
title: "Multiple unit prices on an item"
description: "You can define item prices on the POS according to the sold quantities."
lead: ""
date: 2023-08-14T13:11:40+02:00
lastmod: 2023-08-14T13:11:40+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "multiple_unit_prices_item-b8221c09b056e139c3712ac400702220"
weight: 114
toc: true
type: docs
---

You can define item prices on the POS according to the purchased quantities. 

 {{< alert icon="📝" text="This functionality is POS-exclusive and does not work on sales orders from Business Central."/>}}

If an item’s standard unit price is 250.00 and you want to set a specific price for a quantity range, you can apply the following approach:

|  Quantity  |  Unit Price  |  Unit Price    |   Explanation   |
| ----------- | ----------- | ----------- | ----------- |
| **2** | **225.00** | **450.00** | If the item quantity reaches 2 units, the unit price is 225.00. |
| **4** | **200.00** | **800.00** | When the quantity reaches 4 units, the unit price will change to 200.00. |
| **6** | **250.00** | **1500.00** | When the quantity reaches 6 units, the unit price will change back to the standard price of 250.00. |

- If the quantity is 2 or 3, the unit price is 225.00 per unit.
- If the quantity is 4 or 5, the unit price is 200.00 per unit.
- If the quantity is 6 or higher, the unit price is the standard price. 

The function to define this scheme is found on the **Item Card** itself, under **Special Sales Prices & Discount** > **Multiple Unit Price**.

|  Field Name  |  Description  |  Example | 
| ----------- | ----------- | ----------- | 
| **Main No.** | Specifies the item code. | **10010** |
| **Description** | Specifies the short description of the item category. | **Multiple Price Levels** |
| **Status** | Specifies the status of the scheme. | **Active** | 
| **Modified Date** | Specifies the date on which the latest changes on the page have been applied. | **System-generated** |
| **Block Custom Discount** | Block the related record to prevent it from being used. | Deactivated | 
| **Base Unit of Measure** | Specifies base unit used to measure the item, such as a piece, a box, or a pallet. | **PCS** |
| **Starting date / Closing date / Starting Time** | Specifies the relevant date & time range for the scheme. |  | 
| **Global 1/Global 2** | Specifies global dimension values as a condition for applying the scheme.  |   | 
| **Service Item Group** | Specifies the code of the service item. Whenever this item is purchased, a service contract for the item is created in parallel.  | Leave it blank in this instance. |
| **Multiple Unit Price** | Specifies the details of the multiple lines and the unit price that applies to them. |   |

## Multiple unit prices on an item – Business Central

The concept of Multiple Unit Price in Business Central is a bit different than it is in NP Retail. In Business Central, when you define the levels, the quantity is considered as an absolute value, and not a range of values. 

So, in the case of the example stated above, the following would be true: 

|  Quantity  |  Unit Price  |  Unit Price    |   Explanation   |
| ----------- | ----------- | ----------- | ----------- |
| **2** | **225.00** | **450.00** | For the quantity of 2, the unit price is 225.00. |
| **4** | **200.00** | **800.00** | For the quantity of 4, the unit price is 200.00.. |
| **6** | **250.00** | **1500.00** | For the quantity of 6, the unit price is 250.00. |

- If the quantity is 2, the unit price is 225.00 per unit (multiple sales price).
- If the quantity is 3, the unit price is 250.00 per unit (normal unit price).
- If the quantity is 4, the unit price is 200.00 per unit (multiple sales price).
- If the quantity is 5 or higher, the unit price is 250.00 per unit (normal price).

The Business Central function to define this multiple price scheme is found on the **Item Card**, under **Special Sales Prices & Discount** > **Sales Price** > **Sales Price List**.

#### See also

- [<ins>Multiple prices on a group of items<ins>]({{< ref "../multiple_prices_item_group/index.md" >}})
- [<ins>Pricing<ins>]({{< ref "../pricing/index.md" >}})