---
title: "Sales price setup"
description: "Business Central combines different ways of affecting a price, like defining a specific price, discount or a combination of both for a group of customers."
lead: ""
date: 2023-08-16T10:53:59+02:00
lastmod: 2023-08-16T10:53:59+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sales_price_setup-8fe3f178d492a0f507ccc833c8545073"
weight: 38
toc: true
type: docs
---

You can create a [<ins>sales price<ins>]({{< ref "../../../pos_processes/explanation/pricing/index.md" >}}) for a specific group of customers. Business Central combines different ways of affecting a price, like defining a specific price, discount or a combination of both for a group of customers. These configurations can be performed in the **Sales Price List** page.

{{< alert icon="📝" text="In Business Central and NP Retail, the Sales Price takes priority on the Unit Price in the Item card. Whenever a sales order or a POS sale is done, the system will first check if an item has a Sales Price. If it does, that price will be applied, otherwise, the unit price will be applied."/>}}

## Set up sales price for Bring It To You Ltd. fictional company

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Sales Price List**, and choose the related link. 
2. From **Item Card** access the **Sales Price** via **Special Sales Prices & Discount** in the ribbon.      
   On an item level, there will be a line or a list if that item is already in a Sales Price of some sort. Otherwise, you need to create a new list by selecting the **Sales Price List**.
3. Click **Sales Prices & Discount** in the **Item Card** to access the **Sales Price** card.      
4. Populate the following fields with the values in the **Example** column:

| Field Name      | Description | Example | 
| ----------- | ----------- | ----------- |
| **Code**  | Provide a code that is used for the price identification. | **S00010** | 
| **Wholesales** | Provide a description for the sales price scheme. | **Wholesales** | 
| **Assign-to Type** | Assign the pricing to a group or a specific person. You can choose between **All Customers**, a specific **Customer**, **Customer Price Group**, a sales **Campaign**, a specific **Contact**. | **Customer Price Group** |
| **Assign-to No.** | Specify the entity to which the prices are assigned. The options depend on the selection in the **Assign-to Type** field. If you choose an entity, the price list will be used only for that entity. | **WHOLESALE** | 
| **VAT Bus. Posting Gr. (Price)** | Specifies the default VAT business posting group code. | **NATIONAL** | 
| **Price Includes VAT** | Specifies the if prices used in this scheme include VAT. | **Enabled** |
| **View Columns for** | Specify what kind of columns you will have in the detail section. | **Price** | 
| **Status** | Specifies whether the price list is in **Draft** (can be edited), **Inactive** (cannot be edited or used), or **Active** status (used for price calculations). | **Draft** |
| **Currency Code** | Specifies the currency code of the price list. |    |
| **Starting/Ending Dates** | Specifies the period during which the price list is active. | **01/03/2023 – 31/05/2023**  |
| **Line Defaults** | If flagged, all of the following actions are allowed in the detail lines. **Allow Updating Defaults** - Specifies whether users can change the values in the fields on the price list lines that contain default values from the header. This does not affect the ability to allow line or invoice discounts; **Allow Invoice Disc.** - Specifies whether invoice discount is allowed. You can change this value on the lines; **Allow Line Disc.** - Specifies whether line discounts are allowed. You can change this value on the lines. | All enabled |

5. Define the details of the scheme in the **Lines** section.       
   In this example, all customers that benefit from a **Wholesale Customer Price Group** will pay the item **70004** at a beneficial price of 1,200.00 per unit instead of the default unit price of 1,500.00 within the period between March 1st and March 23rd exclusively. 

![salesprice1](salesprice1.PNG)

## Next steps

### Apply item discount

Item discount is applied in much the same way as described in the main procedure above, the only difference being that instead of defining unit prices, you can define the discount.

In the following example, you're assigning a discount percentage that all customers will benefit from. If 5 x items with Item Discount Group = A are sold, the customer will benefit from 15% discount on the 5 items. 

You can also set a “Wild Card” whereby you include all Items in the scheme. In the last line, the Product Type = Item & The Product No = BLANK. This is a function in Business Central that permits you to give a 3 % on all items to all customers.

![sales_price_2](sales_price_2.PNG)

### Combine sales price with item discount

In this example, you can see that different sales price, item discounts or even a combination of both can be set in the system in one price list. 
Both pricing and discount setup can be performed in one page instead of having to navigate to each Item card to set up pricing and apply discounts individually. 

![sales_price_3](sales_price_3.PNG)

### Set up price worksheet

If you want to update prices for multiple items without having to change settings in each Item Card individually, you can create a Default Price List in the [<ins>Price Worksheet<ins>]({{< ref "../../../pos_processes/how-to/price_worksheet_setup/index.md" >}}) administrative section. 