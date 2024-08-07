---
title: "Set up mix discounts"
description: "The mix discount type implies that customers need to buy several different items if they wish to be eligible for a discount. The discount is triggered when a certain combination of items is selected in a POS transaction. Learn how to create them in this guide."
lead: ""
date: 2023-07-05T17:24:00+02:00
lastmod: 2023-07-05T17:24:00+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_mix_discount-489a6995ea4172756c78671fe98700f6"
weight: 135
toc: true
type: docs
---

The mix discount type implies that customers need to purchase several different items if they wish to be eligible for a discount. The discount is triggered when a certain combination of items is selected in a POS transaction. 

To set up mix discounts, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Mix Discount**, and choose the related link.           
   Mix discount list will be opened.
2. To create a new mix discount, click **New** from the ribbon.       
    The **Mix Discount** card is displayed.
3. Insert the necessary information in the **General** tab:

| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | Specifies the unique code for a mix discount.     |
| **Description**   | Specifies the short description of a mix discount.   |
| **Mix Type**  |  Specifies the type of mix discount that is created. The following options are available: </br> - **Standard** - the items which are going to receive the discount are added to the **Mixed Discount Lines**; </br> - **Combination** - If selected, the part cards should be created in the **Mixed Discount Lines**. The part cards contain items which need to be set up for discount. |
| **Lot** |  When the **Lot** toggle switch is disabled, the sales ticket can contain any combination of items, provided that the **Min. Quantity** is respected to benefit from the discount scheme. When the **Lot** toggle switch is enabled, the specific combination of an item and item quantity needs to be respected to benefit from the discount scheme. |
| **Min. Quantity** | The minimum quantity of items from the mix discount lines that the customer has to purchase in order to benefit from the mix discount. |
| **Max Quantity** | The maximum quantity of items that the customer can purchase under the specific mix discount. |
| **Status** | After all the necessary data for the mix discount is inserted, the status of the mix discount needs to be changed to **Active**. If it is necessary to disable the mix discount, the status has to be changed to **Closed** | 
| **Discount Type** | The following [<ins>options<ins>]({{< ref "../../explanation/discount_types/index.md" >}}) are available: **Total Amount per Min. Qty.**, **Total Discount %**, **Total Discount Amt. per Min. Qty.**, **Priority Discount per Min. Qty.** and **Multiple Discount Levels**. |
| **Min. Discount Amount** | The minimum discount amount which will be calculated and given to the customer upon buying the minimum quantity allowed. |
| **Max. Discount Amount** | The maximum discount amount which will be calculated and given to the customer upon buying the maximum quantity allowed. |
| **Block Custom Discount** | If enabled, the custom discounts will be blocked for items from the **Mix Discount Lines**. |
| **Total Amount Excl. VAT** | If not enabled, the amount from mix discounts is taken without VAT. | 

4. Insert the necessary information in the **Conditions** tab:

| Field Name      | Description |
| ----------- | ----------- |
| **Start date**     | The date on which the mix discount will become active.      |
| **End date**   | The date until which the mix discount will be active.   |
| **Customer Disc. Group Filter**  | If the mix discount is active only for certain customers, you should select their customer discount group in this field. |

5. Insert the necessary information in the **Active Time Intervals** tab:

| Field Name      | Description |
| ----------- | ----------- |
| **Start time**     | The time of day from which the mix discount will become active.      |
| **End time**   | The time of day until which the mix discount will be active.  |
| **Period Type**  | The period in a week during which the period discount is active. You can choose between **Every day** (the mix discount is active every day); **Weekly** (it will be possible to chose a day of the week when the mix discount will be active). |

6. Insert the necessary information in the **Mix Discount Lines**:

| Field Name      | Description |
| ----------- | ----------- |
| **Disc. Grouping Type** | The following options are available: **Item** - if selected, you need to populate the **No.** field with the number of the item you are adding the discount to; **Item Group** - if you wish to give discount to all the items from a specific item group, then you should select this option; **Item Discount Group** - you can assign the specific item discount group on which you wish to overwrite the discount. |
| **No.** | The field be populated with information depending on what is selected as the **Dis. Grouping Type**. |
| **Variant Code** | Enter the variant code of the item if there's any specific variant to which you want the discount to apply. If you leave this field empty, all the variants will be affected. |
| **Description** | The description of the item, item group or item discount group. |
| **Description 2** | The description of the variant. |
| **Unit Cost** | If an item is inserted, the unit cost will be taken from the relevant **Item Card**. |
| **Unit Price** | If an item is inserted, the unit price will be taken from the relevant **Item Card**. |
| **Priority** | The priority which you wish to assign to a mixed discount line. For example, if we have two lines with priorities 1 and 2, minimum and maximum quantities are 2, and we bought 4 items (two from the first, and two from second line), only the item with the priority 1 will get the discount. |
| **Quantity** | When **Lot** is active, this field will be displayed, and automatically enabled. Provide the quantity of the item the customer is required to buy to generate a lot. |

7. (Optional) If needed, you can use one of the available actions: 

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

<iframe width="560" height="315" src="https://www.youtube.com/embed/NynY_ZB-jxc?si=3pRkVfP298FGKrvy" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>Discount types<ins>]({{< ref "../../explanation/discount_types/index.md" >}})
- [<ins>Discount coupon setup<ins>]({{< ref "../../../coupons/how-to/discount_coupon_usecases/index.md" >}})
- [<ins>Set up period discounts<ins>]({{< ref "../period_discounts/index.md" >}})
- [<ins>Create a total discount<ins>]({{< ref "../total_discount/index.md" >}})
- [<ins>Mix discount types<ins>]({{< ref "../../explanation/discount_types/index.md" >}})