---
title: "Set up gift vouchers in Magento Webadmin"
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
weight: 139
toc: true
type: docs
---

 This guide will walk you through the process of configuring gift vouchers in Magento Webadmin and defining the accompanying. usage rules

#### Prerequisite

- Perform the necessary [<ins>retail voucher setup<ins>]({{< ref "../email_templates/index.md" >}}) in Business Central.

#### Procedure

1.	In **Magento Setup**, configure the background settings for the **Gift Vouchers in Stores – Configurations**.
2.	Under **Configurations** click **Navipartner** to open the dropdown.
3.	Choose the **Voucher** option under **Navipartner** at the very bottom.
4.	Under the **Setup** section make sure to uncheck the **Use system value** checkbox and set **Zero sub-total Checkout** to **Yes**.     
    Customers should be able to check out with the price of 0 in the cart when using vouchers.
5.	In the **Price Configuration** section, set the **Range** (price range with VAT) and **Steps** (price range without VAT).

  ![vouchers16](vouchers16.png)

6.	Uncheck the **Use Default Confg.** checkbox in **Recipient Delivery Method** and open the dropdown list. You can pick one of the options available as a way of delivering the gift voucher.

{{< alert icon="📝" text="The <b>User Defined</b> option allows the customer to select how the gift voucher should be sent within the shop itself upon purchasing the gift card."/>}}

7.  Set the maximum number of characters in the **Recipient Length** field under the **Price Configuration** section.    
    The maximum number of characters allowed is **250**.
8.	Set **Creation Type Code** to **GIFTVOUCHER**.    
    It is very important that the gift voucher code matches the code in Business Central.

    ![vouchers17](vouchers17.png)

## Create gift voucher product

- When setting up a **Gift Voucher** you need to first create a **New Product** from the **Catalogue** as a **Gift Voucher**.

#### Procedure

1.	Click the arrow next the **Add Product** button and select **Gift Voucher** from the dropdown. 
2.	Fill out the **New Product** page with basic information like **Product Name**, **SKU**, and **Content** (description).

{{< alert icon="📝" text="The product SKU is not connected to Business Central and will not cause mapping issues if changed."/>}}

3.	Set gift vouchers as **Taxable Goods**.
4.	Scroll down to the **Sources** section and click **Advanced Inventory**.    
    A new pop-up window is displayed. 
5.	Find the field for **Backorders**, uncheck **Use Configuration Settings** and then choose **Allow qty bellow 0** from the dropdown.    
    This option should always be set as gift cards should not have a quantity that can run out.

