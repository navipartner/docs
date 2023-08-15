---
title: "Multiple unit price discount setup"
description: "Set up multiple unit price discount for the Bring It to You Retail Store Ltd fictional example company."
lead: ""
date: 2023-08-15T12:13:34+02:00
lastmod: 2023-08-15T12:13:34+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "multiple_unit_price-9e136c4ff6446d0f20802dd15b832bfb"
weight: 33
toc: true
type: docs
---

Multiple Unit Price Discount can be used when buying multiple units of the same item. It allows customers to receive a discount when a certain quantity is reached within a specific timeframe, whereas the item automatically reverts to its default state when the expiry date is met.  

*Bring It to You Retail Store Ltd* sells Hummel T-shirts, which their customers prefer to buy in bulks. So, to make the offer more appealing to them, the store provides a discount of 50 DKK for each shirt provided they purchase 3 at a time.  

To set up Multi Unit Price Discount follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Items**, and chose the related link to open the **Item List**.
2. From the **Item List** either search for the specific item number or use filters to find it.  
3. After you find the item, open the **Prices & Discounts** tab, and choose **Multiple Unit Prices**.       
   The **Multiple Price Header** is opened. 

   ![discounts1](discounts1.PNG)

4. Insert the necessary information in the **General** tab:

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Main No.** | Specifies the item number for the discount.  | Automatically populated. |
| **Description** | Specifies the description of the given discount.  | Optional |
| **Status** | After all the necessary data has been entered, the status needs to be changed to **Active**. If the discount needs to be disabled for any reason, the status must be changed to **Balanced** or **Await**.  | **Active** |
| **Block Custom Discount**  | If enabled, the custom discounts will be blocked for items from the **Multiple Unit Price Discount**.  | Not used in this example since it should still be possible to give manual discounts.  |

5. Insert the necessary information in the **Conditions** tab: 

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Starting Date** | Specifies the date on which the Multiple Unit Price Discount will become active.  | Today’s date (The discount should become active as soon as it’s created) |
| **Closing Date** | Specifies the date until which the Multiple Unit Price Discount will be active.   | Leave it as-is since there shouldn’t be a closing date.  | 
| **Starting Time** | The time of day when the Multiple Unit Price Discount will become active.   | Not used on this example. |
| **Closing Time** | The time of day until which the period discount will be active.  | Not used on this example. |
| **Department Code** | Specifies the global dimension which will be assigned to the Multiple Unit Price Discount.  | Not used on this example. |
| **Project Code** | Specifies the global dimension which will be assigned to the Multiple Unit Price Discount.  | Not used on this example. |

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