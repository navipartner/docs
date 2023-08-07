---
title: "Total discount list"
description: "Total discounts can be accessed and configured in the Total Discounts List administrative in Business Central."
lead: ""
date: 2023-07-31T15:00:05+02:00
lastmod: 2023-07-31T15:00:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "total_discounts-ab97124f76d7dc97a9a048aff2e1acbf"
weight: 137
toc: true
type: docs
---

Total discounts can be accessed and configured in the **Total Discounts List** administrative in Business Central. Each **Total Discount Card** consists of the following parameters in the **General** section:

| Field Name      | Description |
| ----------- | ----------- |
| **Code**  | Specifies the code of the discount. The code is generated from the **No. Series** that is specified in the **Discount Priority Table**. |
| **Description** | Specifies the description of the discount. |
| **Status** | Indicates if the discount is active or not. If the status is set to **Active** the discount become effective, and the user is not going to be able to edit it. |
| **Priority** | You can set the priority of the discount. The highest priority is with the lowest integer number, so 1 has a higher priority than 2. The priority is used when there are two or more active total discounts that can be applied to a POS sale. The total discount with the highest priority will be applied to the transaction. |

Additionally, you can configure the following parameters in the **Benefits Calculation** section:

- **Step Amount Calculation** which has two possible options:
  - **No Filters** - the step amount that is going to trigger the total discount is going to be calculated from all items in the POS Sale. If the total discount has filters the step amount is again going to be calculated from all items but it will be triggered only if in the POS Sales there is an item from the filters. The discount is going to be distributed only between the items that are part of the filter.
  - **Discount Filters** - the step amount that is going to trigger the total discount is going to be calculated from items that are part of the total discount filters. The total discount is going to be triggered only if in the POS sale there are items that are part of the total discount filters. The discount is going to be distributed only between items that are part of the filters.
- **Discount Application** - determines which step amount calculation type is going to be applied.
  - **No Filters** - the discount benefits are going to be applied to the whole transaction.
  - **Discount Filters** - the discount benefits are going to be applied only to the items specified in the total discount filters.

Also, there are the following options available in the **Conditions** section:

| Field Name      | Description |
| ----------- | ----------- |
| **Start Date** | The starting date of the discount. |
| **End Date** | The ending date of the discount. | 
| **Customer Disc. Group Filter** | If you specify a customer disc. group filter, the discount is going to be triggered only by POS Sales that have this group. |

In the **Active Time Intervals** section you can specify the time interval during the day in which the discount is active and also the days on which the discount is active.

The **Active Time Intervals** section is used for specifying the filters that are going to trigger the discount on the POS sale if the **Discount Calculation** is set to **Discount Filters** (**Benefits Calculation** section).

| Field Name      | Description |
| ----------- | ----------- |
| **Type** | The following options are available: **All** - all items in the transaction are going to be taken into account when calculating the **Total Transaction Amount** that is going to trigger the discount; **Item Category** - only the items from the specific item category are going to be included in the **Total Transaction Amount** calculation that is going to trigger the discount, **Item** - only the specified items are going to be included in the **Total Transaction Amount** calculation, and **Vendor** - only the items from the specified vendor are going to be included in the **Total Discount Amount** calculation. |
| **No.** | Depending on the selected type, you can specify an item number or an item category code. |
| **Variant Code** | If the **Item** type is selected, you can specify a variant code. |

In the **Total Discount Benefit List** section you can specify the benefits that a POS sale is going to get for the different levels.

| Field Name      | Description |
| ----------- | ----------- |
| **Step Amount** | The total discount amount that is going to trigger the discount. | 
| **Type** | If you specify a **Discount**, the transaction is going to receive a discount; If you specify an **Item**, you can give away an item for a specific price; If you specify an **Item List**, the user can choose from a list of items. |
| **No.** | If you've selected **Item** in the **Type** dropdown, you can specify the number of that item in this field. |
| **Variant Code** | Specifies the variant code of the item. |
| **Quantity** | Specifies the maximum quantity of the item that you want to give away. |
| **Value Type** | If the **Type** is set to **Discount**, this field is used for specifying whether the discount is expressed through an amount or a percentage. |
| **Value** | Specifies the unit price, discount amount or the discount percentage.  |
| **No Input Needed** | If set to **TRUE** for lines of the **Item** or the **Item List** type, the items will be directly added to the sale, without requiring the user to take any action. | 

The **Item Benefit Lists** can be used to predefine a set of items with a specific price and quantity. These lists can be added to the **Total Discount Benefits** section to be awarded as a benefit to the customer.