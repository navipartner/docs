---
title: "Set up multiple unit price discount"
description: "Multiple Unit Price Discount can be used when buying multiple units of the same item."
lead: ""
date: 2023-08-15T12:13:34+02:00
lastmod: 2023-08-15T12:13:34+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "multiple_unit_price-9e136c4ff6446d0f20802dd15b832bfb"
weight: 135
toc: true
type: docs
---

Multiple Unit Price Discount can be used when buying multiple units of the same item. It allows customers to receive a discount when a certain quantity is reached within a specific timeframe, whereas the item automatically reverts to its default state when the expiry date is met.  


To set up Multi Unit Price Discount follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Items**, and chose the related link to open the **Item List**.
2. From the **Item List** either search for the specific item number or use filters to find it.  
3. After you find the item, open the **Prices & Discounts** tab, and choose **Multiple Unit Prices**.       
   The **Multiple Price Header** is opened. 

   ![discounts1](discounts1.PNG)

4. Insert the necessary information in the **General** tab:

|  Field Name  |   Description  |
| ----------- | ----------- | 
| **Main No.** | Specifies the item number for the discount.  | 
| **Description** | Specifies the description of the given discount.  | 
| **Status** | After all the necessary data has been entered, the status needs to be changed to **Active**. If the discount needs to be disabled for any reason, the status must be changed to **Balanced** or **Await**.  | 
| **Block Custom Discount**  | If enabled, the custom discounts will be blocked for items from the **Multiple Unit Price Discount**.  | 

5. Insert the necessary information in the **Conditions** tab: 

|  Field Name  |   Description  |  
| ----------- | ----------- | 
| **Starting Date** | Specifies the date on which the Multiple Unit Price Discount will become active.  | 
| **Closing Date** | Specifies the date until which the Multiple Unit Price Discount will be active.   | 
| **Starting Time** | The time of day when the Multiple Unit Price Discount will become active.   | 
| **Closing Time** | The time of day until which the period discount will be active.  | 
| **Department Code** | Specifies the global dimension which will be assigned to the Multiple Unit Price Discount.  |
| **Project Code** | Specifies the global dimension which will be assigned to the Multiple Unit Price Discount.  | 

6. Insert the quantity at which the Multiple Unit Price discount should be triggered and select the desired unit price.       
   The total amount for when the quantity is reached will be displayed in the **Total** field.   
   If a quantity for a price is defined as in the example below, the price will be applicable for a range until it reaches the next level. 

  |  Qty  |  Unit Price   |  Range Applicable     |
  | ----------- | ----------- | ----------- |
  | **2**  | **200** | From 2 to 5 – price = 200 |
  | **5**  | **190** | From 5 to 7 – price = 190 |
  | **8**  | **150** | From 8 onwards – price = 150 |
  | **10** | **210** (normal unit price) | From 10 onwards, the normal unit price of 210 is used. |

  If you don’t wish the multiple unit discount price to be lowered infinitely, you need to add a line to make go back to normal price. For example, if the quantity is 10, the price goes back to its default value. 

  <iframe width="560" height="315" src="https://www.youtube.com/embed/TK8aiGYn810" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Next steps

### Apply multiple unit price discount on POS

To apply multiple unit price discount on POS, make sure the prerequisite is met, and follow the provided steps.

#### Prerequisite

-	The **Multiple Unit Price** setup for an item needs to be created in Business Central as illustrated above. In this example, this setup is established for the item **70001**. The price for two pieces is 650, and the price for 5 pieces is 450. The initial price for one piece is 789.

#### Procedure

To add multiple unit price discount in sale:

1.	Provide **70001** in the **Item no**. box in the top right corner.     
    A new sales line is added with the regular initial price.
2.	Click **Change Quantity**.    
    A pop-up window for providing the new quantity is displayed.
3.	Set the quantity to **2**.   
    The quantity is changed on the sales line and the price set up for two pieces is applied.
4.	Click **Change Quantity**.     
    A pop-up window for providing the new quantity is displayed.
5.	Set the quantity to **5**.     
    The quantity is changed on the sales line and the price set up for five pieces is applied.