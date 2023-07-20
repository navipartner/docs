---
title: "Create a new coupon"
description: ""
lead: ""
date: 2023-07-05T17:10:21+02:00
lastmod: 2023-07-05T17:10:21+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "new_coupon-2f00a52bb7f64a705fce84513324e704"
weight: 35
toc: true
type: docs
---

Coupons can provide the discount to the sum of item prices on checkout if certain conditions are met. Coupons can be issued with a reference number, which is unique, or have a number defined to be used several times. They can be accessed and set up in the **Coupon Types** administrative section. Additionally, you can create a coupon either for all customers, or for a specific group of customers. If you wish to create a new coupon, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Coupon Types** and choose the related link.         
   The available coupon types are displayed.
2. Click **New**.
3. Populate the following fields:
    - **Code**
    - **Discount Type**
    - **Discount Amount/Discount %**
    - **Issue Coupon Module (Default)**
    - **Reference No. Pattern**
    - **Apply Discount Module** - Select **DEFAULT** unless you have restrictions for some of the items in place. If there are some restrictions, select **ITEM_LIST**, and then apply the discount settings for the items of your choice in the **Setup Apply Discount** window (**Setup** > **Setup Apply Discount**).
4. Click **Issue Coupons** and select the quantity of coupons that should be issued.     
   The issued coupons will now be visible in the **Coupons** administrative section. You can copy the **Coupon Reference No.** of the coupon you wish to apply, since you will need to apply it to the POS.    
5. Navigate to the **POS** to scan coupons.
6. Add items to the shopping cart, and click **Scan Discount Coupon**.
7. Provide the **Coupon Reference No.** in the window that pops up.     
   The discount coupon is now applied. 