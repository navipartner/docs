---
title: "Mix discount setup"
description: "Set up mix discount for the Bring It to You Retail Store Ltd fictional example company."
lead: ""
date: 2023-08-15T12:14:57+02:00
lastmod: 2023-08-15T12:14:57+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "mix_discount-4dd948099278bfc896ec70ffffbcc683"
weight: 34
toc: true
type: docs
---

The mix discount type implies that customers need to buy several different items if they wish to be eligible for a discount. The discount is triggered when a certain combination of items is selected in a POS transaction. 

*Bring It to You Retail Store Ltd* is running a campaign with Hummel Socks every April, where they sell 3 pairs of socks for the price of 2. They sell black, blue, and red socks, and they want the customer to be able to mix those options. This scenario calls for the use of mix discounts.  

To set up mix discounts, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Mix Discount**, and choose the related link.     
   Mix discount list is displayed. 
2. Click **New**.     
   The **Mix Discount** card is displayed. 
3. Insert the necessary information in the **General** tab: 

   ![discounts2](discounts2.PNG)

   ![discounts3](discounts3.PNG)

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Code** | Specifies the unique code for a mix discount. | **3** |
| **Description** | Specifies the short description of a mix discount. | **Hummel Socks – Buy 2 Get 3** |
| **Mix Type**  | Specifies the type of mix discount that is created. The following options are available: **Standard** - the items which are going to receive the discount are added to the **Mixed Discount Lines**; **Combination** - If selected, the part cards should be created in the **Mixed Discount Lines**, and they contain items which need to be set up for discount.  | **Standard** |
| **Lot** | When the **Lot** toggle switch is disabled, the sales ticket can contain any combination of items, provided that the **Min. Quantity** is respected to benefit from the discount scheme. When the **Lot** toggle switch is enabled, the specific combination of an item and item quantity needs to be respected to benefit from the discount scheme.  | **Disabled** |
| **Min. Quantity** | Minimum quantity of items that the customer needs purchase for the discount to be applied. | **3** |
| **Max Quantity** | The maximum quantity of items that the customer can purchase with the discount applied. | **6** | 
| **Status** | After all the necessary data for the mix discount is inserted, the status of the mix discount needs to be changed to **Active**. If it is necessary to disable the mix discount, the status must be changed to **Closed**.  | **Active** |
| **Discount Type** | There are [<ins>five discount types<ins>]({{< ref "../../../discounts/explanation/discount_types/index.md" >}}) that can be chosen on the **Mixed Discount Card**. | **Total Amount per Min. Qty.** (The discount is reached every time the minimum quantity is reached) |
| **Min. Discount Amount** | The minimum discount amount which will be calculated and given to the customer upon buying the minimum quantity allowed. | **0.00** |
| **Max. Discount Amount** | The maximum discount amount which will be calculated and given to the customer upon buying the maximum quantity allowed. | **50.00** |
| **Block Custom Discount** | If enabled, the custom discounts will be blocked for items from the **Mix Discount Lines**.  | **Enabled** (The salesperson can’t input manual discounts) |
| **Total Amount Excl. VAT** | If disabled, the amount from mix discounts is taken without VAT.  | **Disabled** (The amount should include VAT) |

4. Insert the necessary information in the **Conditions** tab: 

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Start Date** | The date on which the mix discount will become active.  | **01/04/2023** (The campaign is running throughout April) |
| **End Date**  | The date until which the mix discount will be active. | **30/04/2023** (The campaign is running throughout April) |
| **Customer Disc. Group Filter** | If the mix discount is active only for certain customers, you should select their customer discount group in this field. **Customer Disc. Groups** can also be set on POS units, so if the stores are running a local campaign, a **Customer Disc. Group** can be created and set on both the **POS Unit** and the **Mixed Discount**.  | Not used in this example since it shouldn’t apply to all stores. |

5. Insert the necessary information in the **Active Time Intervals** tab: 

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Start Time** | The time of day at which the mix discount will become active.  | Not used in this example. |
| **End Time** | The time of day until which the mix discount will be active.  |  Not used in this example. |
| **Period Type** | The period in a week during which the period discount is active. You can choose between:  **Every Day** (the mix discount is active every day);  **Weekly** (it will be possible to choose a day of the week when the mix discount will be active). | Not used in this example  | 

6. Insert the necessary information in the **Mix Discount Lines**: 

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Disc. Grouping Type** | The following options are available: **Item** - if selected, you need to populate the No. field with the number of the item you are adding the discount to; **Item Group** - if you wish to give discount to all the items from a specific item group, then you should select this option; **Item Discount Group** - you can assign the specific item discount group on which you wish to overwrite the discount.  | **Item** |
| **No.** | The field is populated according to what is selected as the **Dis. Grouping Type**.  | **Item** is used as **Discount Grouping Type** so the item number is entered in the **No.** field. |
| **Variant Code** | Enter the variant code of the item if there's any specific variant to which you want the discount to apply. If you leave this field empty, all the variants will be affected.  | Not used in this example. |
| **Description** | The description of the item, item group or item discount group. | **Hummel Black Socks, Hummel Blue Socks, Hummel Red Socks** |
| **Description 2** | The description of the variant. | Not used in this example. |
| **Unit Cost** | If an item is inserted, the unit cost is inherited from the relevant **Item Card.** |  |
| **Unit Price** | If an item is inserted, the unit cost is inherited from the relevant **Item Card.** |  |
| **Priority** | The priority which you wish to assign to a mixed discount line. E.g., If there are two lines with priorities 1 and 2, the minimum and maximum quantities are 2, and 4 items are purchased (two from the first, and two from second line), only the item with the priority 1 will get the discount.   | Not used in this example. |
| **Quantity** | When **Lot** is active, this field will be displayed, and automatically enabled. You can provide the quantity of the item the customer is required to buy to generate a lot.  | Not used in this example. |

### Additional functionality from the Actions tab

|  Action Name  |   Description  |  
| ----------- | ----------- | 
| **Send to Retail Journal** | Used for transferring all items from the **Mixed Discount Lines** to a **Retail Journal**. It can be useful for printing price labels or shelf labels. | 
| **Copy Mixed Discount** | The entire **Mix Discount** can be copied into another **Mix Discount**. |
| **Transfer item** | Used for transferring one item from the **Item List** into the **Mix Discount**. |
| **Transfer item Category** | Used for transferring an entire **Item Category** into the **Mix Discount**. |
| **Transfer Vendor** | Used for transferring all items for a single vendor into the **Mix Discount**. | 
| **Transfer All Items** | Used for transferring all items into the **Mix Discount**. |
| **Compress to Item Disc. Group** | Used for compressing all items from the **Mixed Discount Lines**, into an **Item Disc. Group**. |

<iframe width="560" height="315" src="https://www.youtube.com/embed/GCjFBjm8jtU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/xDJF8fIzZW0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>