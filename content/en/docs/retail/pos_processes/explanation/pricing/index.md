---
title: "Pricing"
description: "Pricing is a process of adjusting the value that the shop receives in exchange for goods. There are several price types."
lead: ""
date: 2023-07-07T13:06:41+02:00
lastmod: 2023-07-07T13:06:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pricing-5db8a4d5d9419f4748a5ac99b8e5ab92"
weight: 114
toc: true
type: docs
---

Pricing is a process of adjusting the value that the shop receives in exchange for goods. There are several price types.

## Unit price

Unit Price is the price at which a single product quantity is sold. It is especially useful when items are purchased in bulks. For example, an item can be sold in kilograms. In Business Central, the simplest way to set an item’s sales price is on the **Item Card**. The unit price on the **Item Card** is the item’s price based on its unit of measure. The unit price is manually or automatically calculated based on the cost of the item and the desired markup or margin by setting the **Price/Profit Calculation** value.

## List price

The List Price is the value for which an article is sold in a retail store, through a catalogue or through a website. In Business Central, there's a **List Price** field in the **Item Card** but it isn't updated automatically or used by the system. It's a static field which gives you an idea of a recommended price.

## Unit price excl. VAT

Unit Price Excl. VAT is the Unit Price without VAT. If the Unit Price is stated and the flag inclusive of VAT is activated, the system will calculate the Unit Price with VAT and display it in that field for Unit Price Excl. VAT.

## Sales price list

You can create a [<ins>selling price<ins>]({{< ref "../../how-to/sales_price_setup/index.md" >}}) for a specific group of customers. Business Central combines different ways of affecting a price, like defining a specific price, discount or a combination of both for a group of customers. These configurations can be performed in the **Sales Price List** page.

{{< alert icon="📝" text="In Business Central and NP Retail, the Sales Price takes priority on the Unit Price in the Item card. Whenever a sales order or a POS sale is done, the system will first check if an item has a Sales Price. If it does, that price will be applied, otherwise, the unit price will be applied."/>}}

### Sales price list actions 

You can set up price list lines manually or can, for example, use the **Suggest Lines** action to create new prices for selected items, item discount groups, resources, and other product types. You can then set filters to single out products for which you want to create new price list lines. You can also specify whether you want the minimum quantity to be considered when performing price calculations, the adjustment factor applied to new price list lines, as well as the rounding method which will affect the prices. 

![pricing1](pricing1.png)

In the example provided above, an adjustment factor was applied to the unit price of a single item. The adjustment factor states that instead of paying 4,000.00 customers will instead pay 3,200.00 if they buy two units of this item.  

It’s also recommended to run the **Verify Lines** action that checks if there are duplicate lines in the details of the **Sales Price List**. If there are issues, you will receive suggestions for fixing them, and if everything is correct, the scheme will be set to **Active**.
