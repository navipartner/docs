---
title: "Period discount setup"
description: "Set up period discount for the Bring It to You Retail Store Ltd fictional example company."
lead: ""
date: 2023-08-15T12:20:10+02:00
lastmod: 2023-08-15T12:20:10+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "period_discount-f215b17513fb616cdd77583a42518621"
weight: 35
toc: true
type: docs
---

Period discounts can be used when there are periods of time during which some items have different (lower) prices. Period discounts allow users to set up that period and prices which items will have for its duration. After the period expires, the item price reverts to its default state. 

*Bring it To You Retail Ltd* has a campaign running throughout May, where they provide a 20% Discount to all Hilfiger Products. The Period Discount is the preferred setup for this scenario. 

To set up period discounts, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Period Discount**, and chose the related link to open the **Period Discount List**.
2. To create a new period discount, choose **New** from the ribbon.    
   The **Period Discount Card** is opened. 
3. Insert the necessary information in the **General** tab: 

   ![discounts4](discounts4.PNG)

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Code** | The unique code for a period discount. | **2** |
| **Description** | The short description of a period discount. | **Hilfiger 20% Campaign** |
| **Status** | After all the necessary data for period discount is inserted, the status of the period discount needs to be changed to **Active**. If there’s a need to disable the period discount, the status must be changed to **Closed**.  | **Active** (The discount applies from the starting date)  |
| **Block Custom Discount** | If enabled, salespeople can’t apply manual discounts on discounted items. | **Enabled** | 

4. Insert the necessary information in the **Conditions** tab: 

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Starting Date** | The date on which the period discount will become active.  | **01/05/2023** (The campaign is running throughout May) |
| **Closing Date** | The date until which the period discount will be active. | **31/05/2023** (The campaign is running throughout May) |
| **Starting Time** | The time of day from which the period discount will become active.  | Not used in this example. |
| **Closing Time** | The time of day until which the period discount will be active. |  |
| **Period Type** | The period in a week during which the period discount is active. You can choose between: **Every Day** (period discount is active every day);  **Weekly** (it will be possible to choose a day of the week when the period discount will be active)  | Not used in this example. |
| **Customer Disc. Group Filter** | If the period discount is active only for certain customers, you should select their customer discount group in this field. **Customer Disc Groups** can also be set on POS units, so if the stores are running a local campaign, a **Customer Disc Group** can be created and set on both the **POS Unit** and the **Mixed Discount**.  | Not used in this example as it shouldn’t apply to all stores. |

5. Insert the **Item No.** and **Period Price** in the **Period Discount Lines**.       
   In this example it is beneficial to use the action **Transfer Vendor**, since it will transfer all items from a single vendor and the desired discount percentage can be input while transferring, so the period price is automatically calculated. The actions are described below.  

### Additional functionality from the Actions tab

|  Action Name  |   Description  |  
| ----------- | ----------- | 
| **Send to Retail Journal** | Used for transferring all items from the **Mixed Discount Lines** to a Retail Journal. It can be useful for printing price labels and shelf labels. |
| **Copy Mixed Discount** | Copies the entire Mix Discount into another Mix Discount.  |
| **Transfer Item** | Used for transferring one item from the **Item List** into the Mix Discount. | 
| **Transfer Item Category** | Used for transferring an entire Item Category into the Mix Discount. |
| **Transfer Vendor** | Used for transferring all items from a single vendor into the Mix Discount.  |
| **Transfer All Items** | Used for transferring all items into the Mix Discount. | 
| **Compress to Item Disc. Group** | Used for compressing all the items from the **Mixed Discount Lines**, into an **Item Disc. Group**. |

