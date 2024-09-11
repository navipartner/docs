---
title: "Cash out a voucher"
description: "After the voucher is purchased, a customer can return it to the salesperson, and receive the cash back. They will be compensated in full as the result or reduced by the commission fee amount."
lead: ""
date: 2023-07-11T09:57:36+02:00
lastmod: 2023-07-11T09:57:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "cashout-7badc6a0ae4d0cffb43689a6c5a89bc7"
weight: 139
toc: true
type: docs
---

After the voucher is purchased, a customer can return it to the salesperson, and receive the cash back. They will be compensated in full as the result or reduced by the commission fee amount.

The voucher cash-out is performed with the POS action **CASHOUT_VOUCHER**.

1. Add this [<ins>action<ins>]({{< ref "../../../pos_processes/reference/pos_actions_ref/index.md" >}}) to the POS Menu.      
   The parameters set on this button determine if the commission fee will be charged and how it'll be posted.

    ![parameters](Cashout_parameters.png)

   - **Commission G/L Account** - If the parameter **Deduct Commission** is set to **true**, this parameter needs to specify the G/L Account on which the commission will be posted.
   - **Commission %** - If the parameter **Deduct Commission** is set to **true**, this parameter needs to specify the commission percentage that will be applied on the voucher's value.
   - **Deduct Commission** - Specifies if the commission should be calculated and deducted from the voucher value. If it's set to **false**, the commission won't be charged, and the full voucher value will be suggested for the cash-out.
   - **Open Voucher List** - If it's set to **true**, and the **Reference No.** is left blank during the voucher cash-out, the **Voucher List** will be opened.
   - **Voucher Type** - Choose which voucher type will be used as a filter. If it isn't set, the **Voucher Type List** will be opened during the voucher cash-out.

    {{< alert icon="📝" text="If <b>Deduct Commission</b> is enabled and the <b>Commission Account</b> or <b>Commission Percentage</b> are omitted, the run-time error will occur."/>}}

2. After the [<ins>button has been created<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}), select that button and the window for the **Voucher Scanning** will pop up.      
   In it, you should provide the relevant reference number.

3. If the voucher is valid, it will result in creation of the POS sale line for the commission as well as the POS payment line for the voucher cash-out.
4. Navigate to the payment and click **OK** to end the sale.      
   The suggested amount will be the difference between the value of the voucher and the commission.

   After the sale is finalized, the voucher will be archived.

#### See also

- [<ins>Voucher types<ins>]({{< ref "../../explanation/voucher_types/index.md" >}})
- [<ins>Create a voucher on a sales order<ins>]({{< ref "../create_new_sales_order/index.md" >}})