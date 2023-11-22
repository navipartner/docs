---
title: "Apply voucher on an item from web store"
description: "Once you've received a voucher, you can use the discount it provides in the web store, or even get an item for free if it costs less than the amount the voucher provides."
lead: ""
date: 2023-11-09T10:54:11+01:00
lastmod: 2023-11-09T10:54:11+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "apply_voucher-f90dfc8fccc68281e1517f66017038d7"
weight: 307
toc: true
type: docs
---
Once you've received a voucher, you can use the discount it provides in the web store, or even get an item for free if it costs less than the amount the voucher provides.

#### Prerequisites

- Make sure you've [<ins>created a voucher<ins>]({{< ref "../create_vouchers/index.md" >}}) in Magento Webadmin, and added it to the main menu of the web store.
- The voucher should be [<ins>purchased or gifted<ins>]({{< ref "../use_voucher/index.md" >}}) to a customer, so they can apply the discount they provide on sales.

#### Procedure in the web store

1. Select any product on the web store.
2. Add the product to the cart, and proceed to the checkout.
3. Provide billing information, and select the payment method.      
   If you're paying with card, you also need to provide credit card details before purchasing the voucher.
4. Apply the voucher reference number in the **Apply Voucher Code** field, and click **Apply Voucher**.

   {{< alert icon="📝" text="To be able to perform checkout with a zero payment you need to enable the <b>Zero Subtotal Checkout</b> option in Magento Webadmin (<b>Admin</b> > <b>Stores</b> > <b>Configuration</b> > <b>Sales</b> > <b>Payment Methods</b>)."/>}}

5. Click **Place Order**.

#### Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Sales Orders**, and choose the related link.
2. Post the sales order you've created.      
   You can find the voucher in the **Archived Vouchers** administrative section, since it's been closed.

## Additional instructions

### Set up partial payment with vouchers

If the voucher amount is higher than the item price, it's recommended to perform additional setup to ensure that the voucher is used up only partially. Follow the provided steps to set this up:

#### Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Vouchers**, and choose the related link.     
   The list of vouchers is displayed.
2. Find the voucher you've previously created, and open its **Retail Voucher Card**.
3. In the **Apply Payment** panel change **Apply Payment Module** from **DEFAULT** to **Partial**.

#### Procedure in Magento Webadmin

1. Log into **Magento Webadmin**.
2. Click **NaviPartner** > **Settings** > **Voucher**.
3. Scroll down to the **BC Setup** section, and enter a **Creation Type Code** (e.g. *CreditVoucher*), then click **Save Config**.
4. (Optional) Clear the cache to make all the changes visible instantly.

#### Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Magento Setup**, and choose the related link.      
   Magento-related options are displayed.
2. Scroll down to the **Order Import** panel and enable **Post Retail Vouchers**.

#### Procedure in the web store

1. In the web store, open the voucher from the main menu.
2. Provide all the necessary information, including the email address you wish the voucher to be sent to.
3. Add the voucher to cart, go to checkout, and provide the billing and payment details.
4. Click **Place Order** and wait for the sales order to be processed.
5. Once the order has been placed, note your order number, and copy it.       
   A confirmation email is also sent to the email address you've provided in the previous steps.

      {{< alert icon="📝" text="The voucher can alternatively be applied in the Shopping Cart via <b>Apply Voucher</b> > <b>Enter Voucher Code</b>."/>}}
