---
title: "Set up customer discount group"
description: "Set up customer discount groups for the Bring It to You Retail Store Ltd fictional example company."
lead: ""
date: 2023-08-15T12:35:57+02:00
lastmod: 2023-08-15T12:35:57+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "customer_discount_group-5fa12b7634ce33a0fccb68a36534cade"
weight: 112
toc: true
type: docs
---

Customer discount groups can be used when providing discounts that should only apply to a certain group of customers.  

*Bring It to You Retail Store Ltd* has a loyal group of customers that would like to be given a discount of 20% on certain items that they frequently buy.  

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Customer Disc. Groups**, and choose the related link.      
   The **Customer Disc. Groups List** is opened as a result. 
2. Click **New** and enter a code and a description. 
3. Click **Navigate** and select **Sales Price List**. 
4. To create a new **Sales Price List**, click **New**, and the **Sales Price List Card** is opened. 

   ![discounts5](discounts5.PNG)

5. Set the **Assign-to Type** to **Customer Disc. Group**.     
   This group consists of customers to which the discount should be applied. 
6. Select **Discount** in the **View Column for** field. 
7. Insert the lines that should be affected by the discount and provide the discount percentage in the **Line Discount %** field. 
8. Set the status to **Active**. 
9. For the discount to be applied, you need to apply the **Customer Disc. Group** to the **Customer Card** under the **Invoice** tab.      
    The discount is now applied to the item when the specified customer is selected, as presented in the screenshots below. 

#### Without a customer attached 

   ![discounts6](discounts6.PNG)

#### With a customer attached 

   ![discounts7](discounts7.PNG)

## Next steps

### Add a Customer Price Group Discount on POS

#### Prerequisite

-	You need to assign a special price to a specific customer price group. In our example the customer **D000004** has the **WHOLESALE** price group. If members of that price group wish to purchase the item **70003**, the price is 1450 for 1 piece, or 1400 for item quantities of 3 and up.

#### Procedure

1.	Provide **70001** in the Item no. box in the top right corner.    
    A new sales line is added with the regular initial price.
2.	Click **Customers** in the bottom right corner, followed by **Select Customer** in the pop-up window that is displayed.     
    The list of available customers is displayed.
3.	Select the customer **D000004**.     
    The customer is added to the sale, and the price is changed to **1450**.
4.	Click **Change Quantity**.     
    A pop-up window for providing the new quantity is displayed.
5.	Set the quantity to **3**.
6.	The item price is changed to **1400**.