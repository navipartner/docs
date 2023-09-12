---
title: "Vouchers issued in web stores"
description: "Refer to this guide to learn how gift vouchers are set up in Magento."
lead: ""
date: 2023-08-17T09:39:34+02:00
lastmod: 2023-08-17T09:39:34+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "web_stores-3065f720019e5ff603cc30edd14408fa"
weight: 45
toc: true
type: docs
---

## Set up gift vouchers

#### Prerequisite

- In order to set up gift vouchers in Magento, it is necessary to perform retail voucher setup in Business Central. You can find these setup instructions in the previous portions of the POS Academy Voucher setup.

#### Procedure

1.	In **Magento Setup**, configure the background settings for the **Gift Vouchers in Stores – Configurations**.
2.	Under **Configurations** click on **Navipartner** to open the dropdown.
3.	Choose the **Voucher** option under **Navipartner** at the very bottom.
4.	Under the **Setup** section make sure to uncheck the **Use system value** checkbox and set **Zero sub-total Checkout** to **Yes**.     
    Customers should be able to check out with the price of 0 in the cart when using vouchers.
5.	In the **Price Configuration** section, set the **Range** (price range with VAT) and **Steps** (price range without VAT).

  ![vouchers16](vouchers16.png)

6.	Uncheck the **Use Default Confg.** checkbox in **Recipient Delivery Method** and open the drop-down list. You can pick one of the options available as a way of delivering the Gift Voucher.

{{< alert icon="📝" text="The <b>User Defined</b> option allows the customer to select how the Gift Voucher should be sent within the shop itself upon purchasing the Gift Card."/>}}

7.  Set the maximum number of characters in the **Recipient Length** field under the **Price Configuration** section.    
    The maximum number of characters allowed is **250**.
8.	Set **Creation Type Code** to **GIFTVOUCHER**.    
    It is very important that the Gift Voucher code matches the code in Business Central.

    ![vouchers17](vouchers17.png)

## Create gift voucher product

When setting up a **Gift Voucher** you need to first create a **New Product** from the **Catalogue** as a **Gift Voucher**.

#### Prerequisite

- Make sure that the first part of the setup described above is complete.

#### Procedure

1.	Click the arrow next the **Add Product** button and select **Gift Voucher** from the dropdown. 
2.	Fill out the **New Product** page with basic information like **Product Name**, **SKU**, and **Content** (description).

{{< alert icon="📝" text="The product SKU is not connected to Business Central and will not cause mapping issues if changed."/>}}

3.	Set gift vouchers as **Taxable Goods** (double check).
4.	Scroll down to the **Sources** section and click **Advanced Inventory**.    
    A new pop-up window is displayed. 
5.	Find the field for **Backorders**, uncheck **Use Configuration Settings** and then choose **Allow qty bellow 0** from the dropdown.    
    This option should always be set as Gift Cards should not have a quantity that can run out.

