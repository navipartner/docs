---
title: "Create a POS payment method"
description: "Every POS payment method that is created can be set up in buttons and used for conducting payments during a sale."
lead: ""
date: 2023-07-11T16:14:58+02:00
lastmod: 2023-07-11T16:14:58+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_payment_method-24539076331faeac6da9d6808aaa65ba"
weight: 111
toc: true
type: docs
---

POS payment methods are methods used in the POS for creating payment lines (like cash and credit cards). Every POS payment method that is created can be set up in buttons and used for conducting payments during a sale.

All payment methods have their own cards where all necessary parameters are set up. To open a certain payment method card, highlight its line, and click **Manage** in the ribbon, followed by **View** in the dropdown. 

To create new POS payment method, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Method**, and choose the related link. 
2. Create **New**.
3. Insert a unique **Code** for the payment method and a **Description** in the designated fields.
4. Choose a **Processing Type** for the payment method.      
   The available options are **Cash**, **Voucher**, **Check**, **EFT** (used for credit cards), **Foreign Voucher**, and **Payout**.
5. Choose **Return Payment Method Code**.    
   This field define which payment method will be used for creating the charge in sales transactions.
6. Enable **Block POS Payment** if you wish to block the payment method so it can't be used in the POS.
7. If the drawer needs to open when the payment method is used, enable **Open Drawer**.
8. In the **Include in Counting** field state whether the payment method will be included in the counting during the end-of-day process. The following options are available:
   - **Yes** - During the counting process, you will be shown a column with the system amount.
   - **Yes - blind** - During the counting process, the system amount column will not be displayed.
   - **Virtual** - Virtual counting is created by the system. If selected, you need to pick a bin that will be used for counting in the **Bin for Virtual Counting** field.
   - **No** - The payment method will not be included in the counting process.
9. If this payment method is using a currency that isn't local, assign the correct currency in the **Currency Code** field and the currency rate in the **Fixed Rate** field.
10. If you wish the posted entries to be compressed, check the **Post Condensed** field.
11. Check **Zero as Default** if you want zero to be the amount that will pop up when this payment method is selected.
12. If you wish the sale to end after the payment is performed with this payment method, check **Auto End Sale**.
13. If you wish to add a limit on the **Minimum Amount** on web orders, enable **No Min Amount on Web orders**.
14. Set up **Rounding Precision**, **Rounding Type**, and **Rounding Gains/Losses Accounts**.
15. If a refund is allowed, enable **Allow Refund**.
16. Use **Min Amount** and **Max Amount** if the payment method has a limit for the minimum and maximum amounts.

<iframe width="560" height="315" src="https://www.youtube.com/embed/czGJ2OqvsNw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Next steps

If needed, you can limit payment types to specific items only. For more information, refer to [<ins>these instructions<ins>]({{< ref "../../../vouchers/explanation/meal_eco/index.md" >}})

#### See also

- [<ins>Payment methods<ins>]({{< ref "../../../pos_academy/sales_cycle/payment_methods/index.md" >}})
- [<ins>Payment operations<ins>]({{< ref "../../../pos_academy/sales_cycle/payment_operations/index.md" >}})
- [<ins>POS payment view event setup<ins>]({{< ref "../../reference/payment_view_ref/index.md" >}})