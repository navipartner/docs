---
title: "Cash out a voucher"
description: "A customer can return a purchased voucher to the salesperson, and receive the cash back. They will be compensated in full as the result or reduced by the commission fee amount."
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

A customer can return a purchased voucher to the salesperson, and receive their cash back. They are either compensated in full as the result or with the reduction equal to the commission fee amount.

{{< alert icon="📝" text="The voucher cash-out is performed with the POS action <b>CASHOUT_VOUCHER</b>."/>}}

#### Prerequisite

- Attach the **CASHOUT_VOUCHER** POS action to a [<ins>button<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}) in the POS menu.      
   The parameters set on this button determine if the commission fee will be charged and how it'll be posted.

   ![parameters](Cashout_parameters.png)

   | Parameter Name      | Description |
   | ----------- | ----------- | 
   | **Commission G/L Account** | If the parameter **Deduct Commission** is set to **true**, this parameter needs to specify the G/L Account on which the commission will be posted. |
   | **Commission %** | If the parameter **Deduct Commission** is set to **true**, this parameter needs to specify the commission percentage that will be applied on the voucher's value. |
   | **Deduct Commission** | Specifies if the commission should be calculated and deducted from the voucher value. If it's set to **false**, the commission won't be charged, and the full voucher value will be suggested for the cash-out. |
   | **Open Voucher List** | If it's set to **true**, and the **Reference No.** is left blank during the voucher cash-out, the **Voucher List** will be opened. |
   | **Voucher Type** | Choose which voucher type will be used as a filter. If it isn't set, the **Voucher Type List** will be opened during the voucher cash-out. |

   {{< alert icon="📝" text="A run-time error will occur if <b>Deduct Commission</b> is enabled while the <b>Commission Account</b> or <b>Commission Percentage</b> are omitted."/>}}

#### Procedure

1. Open the POS, and press the button with the attached action.       
   The window for the **Voucher Scanning** will pop up.      
   
2. Provide the voucher's reference number in the pop-up.      
   If the voucher is valid, a POS sale line is created for the commission, whereas a corresponding POS payment line is created for the voucher cash-out.         

   {{< alert icon="📝" text="Voucher reference numbers can also be retrieved from the <b>Retail Vouchers</b> administrative section in Business Central."/>}}

3. Navigate to the payment and click **OK** to end the sale.      
   The suggested amount is equal to the difference between the value of the voucher and the commission.

   The voucher is archived as soon as the sale is finalized.

#### See also

- [<ins>Voucher types<ins>]({{< ref "../../explanation/voucher_types/index.md" >}})
- [<ins>Create a voucher on a sales order<ins>]({{< ref "../create_new_sales_order/index.md" >}})