---
title: "Vouchers"
description: "Retail vouchers are a payment type that the voucher owner can use to purchase various goods and services."
lead: ""
date: 2023-08-03T11:16:10+02:00
lastmod: 2023-08-03T11:16:10+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "vouchers-aeeed779b59014f43fd6c9effe520721"
weight: 9
toc: true
type: docs
---

Retail vouchers are a payment type that the voucher owner can use to purchase various goods and services. The most common ones are gift vouchers and credit vouchers. Gift vouchers are mostly sold to customers, while credit vouchers are issued as a refund in the return sale process or a refund for a partially spent gift voucher.

## Issue gift vouchers

To issue gift vouchers, follow the provided steps:

#### Prerequisites in Business Central

- The **Gift Voucher Retail Voucher Type** needs to be defined in the company setup.
- The **Issue Gift Voucher (General)** button needs to be set in the **Menu Buttons Setup**.

#### Procedure on POS

1.	Open the POS.
2.	Press **Retail Gift Voucher** followed by **Issue Voucher (General)**.
3.	Choose a gift voucher.    
    A pop-up window is displayed.
4.	Enter **1** in the **Quantity** field.
5.	Press **OK**.      
    A pop-up window is displayed.
6.	Enter **6.000** in the **Amount** field.
7.	Press **OK**.
8.	A gift voucher is displayed in the **POS Sales Lines** with **Reference No. 2904100108599** and the Amount **6.000**.
9.	Press **Go to Payment**.
10.	Choose **Cash Payment**.
11.	Click **OK**.      
    The sale is finished, and the gift voucher is issued.

## Park a sale from the POS (save/retrieve sale)

The Park Sale feature gives you the option to quickly save and later retrieve the same sale when a customer needs to delay finishing the sale, and you want to process another sale in the meantime.  
 
Some of the most common situations leading to saving the sales are: 

- the customer is missing items on the purchase needs to peruse the store again.  
- the customer has forgotten their wallet/phone in the car. 

To park a sale from the POS, make sure the prerequisite is met, and follow the provided steps: 

#### Prerequisite

- Have a button on the POS configured with the POS action **SAVE_AS_POS_QUOTE**. 

#### Procedure

1. Open the POS. 
2. Press the **Test Items** button.    
   A table with available items is displayed. 
3. Select the **Tommy Hilfiger Gingham Shirt** item.     
   The **Item Variants Lookup** window is displayed. 
4. Select the size and color, then press **OK**.  
5. Press the **Park Sale** button.    
   A pop-up window for confirming the sale delay is displayed. 
6. Confirm that you want to save the sale. 

## Retrieve a parked sale from the POS

To retrieve a parked sale from the POS, make sure the prerequisite is met, and follow the provided steps: 

#### Prerequisite

- Have a button on the POS configured with the POS action **LOAD_FROM_POS_QUOTE**. 

#### Procedure

1. Open the POS. 
2. Navigate to the **Sales View**. 
3. Press the **Retrieve Parked Sale** button.     
   The **POS Saved Sales** window is displayed. 
4. Select the sale from the list and press **OK**.     
   The parked sale is previewed in a new window. 
5. Press **OK**.   
   The sale is transferred to the sales lines. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/ZPpyT5wZDhc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>