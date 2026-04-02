---
title: "Apply voucher on an item from web store"
description: "This guide provides step-by-step instructions on how to apply a voucher in the web store to receive a discount or a free item if its value covers the full price."
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
This guide provides step-by-step instructions on how to apply a voucher in the web store to receive a discount or a free item if its value covers the full price.

### Prerequisites

Before applying a voucher, ensure the following:

   - You have [<ins>created a voucher<ins>]({{< ref "../create_vouchers/index.md" >}}) in Magento Webadmin, and added it to the main menu of the web store.
   - The voucher has been [<ins>purchased or gifted<ins>]({{< ref "../use_voucher/index.md" >}}) to a customer so they can use the discount.

## Apply a voucher in the web store

1. Select any product on the web store.
2. Add the product to the cart, and proceed to the checkout.
3. Provide billing information, and select the payment method.      
   If paying by card, enter the credit card details.
4. Enter the voucher reference number in the **Apply Voucher Code** field and click **Apply Voucher**.

   {{< alert icon="📝" text="To complete checkout with a zero payment, enable the <b>Zero Subtotal Checkout</b> option in Magento Webadmin (<b>Admin</b> > <b>Stores</b> > <b>Configuration</b> > <b>Sales</b> > <b>Payment Methods</b>)."/>}}

5. Click **Place Order** to finalize the purchase.

## Process the order in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Sales Orders**, and choose the related link.
2. Post the sales order you've created.      
   You can find the voucher in the **Archived Vouchers** administrative section, as it has been closed.

## Additional instructions

### Set up partial payment with vouchers

If the voucher amount is higher than the item price, you should configure partial payments to ensure that only part of the voucher value is used. Follow these steps to set it up:

#### Configure partial payment in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Vouchers**, and choose the related link.     
   The list of vouchers is displayed.
2. Locate the voucher you previously created and open its **Retail Voucher Card**.
3. In the **Apply Payment** panel change **Apply Payment Module** from **DEFAULT** to **Partial**.

#### Configure partial payment in Magento Webadmin

1. Log into **Magento Webadmin**.
2. Click **NaviPartner** > **Settings** > **Voucher**.
3. Scroll down to the **BC Setup** section. 
4. Enter a **Creation Type Code** (e.g. *CreditVoucher*) and click **Save Config**.
5. (Optional) Clear the cache to apply the changes immediately.

#### Enable voucher posting in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Magento Setup**, and choose the related link.      
   Magento-related options are displayed.
2. Scroll down to the **Order Import** panel and enable **Post Retail Vouchers**.

#### See also

- [<ins>Create vouchers in Magento and Business Central<ins>]({{< ref "../create_vouchers/index.md" >}})
