---
title: "Multiple prices on a group of items"
description: "If you wish to set different price ranges within a single item group, you need to use the Mix Discount, with the Multiple Discount Levels discount type."
lead: ""
date: 2023-08-14T13:20:31+02:00
lastmod: 2023-08-14T13:20:31+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "multiple_prices_item_group-b3c276280322b31e16acb65145398d3e"
weight: 31
toc: true
type: docs
---

If you wish to set different price ranges within a single item group, you need to use the **Mix Discount**, with the **Multiple Discount Levels** discount type. That way, while the unit price isn’t changed, different discounts (calculated percentage or fixed amount) are applied to different quantities of purchased items that belong to the specified group.

For example, in a group of 20 items, a customer can purchase any item or a combination of items. If the purchased quantity reaches a certain level, the customer will benefit from a discount.

The following points need to be considered in this configuration:

-	You can either set a discount amount or percentage for each line. You can’t set both.
- The specified discount amount is treated as if it includes VAT, unless the **Discount Amount Excl. VAT** checkbox is ticked. 
- When you set the quantity range, the discount is applied to that specific range, just like it would be in the case of multiple unit prices placed on a single item.
- If you tick the **Multiple Of** checkbox, the specified discount is also applied in the scenario where the quantity on a sales line is multiplied until it reaches the specified **Max Quantity**.

#### Example

If you specify **3** as the **Quantity**, the discount is also applied to **6**, **9**, **12**, **15**, and so on, until the **Max Quantity** is reached. 

- The discount amount is multiplied by the factor. 

#### Example

If the quantity is **3**, a discount amount of **DKK 50,00** is set; if the quantity is **6**, the discount amount is **DKK 100,00**; if the quantity reaches **9** the discount amount is **DKK 150,00**, and so on until the maximum allowed amount is reached.