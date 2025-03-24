---
title: "Create a POS payment method"
description: "POS payment methods represent the various options available for processing payments during POS transactions, such as cash, credit cards, or vouchers."
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

POS payment methods represent the various options available for processing payments during POS transactions, such as cash, credit cards, or vouchers. Each payment method has a dedicated card in Business Central, in which you can configure all necessary parameters. You can access a specific payment method card by selecting its line, clicking **Manage** in the ribbon, and choosing **View** from the dropdown.

To create new POS payment method, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Method**, and choose the related link.       
   The **POS Payment Methods** page opens.
2. Click **New** to add a new payment method.
3. Enter a unique **Code** and a **Description** for the payment method.
4. In the **Processing Type** field, select the appropriate option.      
   The available options are **Cash**, **Voucher**, **Check**, **EFT** (Electronic Funds Transfer for credit cards), **Foreign Voucher**, and **Payout**.
5. Select the **Return Payment Method Code** to define the method used for returns during sales transactions.    
6. Enable **Block POS Payment** to prevent this payment method from being used on the POS, if necessary.
7. To open the cash drawer when this method is used, activate **Open Drawer**.
8. In the **Include in Counting** field, specify the method's behavior during the end-of-day counting process: 
   - **Yes** - the system amount appears in a dedicated column.
   - **Yes - blind** - the system amount column is hidden.
   - **Virtual** - Counting occurs automatically using a designated bin specified in the **Bin for Virtual Counting** field.
   - **No** - exclude the method from the counting process.
9.  If the payment method uses a foreign currency, assign the relevant **Currency Code** and **Fixed Rate**.
10. To consolidate posted entries, enable **Post Condensed**.
11. Check **Zero as Default** to display a default amount of zero when this method is selected.
12. Enable **Auto End Sale** if transactions should close automatically after using this payment method
13. If you want to bypass a minimum amount requirement for web orders, activate **No Min Amount on Web Orders**.
14. Set up **Rounding Precision**, **Rounding Type**, and **Rounding Gains/Losses Accounts**.
15. Enable **Allow Refund** if this payment method should support refunds.
16. Use the **Min Amount** and **Max Amount** fields to define allowable transaction limits.

<iframe width="560" height="315" src="https://www.youtube.com/embed/czGJ2OqvsNw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Next steps

If needed, you can limit payment types to specific items only. For more information, refer to [<ins>these instructions<ins>]({{< ref "../../../vouchers/explanation/meal_eco/index.md" >}})

#### See also

- [<ins>Payment methods<ins>]({{< ref "../../how-to/payment_methods/index.md" >}})
- [<ins>Payment operations<ins>]({{< ref "../../how-to/payment_operations/index.md" >}})
- [<ins>POS payment view event setup<ins>]({{< ref "../../reference/payment_view_ref/index.md" >}})