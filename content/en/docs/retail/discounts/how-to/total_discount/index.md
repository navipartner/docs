---
title: "Create a total discount"
description: "You can define different levels of discount benefits based on the total sales amount."
lead: ""
date: 2023-08-01T09:56:39+02:00
lastmod: 2023-08-01T09:56:39+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "total_discount-ca4b4af5d0411cad09463f1f15d891ca"
weight: 135
toc: true
type: docs
---

If you want to give a discount benefit to a customer based on the total sales amount of a POS sale, or on the total sales amount of a group of items in a POS Sale then you can use the total discount. You can define different levels of discount benefits based on the sales amount.

The **Total Discount** feature can be used in multiple ways, depending on a specific business scenario that requires it. However, there are several steps that are common for all scenarios.

To set up a total discount, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Total Discount**, and choose the related link.      
   The **Total Discount List** is displayed.
2. Click **New**.
3. Populate the required fields, and use the [reference table]({{< ref "../../reference/total_discounts/index.md" >}}) to learn what the fields and options are used for. 
4. Once all the necessary fields are populated, select **Active** in the **Status** dropdown list located in the **General** section.

## Example - 10 % discount on all items for total sale amount of 5000

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Total Discount**, and choose the related link.      
   The **Total Discount List** is displayed.
2. Click **New**.
3. Set the following **Description** in the **General** tab: **10 % discount on all items for total sale amount of 5000**.
4. Make the following changes in the **Benefits Calculation** section:     
   - Set the **Step Amount Calculation** field to **No Filters** – this means that the sales amount that is going to trigger the total discount is going to be calculated from all items in the POS Sale.
   - Set the **Discount Application** field to **No Filters** – this means that the benefits are going to be applied to all lines in the transaction.
5. In the **Total Discount Benefits**, add a line with the following parameters:
   - **Step Amount**: **5000**
   - **Type**: **Discount**
   - **Value Type**: **Percent**
   - **Value**: **10**
6. Select **Active** in the **Status** dropdown list located in the **General** section.
7. Open the **POS**, and add items with the total sales amount of 5000.
8. Press **Go to Payment** and select the payment method.    
   If you go back to the POS sale, you will see that the discount has been applied.
9. Finalize the sale.

## Example - free item in transactions with total sales amount 3000

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Total Discount**, and choose the related link.      
   The **Total Discount List** is displayed.
2. Click **New**.
3. Set the following **Description** in the **General** tab: **Free item for 3000**.
4. Make the following changes in the **Benefits Calculation** section:     
   - Set the **Step Amount Calculation** field to **No Filters** – this means that the sales amount that is going to trigger the total discount is going to be calculated from all items in the POS Sale.
   - Set the **Discount Application** field to **No Filters** – this means that the benefits are going to be applied to all lines in the transaction.
5. In the **Total Discount Benefits**, add a line with the following parameters:
   - **Step Amount**: **3000**
   - **Type**: **Item**
   - **No**: **1000**
   - **Quantity**:**1.00**
6. Select **Active** in the **Status** dropdown list located in the **General** section.
7. Open the **POS**, and add items with the total sales amount of 3000 or more.
8. Press **Go to Payment** and select the payment method.    
   A pop-up window with available benefit items is displayed.
9. Select the quantity of the item, and press OK.   
   The selected items are added to the POS sale.
10. Finalize the sale.