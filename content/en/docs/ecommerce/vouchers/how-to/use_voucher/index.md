---
title: "Purchase vouchers in the web store"
description: "This guide provides step-by-step instructions for purchasing vouchers in the web store. Follow these steps to complete your transaction successfully."
lead: ""
date: 2023-11-08T15:08:41+01:00
lastmod: 2023-11-08T15:08:41+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "use_voucher-14a988ecb8ad95011c3612f8e6dae7d6"
weight: 307
toc: true
type: docs
---

This guide provides step-by-step instructions for purchasing vouchers in the web store. Follow these steps to complete your transaction successfully:

#### Prerequisites

- [<ins>Create a new voucher<ins>]({{< ref "../create_vouchers/index.md" >}}).
- Ensure the voucher is available in the main menu of the web store.

#### Procedure in the web store

1. Find the voucher you wish to purchase in the main menu of the web store.       
   A page displaying all relevant voucher details is displayed.
2. Fill in the recipient's name and email address in the designated fields.
3. Click **Add to Cart**.     
   The voucher is now added to your cart and ready for checkout.
4. Click the cart icon in the upper-right corner.       

   ![voucher_checkout](Images/voucher_checkout.PNG)

5. Adjust the voucher quantity if necessary and click **Go to Checkout**.
6. Provide the required billing information, and select the payment method.      
   If you're paying with card, you also need to provide credit card details before purchasing the voucher.
7. Scroll down, and click **Place Order**.    
   It may take some time for the payment to be processed and completed.
8. Once the order is placed, note your order number.      
   A confirmation email is also sent to the email address you've provided in the previous steps.


## Next steps

### Find the order details in Magento Webadmin

This portion of the guide is performed in the back-end, and it needs to be performed by someone with access to Magento Webadmin, who has the necessary credentials.

1. Log into **Magento Webadmin**.
2. Click **Sales** > **Orders**.     
   The list of all placed orders is displayed. 
3. Locate your order in the list.

   {{< alert icon="📝" text="If you can't find your order number, click <b>Clear Filter</b>. Once you've done so, you will be able to see your order number at the top of the list."/>}}

4. Click the **Order Number** from the email confirmation.        

   {{< alert icon="📝" text="You can also find the sales order number in the <b>Import List</b> administrative section in Business Central."/>}}

5. Click **Select** in the **NaviConnect** tab, and then **View XML**.       
   The order number is listed under the <sales_order_lines> element.

### Apply the voucher on the web order

Once you've received a voucher, you can use it to [<ins>apply a discount<ins>]({{< ref "../apply_voucher/index.md" >}}) on your next purchase. If the item costs less than the voucher amount, you may be able to get it for free.

#### See also

- [<ins>Create vouchers in Magento and Business Central<ins>]({{< ref "../create_vouchers/index.md" >}})